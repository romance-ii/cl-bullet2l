(in-package :bullet-physics)

;;; This *assumes* that Bullet is compiled with double-precision.

(cffi:defctype scalar :double)

(defun coercion-to-lisp (symbol type)
  "Given a Lisp symbol and a CFFI-style type or a wrapped C++ object,
returns multiple values as evaluatable forms for checking the value of
SYMBOL can be converted into type TYPE, and the evaluatable form for
casting form the C++ type to the Lisp type in the correct way
for CFFI."
  (let ((pointer-p (and (consp type)
                        (eql :pointer (car type)))))
    (cond
      ((eql 'scalar type) (values `(check-type ,symbol 'double-float)
                                  `(coerce ,symbol 'double-float)))
      ((ff-class-name-p type) (values `()
                                      `(make-instance ',type
                                                      :ff-pointer ,symbol)))
      (t (values nil symbol)))))

(defvar *alien-doubles/pdl*
  (make-array 1 :element-type 'double-float :adjustable t :fill-pointer t)
  "A cache of double values to which we can obtain pointers for
  calling into C++ code")

(defvar *alien-doubles/sp* 0)

(defun pointer->double (double)
  (check-type double double-float)
  (let ((e (vector-push-extend double *alien-doubles/pdl*)))
    (sb-alien:alien-sap (elt *alien-doubles/pdl* e))))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-condition bad-binding ()
    ())
  (define-condition bad-binding-pointer (bad-binding)
    () (:report ":POINTER is not a basic type. Change this declaration to a (:POINTER target-type) list."))
  (define-condition bad-binding-type (bad-binding)
    ((type :initarg :type :reader bad-binding-type))
    (:report (lambda (c s)
               (format s "~S is not a basic type and is not FF-CLASS-NAME-P" 
                       (bad-binding-type c)))))
  
  
  (defun first-or-only (thing)
    (if (consp thing) (first thing) thing))
  (let ((c++-metaclass (find-class '/c++-class/)))
    (defun ff-class-name-p (symbol)
      ;; TODO: Look for FF-POINTER specialization
      (when-let ((class (ignore-errors (find-class symbol))))
        (closer-mop:subclassp class c++-metaclass))))
  (defun basic-type (type)
    (cond 
      ((consp type) (ecase (car type)
                      (:array `(sb-alien:array ,(basic-type (second type)) ,@(nthcdr 2 type)))
                      (:enum '(integer 32)) ;; ?
                      (:pointer (case (second type)
                                  (:void :pointer)
                                  (otherwise (list '* (basic-type (second type))))))))
      ((ff-class-name-p type) (list '* type))
      (t (case type
           ((scalar :double :float) 'double-float)
           (:long    '(integer 64))
           (:int     '(integer 32))
           (:short   '(integer 16))
           (:char    '(sb-alien:unsigned 8))
           (:byte    '(sb-alien:unsigned 8))
           (:unsigned-short  '(sb-alien:unsigned 16))
           (:unsigned-int    '(sb-alien:unsigned 32))
           (:unsigned-long   '(sb-alien:unsigned 64))
           (:bytes   '(array (unsigned 8)))
           (:string  'sb-alien:c-string)
           (:void    'sb-alien:void)
           (:boolean 'sb-alien:boolean)
           (:pointer (format *trace-output* "~&A void pointer is defined; that's unlikely to be correct")
                     '(* t))
           (otherwise (error 'bad-binding-type :type type))))))
  (defun coercion-to-c++ (symbol type)
    "Given a Lisp symbol and a CFFI-style type or a wrapped C++ object,
returns multiple values as evaluatable forms for checking the value of
SYMBOL is of type TYPE, and the evaluatable form for casting form the
Lisp type to the C++ type in the correct way for CFFI."
    (let ((pointer-p (and (consp type)
                          (eql :pointer (car type)))))
      (cond
        ((and pointer-p
              (ff-class-name-p (second type))) (values '() `(ff-pointer ,symbol)))
        ((and pointer-p (eql :void (second type))) (values '() symbol))
        ((and pointer-p
              (eql 'scalar (second type))) (values `(check-type ,symbol 'number)
              `(pointer->double (coerce ,symbol
                                        'double-float))))
        (t (values `(check-type ,symbol ,(basic-type type))
                   `(coerce ,symbol ',(basic-type type)))))))
  (defun marshall-args (args) 
    "Given a set of arguments and their types like this:

 \((arg0 :int) (arg1 :int))

remarshalls them like this:

  \(( (conversion arg0) . integer ) ( (conversion arg1) . integer ))
"
    (mapcar (lambda (arg) 
              (cons (multiple-value-call 
                        (lambda (check cast)
                          (declare (ignore check))
                          cast)
                      (coercion-to-c++ (first arg) (second arg)))
                    (basic-type (second arg))))
            args)))

(defmacro defcenum (class &rest enums)
  `(progn (cffi:defcenum ,class ,@enums)
          (sb-alien:define-alien-type ,class
              (sb-alien:enum ,class ,@enums))))

(defmacro defcfun ((c-name lisp-name) returns &body args)
  (let* ((c++-package (sb-int:find-undeleted-package-or-lose
                       "BULLET-PHYSICS-C++"))
         (sym-name (intern (string lisp-name) c++-package)))
    (format *trace-output*
            (concatenate 'string "~2&~@<"
                         (format nil "~(~S~) ⇐ ƒ ~A (" returns lisp-name)
                         "~;~{~{~A◦~(~S~)~}~^, ~}~;)~:@>")
            args )
    (format *trace-output*
            "~%~VT C* ƒ ~A"
            (1- (length (format nil "~(~S~)" returns)))
            c-name)
    #+ (or)
    (handler-bind ((bullet-physics::bad-binding
                    (lambda (c)
                      (warn "Bad bindings for ƒ ~A; skipping~%~A" sym-name c)
                      (continue)))))
    (let ((lambda-list (marshall-args args)))
      `(progn
         (declaim (inline ,sym-name))
         (eval-when (:compile-toplevel :load-toplevel)
           (defun ,sym-name (,@(mapcar #'first-or-only args))
             (sb-alien:alien-funcall
              (sb-alien:extern-alien ,c-name
                                     (function ,(basic-type returns)
                                               ,@(mapcar #'cdr lambda-list)))
              #+ (or)              ,@(mapcar #'car lambda-list)))
           #+ (or)
           (handler-bind
               ((sb-ext:name-conflict 
                 (lambda (c)
                   (declare (ignore c))
                   (when-let ((r (find-restart 'take-new)))
                     (invoke-restart r))
                   (when-let ((r (find-restart 'shadowing-import-it)))
                     (invoke-restart r))))
                (sb-kernel:simple-package-error
                 (lambda (c)
                   (declare (ignore c))
                   (when-let ((r (find-restart 'continue)))
                     (invoke-restart r)))))
             #+ (or)
             (format *trace-output* "~&I should be exporting ~S, but I'm not right now because HANDLER-BIND is wrong here ☠"
                     ',sym-name)
             (unintern ',sym-name :bullet)
             (export ',sym-name :bullet)))))))

(defmacro define-anonymous-enum (&body enums)
  "Converts anonymous enums to defconstants."
  `(progn ,@(loop for value in enums
               for index = 0 then (1+ index)
               when (listp value) do (setf index (second value)
                                           value (first value))
               collect `(define-constant ,value ,index))))



(defcfun ("b2l_peek" b2l/peek) scalar
  (btscalar* (:pointer scalar)))

(defcfun ("b2l_poke" b2l/poke) (:pointer scalar)
  (btscalar scalar))

(defcfun ("b2l_makeVector3" b2l/make-vector3) vector3
  (x scalar)
  (y scalar)
  (z scalar))



