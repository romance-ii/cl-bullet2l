(in-package :bullet-physics)

(defun coercion-to-lisp (symbol type)
  "Given a Lisp symbol and a CFFI-style type or a wrapped C++ object,
returns multiple values as evaluatable forms for checking the value of
SYMBOL can be converted into type TYPE, and the evaluatable form for
casting form the C++ type to the Lisp type in the correct way
for CFFI."
  (cond
    ((eql 'scalar type) (values `(check-type ,symbol 'double-float)
                                `(coerce ,symbol 'double-float)))
    ((ff-class-name-p type) (values `()
                                    `(make-instance ',type
                                                    :ff-pointer ,symbol)))
    (t (values nil symbol))))

(defvar *alien-doubles/pdl*
  (make-array 1 :element-type 'double-float :adjustable t :fill-pointer t)
  "A cache of double values to which we can obtain pointers for
  calling into C++ code")

(defvar *alien-doubles/sp* 0)

(defun pointer->double (double)
  (check-type double double-float)
  (let ((e (vector-push-extend double *alien-doubles/pdl*)))
    (sb-alien:alien-sap (elt *alien-doubles/pdl* e))))

(define-condition null-pointer ()
  ())

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
            args)
    (format *trace-output*
            "~%~VT C ƒ ~A"
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
             ,@(loop for (arg type) in args
                  collect 
                    (list 'check-type arg 
                          (case type
                            ((:int :unsigned-int
                                   :short :unsigned-short) 'integer)
                            ((:float :double) 'real)
                            ((:char :unsigned-char) t)
                            (otherwise type))))
             (sb-alien:alien-funcall
              (sb-alien:extern-alien ,c-name
                                     (function ,(basic-type returns)
                                               ,@(mapcar #'cdr lambda-list)))
              ,@(mapcar #'car lambda-list)))
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





