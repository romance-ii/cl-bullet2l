(in-package :bullet-physics)

(cffi:define-foreign-library lib-linear-math
  (t (:default "libLinearMath")))
(cffi:use-foreign-library lib-linear-math)

(cffi:define-foreign-library lib-bullet-collision
  (t (:default "libBulletCollision")))
(cffi:use-foreign-library lib-bullet-collision)

(cffi:define-foreign-library lib-bullet-dynamics
  (t (:default "libBulletDynamics")))
(cffi:use-foreign-library lib-bullet-dynamics)

(cffi:define-foreign-library lib-bullet-soft-body
  (t (:default "libBulletSoftBody")))
(cffi:use-foreign-library lib-bullet-soft-body)

(cffi:define-foreign-library lib-cl-bullet-2l
  (t (:default "libcl-bullet2l")))
(cffi:use-foreign-library lib-cl-bullet-2l)

;;; Alternate form:

#+bullet::manual-load-libs
(defvar *c++-libs-loaded* nil)
#+bullet::manual-load-libs
(defun load-c++-libraries (&aux errors)
  (format *trace-output* "~&Loading Bullet Physics C libraries: ")
  (mapcar (lambda (lib-name)
            (if (member lib-name *c++-libs-loaded* 
                        :test (lambda (a b) (equal a (car b))))
                (format *trace-output* "Already loaded ~A; " lib-name)
                (let ((lib 
                       (handler-bind
                           (#+sbcl
                            (SB-KERNEL:UNDEFINED-ALIEN-STYLE-WARNING
                             (lambda (c)
                               (format *trace-output* "~& • ~A" c)
                               (error c)))
                            (error 
                                 (lambda (c)
                                   (warn "~A" c)
                                   (push c errors)
                                   nil)))
                             (format *trace-output* "Loading ~A…" lib-name)
                             (cffi:load-foreign-library
                              ;; TODO: +LIBDIR+
                                 (merge-pathnames
                                  (format nil "lib/cl-bullet2l/lib~A.so" lib-name))))))
                  (when lib (pushnew (cons lib-name lib)
                                     *c++-libs-loaded* :test 'equal))
                  (format *trace-output* "~:[FAILED!~;OK~]; " lib))))
            '("LinearMath"
              "BulletCollision"
              "BulletDynamics"
              "BulletSoftBody"
              "cl-bullet2l"))
          (format *trace-output* " (Done.) Loaded ~R library file~:P. "
                  (length *c++-libs-loaded*))
  (values *c++-libs-loaded*
          errors))



