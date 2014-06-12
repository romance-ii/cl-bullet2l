(in-package :bullet-physics)

;;; This *assumes* that Bullet is compiled with double-precision.

(cffi:defctype scalar :double)

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
                    (:struct `(sb-alien:struct ,@(cdr type)))
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
         (:pointer (warn "A void pointer is defined; it will not be considered a match for any Lisp type.")
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
      ((ff-class-name-p type) (values (list 'check-type symbol (basic-type type))
                                      `(ff-pointer ,symbol)))
      ((and pointer-p
            (ff-class-name-p (second type))) (values '() `(ff-pointer ,symbol)))
      ((and pointer-p (eql :void (second type))) (values '() symbol))
      ((and pointer-p
            (eql 'scalar (second type))) (values `(check-type ,symbol 'number)
                                                 `(pointer->double (coerce ,symbol
                                                                           'double-float))))
      (t (values `(check-type ,symbol ,(basic-type type))
                 `(coerce ,symbol ',(basic-type type))
                 ;; symbol
                 )))))

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
          args))
