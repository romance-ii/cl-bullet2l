(in-package :bullet-physics)

(defclass tree-broadphase (broadphase) ())

(defmethod ff-pointer ((object tree-broadphase))
  (or
   (sb-alien-internals:alien-value-sap
    (or (slot-value object 'ff-pointer) (error 'null-pointer)))
   (error 'null-pointer)))

(defmethod initialize-instance :after ((object tree-broadphase) &key &allow-other-keys)
  (setf (ff-pointer object) (make-instance 'dbvt-broadphase)))

