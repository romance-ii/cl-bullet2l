(defpackage bullet-physics-c++
  (:use :cl :alexandria)
  (:documentation
   "Place to intern C++ wrappers (only)"))

(defpackage bullet-physics
  (:use :cl :alexandria :bullet-physics-c++)
  (:nicknames bullet)
  (:documentation 
   
   "Bullet is a Collision Detection and Rigid Body Dynamics Library.
 The Library is Open Source and free for commercial use, under the
 zlib.  The C++ documentation is at bulletphysics.org; this is a
 simple wrapper to make Bullet available to Common Lisp programs.

This package was hand-edited to save time over learning
Swig properly.")
  (:export
   #:angular-limit
   #:axis-sweep3
   #:box-shape
   #:bt-32-bit-axis-sweep3
   #:bu-simplex1to4
   #:bvh-triangle-mesh-shape
   #:capsule-shape
   #:capsule-shape-x
   #:capsule-shape-z
   #:chunk
   #:clock
   #:collision-dispatcher
   #:collision-dispatcher
   #:collision-object
   #:collision-world
   #:compound-shape
   #:cone-shape
   #:cone-shape-x
   #:cone-shape-z
   #:cone-twist-constraint
   #:convex-hull-shape
   #:convex-triangle-mesh-shape
   #:cprofile-iterator
   #:cprofile-manager
   #:cprofile-node
   #:cprofile-sample
   #:cylinder-shape
   #:cylinder-shape-x
   #:cylinder-shape-z
   #:dbvt-broadphase
   #:default-collision-configuration
   #:default-motion-state
   #:default-serializer
   #:discrete-dynamics-world
   #:empty-shape
   #:fixed-constraint
   #:gear-constraint
   #:generic-6-dof-constraint
   #:generic-6-dof-spring-constraint
   #:hinge-2-constraint
   #:hinge-constraint
   #:hinge2-constraint
   #:idebug-draw
   #:load-c++-libraries
   #:matrix-3x3
   #:motion-state
   #:multi-sap-broadphase
   #:multi-sphere-shape
   #:origin
   #:point->point-constraint
   #:quaternion
   #:quaternion
   #:rigid-body
   #:rotational-limit-motor
   #:scaled-bvh-triangle-mesh-shape
   #:sequential-impulse-constraint-solver
   #:serializer
   #:simple-broadphase
   #:simple-dynamics-world
   #:slider-constraint
   #:sphere-shape
   #:sphere-sphere-collision-algorithm
   #:static-plane-shape
   #:transform
   #:translational-limit-motor
   #:triangle-index-vertex-array
   #:triangle-mesh
   #:triangle-mesh-shape
   #:typed-constraint
   #:uniform-scaling-shape
   #:universal-constraint
   #:vector3
   #:vector4
   #:w
   #:x
   #:y
   #:z
   ))

(in-package #:bullet-physics)

(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (defun lispify (identifier expression &optional (package cl:*package*)
                  &aux (setf% nil))
    (check-type identifier string)
    (assert (member expression '(function method
                                 classname class enumname
                                 constant enumvalue
                                 variable slotname)))
    
    (when (and (> (length identifier) 4)
               (or (equal (subseq identifier 0 4) "set-")
                   (equal (subseq identifier 0 4) "set_"))
               (eql expression 'method))
      (setf identifier (subseq identifier 4)
            setf% t))
    (when (and (> (length identifier) 4)
               (or (equal (subseq identifier 0 4) "get-")
                   (equal (subseq identifier 0 4) "get_")))
      (setf identifier (subseq identifier 4)))
    (when (and (> (length identifier) 3)
               (or (equal (subseq identifier 0 3) "is-")
                   (equal (subseq identifier 0 3) "is_")))
      (setf identifier (concatenate
                        'string (subseq identifier 3) 
                        (if (or (find #\- (subseq identifier 3))
                                (find #\_ (subseq identifier 3)))
                            "-p" "p"))))
    (when (and (> (length identifier) 4)
               (or (equal (subseq identifier 0 4) "has-")
                   (equal (subseq identifier 0 4) "has_")))
      (setf identifier (concatenate 'string identifier "-p")))
    (when (and (> (length identifier) 4)
               (equal (subseq identifier 0 4) "new_")
               (member expression '(function method)))
      (setf identifier (concatenate
                        'string "make-"
                        (cond ((or (equal (subseq identifier 4 7) "bt_")
                                   (equal (subseq identifier 4 7) "BT_")
                                   (equal (subseq identifier 4 7) "bt-"))
                               (subseq identifier 7))
                              ((equal (subseq identifier 4 6) "bt")
                               (subseq identifier 6))
                              (t (subseq identifier 4))))))

    (when (and (eql expression 'variable)
               (eql (elt identifier 0) #\g))
      (setf identifier (subseq identifier 1)))
    (when (and (> (length identifier) 3)
               (or (equal (subseq identifier 0 2) "m_")
                   (equal (subseq identifier 0 2) "m-")))
      (setf identifier (subseq identifier 2)))
    (when (and (> (length identifier) 3)
               (or (equal (subseq identifier 0 3) "bt_")
                   (equal (subseq identifier 0 3) "BT_")
                   (equal (subseq identifier 0 3) "bt-")))
      (setf identifier (subseq identifier 3)))
    (when (and (> (length identifier) 2)
               (equal (subseq identifier 0 2) "bt"))
      (setf identifier (subseq identifier 2)))

    (let ((name identifier)
          (flag expression))
      (labels
          ((helper (list last rest &aux (c (car list)))
             (cond
               ((null list) rest)
               ((upper-case-p c)    (helper (cdr list) 'upper
                                            (case last
                                              ((lower
                                                digit)  (list* c #\- rest))
                                              (t        (cons c rest)))))
               ((lower-case-p c)    (helper (cdr list) 'lower
                                            (cons (char-upcase c) rest)))
               ((digit-char-p c)    (helper (cdr list) 'digit
                                            (case last
                                              ((upper
                                                lower)  (list* c #\- rest))
                                              (t        (cons c rest)))))

               ((char-equal c #\_)  (helper (cdr list) '_
                                            (cons (case expression 
                                                    ((method 
                                                      function
                                                      classname
                                                      class
                                                      enumname) #\/)
                                                    (otherwise #\-)) rest)))
               (t                   (helper (cdr list) '_
                                            (cons c rest))))))
        
        (let ((fix (case flag
                     (constant "+")
                     (variable "*")
                     (otherwise ""))))
          (let ((token (concatenate 'string
                                    fix
                                    (nreverse (helper (concatenate 'list name)
                                                      nil nil))
                                    fix)))
            (when-let ((sym (find-symbol token :common-lisp)))
              (when (case flag
                      ((function method slotname)     (fboundp sym))
                      ((variable constant enumvalue)  (boundp sym))))
              (setf token (concatenate 'string "BULLET/" token)))
            (let ((sym (intern token package)))
              
              (if setf%
                  (list 'setf sym)
                  sym))))))))

(defmacro defmeth (name &rest method-stuff)
  `(progn (defmethod ,name ,@method-stuff)
          (export ',name)))

(defmacro defklass (name &rest method-stuff)
  `(progn (defclass ,name ,@method-stuff)
          (export ',name)))

(defmacro defcfun ((c-name lisp-name &rest options)
                                       returns &body args)
  (let* ((c++-package (sb-int:find-undeleted-package-or-lose
                      "BULLET-PHYSICS-C++"))
         (sym-name (intern (string lisp-name) c++-package)))
    `(let ((save-package (or *package*
                             (sb-int:find-undeleted-package-or-lose
                              "BULLET-PHYSICS"))))
       (setq *package* ,c++-package)
       (declaim (inline ,sym-name))
       (cffi:defcfun (,c-name ,sym-name ,@options)
           ,returns ,@args)
       (unintern ',lisp-name :bullet-physics)
       (export ',sym-name :bullet-physics-c++)
       (setq *package* save-package))))

(defmacro define-anonymous-enum (&body enums)
  "Converts anonymous enums to defconstants."
  `(progn ,@(loop for value in enums
               for index = 0 then (1+ index)
               when (listp value) do (setf index (second value)
                                           value (first value))
               collect `(define-constant ,value ,index))))


