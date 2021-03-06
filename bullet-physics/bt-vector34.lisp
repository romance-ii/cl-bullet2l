(in-package :bullet-physics)

(define-constant +VECTOR3-DATA-NAME+
    "btVector3FloatData"
  :test 'equal)

(defcfun ("_wrap_btVector3_makeCPlusPlusInstance__SWIG_0"
               VECTOR3/MAKE-c++-INSTANCE) :pointer
  (self (:pointer vector3))
  (sizeInBytes (:pointer scalar)))

(defcfun ("_wrap_btVector3_deleteCPlusPlusInstance__SWIG_0"
               VECTOR3/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btVector3_makeCPlusPlusInstance__SWIG_1"
               VECTOR3/MAKE-c++-INSTANCE+ARG1) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btVector3_deleteCPlusPlusInstance__SWIG_1"
               VECTOR3/DELETE-c++-INSTANCE+ARG2+ARG3) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btVector3_makeCPlusArray__SWIG_0"
               VECTOR3/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btVector3_deleteCPlusArray__SWIG_0"
               VECTOR3/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btVector3_makeCPlusArray__SWIG_1"
               VECTOR3/MAKE-c++-ARRAY+ARG1) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btVector3_deleteCPlusArray__SWIG_1"
               VECTOR3/DELETE-c++-ARRAY+arg1+arg2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btVector3_m_floats_set"
               VECTOR3/FLOATS/SET) :void
  (self :pointer)
  (m_floats :pointer))

(defcfun ("_wrap_btVector3_m_floats_get"
               VECTOR3/FLOATS/GET) :pointer
  (self :pointer))

(defcfun ("_wrap_new_btVector3__SWIG_0"
               make-vector3/naked) :pointer)

(defcfun ("_wrap_new_btVector3__SWIG_1"
          make-vector3/x&y&z) :pointer
  (x (:pointer scalar))
  (y (:pointer scalar))
  (z (:pointer scalar)))

(defcfun ("b2l_makeVector3" b2l-make-vector-3) :pointer
  (x scalar) (y scalar) (z scalar))

(defun vector3 (&optional (x nil x?) y (z nil z?))
  (cond
    (z? (make-instance 'vector3 
                       :x (coerce x 'double-float)
                       :y (coerce y 'double-float)
                       :z (coerce z 'double-float)))
    (x? (error "VECTOR3 requires either 0 or 3 arguments"))
    (t  (make-instance 'vector3))))

(defun v3-alt-test (x y z)
  (cffi:with-foreign-pointer (x+ (cffi:foreign-type-size 'scalar))
    (cffi:with-foreign-pointer (y+ (cffi:foreign-type-size 'scalar))
      (cffi:with-foreign-pointer (z+ (cffi:foreign-type-size 'scalar))
        (setf (cffi:mem-ref x+ 'scalar) (coerce x 'double-float))
        (setf (cffi:mem-ref y+ 'scalar) (coerce y 'double-float))
        (setf (cffi:mem-ref z+ 'scalar) (coerce z 'double-float))
        (make-vector3/x&y&z x+ y+ z+)))))

(defcfun ("_wrap_btVector3_increment"
               VECTOR3/INCREMENT) :pointer
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_decrement"
               VECTOR3/DECREMENT) :pointer
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_multiplyAndAssign__SWIG_0"
               VECTOR3/MULTIPLY-AND-ASSIGN/iwth-s) :pointer
  (self :pointer)
  (s :pointer))

(defcfun ("_wrap_btVector3_divideAndAssign"
               VECTOR3/DIVIDE-AND-ASSIGN) :pointer
  (self :pointer)
  (s :pointer))

(defcfun ("_wrap_btVector3_length2"
               VECTOR3/LENGTH-2) scalar
  (self :pointer))

(defcfun ("_wrap_btVector3_length"
               VECTOR3/LENGTH) scalar
  (self :pointer))

(defcfun ("_wrap_btVector3_norm"
               VECTOR3/NORM) scalar
  (self :pointer))

(defcfun ("_wrap_btVector3_distance2"
               VECTOR3/DISTANCE-2) scalar
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_distance"
               VECTOR3/DISTANCE) scalar
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_safeNormalize"
               VECTOR3/SAFE-NORMALIZE) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_normalize"
               VECTOR3/NORMALIZE) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_normalized"
               VECTOR3/NORMALIZED) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_rotate"
               VECTOR3/ROTATE) :pointer
  (self :pointer)
  (wAxis :pointer)
  (angle scalar))

(defcfun ("_wrap_btVector3_angle"
               VECTOR3/ANGLE) scalar
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_absolute"
               VECTOR3/ABSOLUTE) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_cross"
               VECTOR3/CROSS) :pointer
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btVector3_triple"
               VECTOR3/TRIPLE) scalar
  (self :pointer)
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btVector3_minAxis"
               VECTOR3/MIN-AXIS) :int
  (self :pointer))

(defcfun ("_wrap_btVector3_maxAxis"
               VECTOR3/MAX-AXIS) :int
  (self :pointer))

(defcfun ("_wrap_btVector3_furthestAxis"
               VECTOR3/FURTHEST-AXIS) :int
  (self :pointer))

(defcfun ("_wrap_btVector3_closestAxis"
               VECTOR3/CLOSEST-AXIS) :int
  (self :pointer))

(defcfun ("_wrap_btVector3_setInterpolate3"
               VECTOR3/SET-INTERPOLATE-3) :void
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (rt scalar))

(defcfun ("_wrap_btVector3_lerp"
               vector3/lerp) :pointer
  (self :pointer)
  (v :pointer)
  (t_arg2 :pointer))

(defcfun ("_wrap_btVector3_multiplyAndAssign__SWIG_1"
               VECTOR3/MULTIPLY-AND-ASSIGN/with-v) :pointer
  (self :pointer)
  (v :pointer))


(defcfun ("_wrap_btVector3_getX"
          VECTOR3/GET-X) (:pointer scalar)
  (self :pointer))

(defcfun ("_wrap_btVector3_getY"
               VECTOR3/GET-Y) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_getZ"
               VECTOR3/GET-Z) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_setX"
               VECTOR3/SET-X) :void
  (self :pointer)
  (_x scalar))

(defcfun ("_wrap_btVector3_setY"
               VECTOR3/SET-Y) :void
  (self :pointer)
  (_y scalar))

(defcfun ("_wrap_btVector3_setZ"
               VECTOR3/SET-Z) :void
  (self :pointer)
  (_z scalar))

(defcfun ("_wrap_btVector3_setW"
               VECTOR3/SET-W) :void
  (self :pointer)
  (_w scalar))

(defcfun ("_wrap_btVector3_x"
          VECTOR3/X) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_y"
               VECTOR3/Y) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_z"
               VECTOR3/Z) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_w"
               VECTOR3/W) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_isEqual"
               VECTOR3/IS-EQUAL) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btVector3_notEquals"
               VECTOR3/NOT-EQUALS) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btVector3_setMax"
               VECTOR3/SET-MAX) :void
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btVector3_setMin"
               VECTOR3/SET-MIN) :void
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btVector3_setValue"
               VECTOR3/SET-VALUE) :void
  (self :pointer)
  (x :pointer)                          ; FIXME: Pointer???
  (y :pointer)
  (z :pointer))

(defcfun ("_wrap_btVector3_getSkewSymmetricMatrix"
               VECTOR3/GET-SKEW-SYMMETRIC-MATRIX) :void
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btVector3_setZero"
               VECTOR3/SET-ZERO) :void
  (self :pointer))

(defcfun ("_wrap_btVector3_isZero"
               VECTOR3/IS-ZERO) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_fuzzyZero"
               VECTOR3/FUZZY-ZERO) :pointer
  (self :pointer))

(defcfun ("_wrap_btVector3_serialize"
               VECTOR3/SERIALIZE) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btVector3_deSerialize"
               VECTOR3/DE-SERIALIZE) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btVector3_serializeFloat"
               VECTOR3/SERIALIZE-FLOAT) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btVector3_deSerializeFloat"
               VECTOR3/DE-SERIALIZE-FLOAT) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btVector3_serializeDouble"
               VECTOR3/SERIALIZE-DOUBLE) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btVector3_deSerializeDouble"
               VECTOR3/DE-SERIALIZE-DOUBLE) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btVector3_maxDot"
               VECTOR3/MAX-DOT) :long
  (self :pointer)
  (array :pointer)
  (array_count :long)
  (dotOut :pointer))

(defcfun ("_wrap_btVector3_minDot"
               VECTOR3/MIN-DOT) :long
  (self :pointer)
  (array :pointer)
  (array_count :long)
  (dotOut :pointer))

(defcfun ("_wrap_btVector3_dot3"
               VECTOR3/DOT-3) :pointer
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_delete_btVector3"
               DELETE/BT-VECTOR3) :void
  (self :pointer))
(defcfun ("_wrap_btVector3_dot"
               VECTOR3/DOT/self*other) scalar
  (self :pointer)
  (v :pointer))
(defcfun ("_wrap_btDot"
               vector3/dot/v*v) scalar
  (v1 :pointer)
  (v2 :pointer))


(defcfun ("_wrap_btSwapVector3Endian"
               SWAP-VECTOR3-ENDIAN) :void
  (sourceVec :pointer)
  (destVec :pointer))

(defcfun ("_wrap_btUnSwapVector3Endian"
               UN-SWAP-VECTOR3-ENDIAN) :void
  (vector :pointer))


(defcfun ("_wrap_new_btQuaternion__SWIG_0"
               make-quaternion/naked) :pointer)

(defcfun ("_wrap_new_btQuaternion__SWIG_1"
          make-quaternion/with-x&y&z&w) :pointer
  (x :double)
  (y :double)
  (z :double)
  (w :double))

(defcfun ("_wrap_new_btQuaternion__SWIG_2"
               make-quaternion/axis&angle) :pointer
  (_axis :pointer)
  (_angle :pointer))

(defcfun ("_wrap_new_btQuaternion__SWIG_3"
               make-quaternion/yaw&pitch&roll) :pointer
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer))

(defun make-quaternion  (&optional
                           (x/axis/yaw nil x?)
                           (y/angle/pitch nil y?)
                           (z/roll nil z?)
                           (w nil w?))
  (cond
    (w? (bullet-physics-c++::make-quaternion/x&y&z&w         x/axis/yaw y/angle/pitch z/roll w))
    (z? (bullet-physics-c++::make-quaternion/yaw&pitch&roll  x/axis/yaw y/angle/pitch z/roll))
    (y? (bullet-physics-c++::make-quaternion/axis&angle      x/axis/yaw y/angle/pitch))
    (x? (error "MAKE-QUATERNION needs 0 args or 2 (axis&angle) or 3 (yaw&pitch&roll) or 4 (x&y&z&w)"))
    (t (bullet-physics-c++::make-quaternion/naked))))

(defcfun ("_wrap_btQuaternion_setRotation"
               QUATERNION/SET-ROTATION) :void
  (self :pointer)
  (axis :pointer)
  (_angle :pointer))

(defcfun ("_wrap_btQuaternion_setEuler"
               QUATERNION/SET-EULER) :void
  (self :pointer)
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer))

(defcfun ("_wrap_btQuaternion_setEulerZYX"
               QUATERNION/SET-EULER-ZYX) :void
  (self :pointer)
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer))

(defcfun ("_wrap_btQuaternion_increment"
               QUATERNION/INCREMENT) :pointer
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btQuaternion_decrement"
               QUATERNION/DECREMENT) :pointer
  (self :pointer)
  (q :pointer))
  
  (defcfun ("_wrap_btQuaternion_multiplyAndAssign__SWIG_0"
                 QUATERNION/MULTIPLY-AND-ASSIGN/s) :pointer
    (self :pointer)
    (s :pointer))

  
  (defcfun ("_wrap_btQuaternion_multiplyAndAssign__SWIG_1"
                 QUATERNION/MULTIPLY-AND-ASSIGN/q) :pointer
    (self :pointer)
    (q :pointer))

(defcfun ("_wrap_btQuaternion_dot"
               QUATERNION/DOT) scalar
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btQuaternion_length2"
               QUATERNION/LENGTH-2) scalar
  (self :pointer))

(defcfun ("_wrap_btQuaternion_length"
               QUATERNION/LENGTH) scalar
  (self :pointer))

(defcfun ("_wrap_btQuaternion_normalize"
               QUATERNION/NORMALIZE) :pointer
  (self :pointer))

(defcfun ("_wrap_btQuaternion_multiply"
               QUATERNION/MULTIPLY) :pointer
  (self :pointer)
  (s :pointer))

(defcfun ("_wrap_btQuaternion_divide"
               QUATERNION/DIVIDE) :pointer
  (self :pointer)
  (s :pointer))

(defcfun ("_wrap_btQuaternion_divideAndAssign"
               QUATERNION/DIVIDE-AND-ASSIGN) :pointer
  (self :pointer)
  (s :pointer))

(defcfun ("_wrap_btQuaternion_normalized"
               QUATERNION/NORMALIZED) :pointer
  (self :pointer))

(defcfun ("_wrap_btQuaternion_angle"
               QUATERNION/ANGLE/self&q) scalar
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btQuaternion_angleShortestPath"
               QUATERNION/ANGLE-SHORTEST-PATH) scalar
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btQuaternion_getAngle"
               QUATERNION/GET-ANGLE) scalar
  (self :pointer))

(defcfun ("_wrap_btQuaternion_getAngleShortestPath"
               QUATERNION/GET-ANGLE-SHORTEST-PATH) scalar
  (self :pointer))

(defcfun ("_wrap_btQuaternion_getAxis"
               QUATERNION/GET-AXIS) :pointer
  (self :pointer))

(defcfun ("_wrap_btQuaternion_inverse"
               QUATERNION/INVERSE) :pointer
  (self :pointer))

(defcfun ("_wrap_btQuaternion_add"
               QUATERNION/ADD) :pointer
  (self :pointer)
  (q2 :pointer))

(defcfun ("_wrap_btQuaternion_subtract"
               QUATERNION/SUBTRACT) :pointer
  (self :pointer)
  (q2 :pointer))

(defcfun ("_wrap_btQuaternion___neg__"
               QUATERNION///NEG//) :pointer
  (self :pointer))

(defcfun ("_wrap_btQuaternion_farthest"
               QUATERNION/FARTHEST) :pointer
  (self :pointer)
  (qd :pointer))

(defcfun ("_wrap_btQuaternion_nearest"
               QUATERNION/NEAREST) :pointer
  (self :pointer)
  (qd :pointer))

(defcfun ("_wrap_btQuaternion_slerp"
               QUATERNION/SLERP) :pointer
  (self :pointer)
  (q :pointer)
  (t_arg2 :pointer))

(defcfun ("_wrap_btQuaternion_getIdentity"
               QUATERNION/GET-IDENTITY) :pointer)

(defcfun ("_wrap_btQuaternion_getW"
               QUATERNION/GET-W) :pointer
  (self :pointer))

(defcfun ("_wrap_delete_btQuaternion"
               DELETE/BT-QUATERNION) :void
  (self :pointer))

(defcfun ("_wrap_dot"
               dot) scalar
  (q1 :pointer)
  (q2 :pointer))

(defcfun ("_wrap_length"
               qlength) scalar
  (q :pointer))

(defcfun ("_wrap_btAngle__SWIG_1"
               quaternion/angle/q1&q2) scalar
  (q1 :pointer)
  (q2 :pointer))

(defcfun ("_wrap_slerp"
               SLERP/qqt) :pointer
  (q1 :pointer)
  (q2 :pointer)
  (t_arg2 :pointer))

(defcfun ("_wrap_quatRotate"
               QUAT-ROTATE) :pointer
  (rotation :pointer)
  (v :pointer))

(defcfun ("_wrap_shortestArcQuat"
               SHORTEST-ARC-QUAT) :pointer
  (v0 :pointer)
  (v1 :pointer))

(defcfun ("_wrap_shortestArcQuatNormalize2"
               SHORTEST-ARC-QUAT-NORMALIZE-2) :pointer
  (v0 :pointer)
  (v1 :pointer))


(defmethod NEW ((self VECTOR3) sizeInBytes)
  (bullet-physics-c++::VECTOR3/MAKE-c++-INSTANCE (ff-pointer self) sizeInBytes))

(defmethod BULLET/DELETE ((self VECTOR3) ptr)
  (bullet-physics-c++::VECTOR3/DELETE-c++-INSTANCE (ff-pointer self) ptr))

#+ (or)
(progn
  
  (defmethod NEW ((self VECTOR3) arg1 ptr)
    (VECTOR3/MAKE-c++-INSTANCE (ff-pointer self) arg1 ptr))
  
  
  (defmethod BULLET/DELETE ((self VECTOR3) arg1 arg2)
    (VECTOR3/DELETE-c++-INSTANCE
     (ff-pointer self) arg1 arg2)))

(defmethod NEW[] ((self VECTOR3) sizeInBytes)
  (bullet-physics-c++::VECTOR3/MAKE-c++-ARRAY (ff-pointer self) sizeInBytes))

(defmethod DELETE[] ((self VECTOR3) ptr)
  (bullet-physics-c++::VECTOR3/DELETE-c++-ARRAY (ff-pointer self) ptr))

#+ (or)
(progn
  (shadow "new[]")
  (defmethod NEW[] ((self VECTOR3) arg1 ptr)
    (VECTOR3/MAKE-c++-ARRAY (ff-pointer self) arg1 ptr))
  
  (shadow "delete[]")
  (defmethod DELETE[] ((self VECTOR3) arg1 arg2)
    (VECTOR3/DELETE-c++-ARRAY (ff-pointer self) arg1 arg2)))

(defmethod (setf FLOATS) (arg0 (obj VECTOR3))
  (bullet-physics-c++::Vector3/FLOATS/SET (ff-pointer obj) arg0))

(defmethod FLOATS ((obj VECTOR3))
  (bullet-physics-c++::Vector3/FLOATS/GET (ff-pointer obj)))

#+ (or) (defmethod initialize-instance :after ((obj VECTOR3) &key)
                 (setf (slot-value obj 'ff-pointer) (MAKE-VECTOR3)))

(defmethod initialize-instance :after ((obj VECTOR3) &key (x 0) (y 0) (z 0))
  (setf (slot-value obj 'ff-pointer) (bullet-physics-c++::b2l-make-vector-3 
                                      (coerce x 'double-float)
                                      (coerce y 'double-float) 
                                      (coerce z 'double-float))))

(defmethod n+ ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/INCREMENT (ff-pointer self) (ff-pointer v)))

(defmethod n- ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/DECREMENT (ff-pointer self) (ff-pointer v)))

(defmethod n* ((self VECTOR3) s)
  (bullet-physics-c++::Vector3/MULTIPLY-AND-ASSIGN (ff-pointer self) s))

(defmethod n/ ((self VECTOR3) s)
  (bullet-physics-c++::Vector3/DIVIDE-AND-ASSIGN (ff-pointer self) s))

(defmethod DOT* ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/DOT/self*other (ff-pointer self) (ff-pointer v)))

(defmethod LENGTH-2 ((self VECTOR3))
  (bullet-physics-c++::Vector3/LENGTH-2 (ff-pointer self)))

(defmethod BULLET/LENGTH ((self VECTOR3))
  (bullet-physics-c++::Vector3/LENGTH (ff-pointer self)))

(defmethod NORM ((self VECTOR3))
  (bullet-physics-c++::Vector3/NORM (ff-pointer self)))

(defmethod VDISTANCE-2 ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/DISTANCE-2 (ff-pointer self) (ff-pointer v)))

(defmethod VDISTANCE ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/DISTANCE (ff-pointer self) (ff-pointer v)))

(defmethod SAFE-NORMALIZE ((self VECTOR3))
  (bullet-physics-c++::Vector3/SAFE-NORMALIZE (ff-pointer self)))

(defmethod NORMALIZE ((self VECTOR3))
  (bullet-physics-c++::Vector3/NORMALIZE (ff-pointer self)))

(defmethod NORMALIZED ((self VECTOR3))
  (bullet-physics-c++::Vector3/NORMALIZED (ff-pointer self)))

(defmethod ROTATE-3D ((self VECTOR3) (wAxis VECTOR3) (angle number))
  (bullet-physics-c++::Vector3/ROTATE (ff-pointer self) (ff-pointer wAxis) angle))



(defgeneric angle (a b)
  (:method ((a vector3) (b vector3))
    (vector3/angle a b))
  (:method ((a quaternion) (b quaternion))
    (quaternion/angle a b)))



#+ (or)
(defmethod ANGLE ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/ANGLE (ff-pointer self) (ff-pointer v)))

(defmethod ABSOLUTE ((self VECTOR3))
  (bullet-physics-c++::Vector3/ABSOLUTE (ff-pointer self)))

(defmethod CROSS* ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/CROSS (ff-pointer self) (ff-pointer v)))

(defmethod TRIPLE* ((self VECTOR3) (v1 VECTOR3) (v2 VECTOR3))
  (bullet-physics-c++::Vector3/TRIPLE (ff-pointer self) (ff-pointer v1) (ff-pointer v2)))

(defmethod MIN-AXIS ((self VECTOR3))
  (bullet-physics-c++::Vector3/MIN-AXIS (ff-pointer self)))

(defmethod MAX-AXIS ((self VECTOR3))
  (bullet-physics-c++::Vector3/MAX-AXIS (ff-pointer self)))

(defmethod FURTHEST-AXIS ((self VECTOR3))
  (bullet-physics-c++::Vector3/FURTHEST-AXIS (ff-pointer self)))

(defmethod CLOSEST-AXIS ((self VECTOR3))
  (bullet-physics-c++::Vector3/CLOSEST-AXIS (ff-pointer self)))

(defmethod (SETF INTERPOLATE-3) (triplet (self VECTOR3) )
  (destructuring-bind (v0 v1 rt) triplet
    (check-type v0 VECTOR3) (check-type v1 VECTOR3) (check-type rt number)
    (bullet-physics-c++::Vector3/SET-INTERPOLATE-3 (ff-pointer self) (ff-pointer v0) (ff-pointer v1) rt)))

(defmethod VLERP ((self VECTOR3) (v VECTOR3) t-arg2)
  (bullet-physics-c++::Vector3/LERP (ff-pointer self) (ff-pointer v) t-arg2))

(defmethod n* ((self VECTOR3) (v VECTOR3))
  (bullet-physics-c++::Vector3/MULTIPLY-AND-ASSIGN (ff-pointer self) (ff-pointer v)))

(defmethod X ((self VECTOR3))
  (bullet-physics-c++::Vector3/GET-X (ff-pointer self)))

(defmethod Y ((self VECTOR3))
  (bullet-physics-c++::Vector3/GET-Y (ff-pointer self)))

(defmethod Z ((self VECTOR3))
  (bullet-physics-c++::Vector3/GET-Z (ff-pointer self)))

(defmethod (SETF X) ( (x number) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-X (ff-pointer self) x))

(defmethod (SETF Y) ( (y number) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-Y (ff-pointer self) y))

(defmethod (SETF Z) ( (z number) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-Z (ff-pointer self) z))

(defmethod (SETF W) ( (w number) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-W (ff-pointer self) w))

(defmethod X ((self VECTOR3))
  (bullet-physics-c++::Vector3/X (ff-pointer self)))

(defmethod Y ((self VECTOR3))
  (bullet-physics-c++::Vector3/Y (ff-pointer self)))

(defmethod Z ((self VECTOR3))
  (bullet-physics-c++::Vector3/Z (ff-pointer self)))

(defmethod W ((self VECTOR3))
  (bullet-physics-c++::Vector3/W (ff-pointer self)))

(defmethod vector= ((self VECTOR3) (other VECTOR3))
  (bullet-physics-c++::Vector3/IS-EQUAL (ff-pointer self) (ff-pointer other)))

(defmethod vector/= ((self VECTOR3) (other VECTOR3))
  (bullet-physics-c++::Vector3/NOT-EQUALS (ff-pointer self) (ff-pointer other)))

(defmethod (SETF BULLET/MAX) ( (other VECTOR3) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-MAX (ff-pointer self) (ff-pointer other)))

(defmethod (SETF BULLET/MIN) ( (other VECTOR3) (self VECTOR3))
  (bullet-physics-c++::Vector3/SET-MIN (ff-pointer self) (ff-pointer other)))

(defmethod (SETF xyz) (x&y&z (self VECTOR3))
  (destructuring-bind (x y z) x&y&z
    (check-type x number) (check-type y number) (check-type z number)
    (warn "FIXME: check proper types for x, y, z here")
  (bullet-physics-c++::Vector3/SET-VALUE (ff-pointer self)
                     (coerce x '(signed-byte 64))
                     (coerce y '(signed-byte 64)) 
                     (coerce z '(signed-byte 64)))))

(defmethod nzero ((self VECTOR3))
  (bullet-physics-c++::Vector3/SET-ZERO (ff-pointer self)))

(defmethod vector-ZERO-P ((self VECTOR3))
  (bullet-physics-c++::Vector3/IS-ZERO (ff-pointer self)))

(defmethod vector-near-ZERO-p ((self VECTOR3))
  (bullet-physics-c++::Vector3/FUZZY-ZERO (ff-pointer self)))

(defmethod SKEW-SYMMETRIC-MATRIX ((self VECTOR3) (v0 VECTOR3) (v1 VECTOR3) (v2 VECTOR3))
  (bullet-physics-c++::Vector3/GET-SKEW-SYMMETRIC-MATRIX (ff-pointer self) (ff-pointer v0) (ff-pointer v1) (ff-pointer v2)))

(defmethod ->serial ((self VECTOR3) &key data-Out (format :default) &allow-other-keys)
  (ecase format
    (:default (bullet-physics-c++::Vector3/SERIALIZE (ff-pointer self) data-Out))
    (:single-float (bullet-physics-c++::Vector3/SERIALIZE-FLOAT (ff-pointer self) data-Out))
    (:double-float (bullet-physics-c++::Vector3/SERIALIZE-DOUBLE (ff-pointer self) data-Out))))

(defmethod <-serial ((self VECTOR3) &key data-In (format :default) &allow-other-keys)
  (ecase format
    (:default (bullet-physics-c++::Vector3/DE-SERIALIZE (ff-pointer self) data-In))
    (:single-float (bullet-physics-c++::Vector3/DE-SERIALIZE-FLOAT (ff-pointer self) data-In))
    (:double-float (bullet-physics-c++::Vector3/DE-SERIALIZE-DOUBLE (ff-pointer self) data-In))))

(defmethod MAX-DOT ((self VECTOR3) (array VECTOR3) (array_count integer) dotOut)
  (bullet-physics-c++::Vector3/MAX-DOT (ff-pointer self) (ff-pointer array) array_count dotOut))

(defmethod MIN-DOT ((self VECTOR3) (array VECTOR3) (array_count integer) dotOut)
  (bullet-physics-c++::Vector3/MIN-DOT (ff-pointer self) (ff-pointer array) array_count dotOut))

(defmethod DOT-3 ((self VECTOR3) (v0 VECTOR3) (v1 VECTOR3) (v2 VECTOR3))
  (bullet-physics-c++::Vector3/DOT-3 (ff-pointer self) (ff-pointer v0) (ff-pointer v1) (ff-pointer v2)))


(defcfun ("_wrap_btAlignedAllocInternal"
               ALIGNED-ALLOC-INTERNAL) :pointer
  (size :pointer)
  (alignment :int))

(defcfun ("_wrap_btAlignedFreeInternal"
               ALIGNED-FREE-INTERNAL) :void
  (ptr :pointer))

(defcfun ("_wrap_btAlignedAllocSetCustom"
               ALIGNED-ALLOC-SET-CUSTOM) :void
  (allocFunc :pointer)
  (freeFunc :pointer))

(defcfun ("_wrap_btAlignedAllocSetCustomAligned"
               ALIGNED-ALLOC-SET-CUSTOM-ALIGNED) :void
  (allocFunc :pointer)
  (freeFunc :pointer))

(defcfun ("_wrap_btDistance2"
               DISTANCE-2) scalar
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btDistance"
               DISTANCE) scalar
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btAngle__SWIG_0"
               vector/angle) scalar
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btCross"
               CROSS*/v&v) :pointer
  (v1 :pointer)
  (v2 :pointer))

(defcfun ("_wrap_btTriple"
          TRIPLE/v1-3b) scalar
  (v1 :pointer)
  (v2 :pointer)
  (v3 :pointer))

(defcfun ("_wrap_lerp"
               VLERP/v&v&t) :pointer
  (v1 :pointer)
  (v2 :pointer)
  (t_arg2 :pointer))

(defmethod initialize-instance :after ((obj VECTOR4) &key (x 0) (y 0) (z 0) (w 1))
  (setf (slot-value obj 'ff-pointer)
        (cond
          ((and x y z w)
           (bullet-physics-c++::MAKE-VECTOR4/with-x&y&z&w x y z w))
          ((not (or x y z w))
           (bullet-physics-c++::make-vector4/naked)))))

(defmethod ABSOLUTE-4 ((self VECTOR4))
  (bullet-physics-c++::Vector4/ABSOLUTE-4 (ff-pointer self)))

(defmethod W ((self VECTOR4))
  (bullet-physics-c++::Vector4/GET-W (ff-pointer self)))

(defmethod MAX-AXIS-4 ((self VECTOR4))
  (bullet-physics-c++::Vector4/MAX-AXIS-4 (ff-pointer self)))

(defmethod MIN-AXIS-4 ((self VECTOR4))
  (bullet-physics-c++::Vector4/MIN-AXIS-4 (ff-pointer self)))

(defmethod CLOSEST-AXIS-4 ((self VECTOR4))
  (bullet-physics-c++::Vector4/CLOSEST-AXIS-4 (ff-pointer self)))

(defmethod (SETF xyzw) (x&y&z&w (self VECTOR4))
  (destructuring-bind (x y z w) x&y&z&w
    (bullet-physics-c++::Vector4/SET-VALUE (ff-pointer self) x y z w)))


(defmethod initialize-instance :after ((obj QUATERNION)
                                       &key (x 0 x?) (y 0 y?) (z 0 z?) (w 1 w?)
                                         (axis nil axis?) (angle nil angle?)
                                         (yaw 0 yaw?) (pitch 0 pitch?) (roll 0 roll?))
  (setf (slot-value obj 'ff-pointer) 
        (cond
          ((or x? y? z? w? (not axis?) (not angle?) (not yaw?) (not pitch?) (not roll?))
           (bullet-physics-c++::MAKE-QUATERNION/with-x&y&z&w x y z w))
          ((and axis? angle? (not yaw?) (not pitch?) (not roll?))
           (bullet-physics-c++::MAKE-QUATERNION/with-axis&angle (ff-pointer axis) angle))
          ((or yaw? pitch? roll?)
           (bullet-physics-c++::MAKE-QUATERNION/with-yaw&pitch&roll yaw pitch roll)))))

(defmethod (SETF ROTATION) (axis&angle (self QUATERNION))
  (destructuring-bind (axis angle) axis&angle
    (bullet-physics-c++::QUATERNION/SET-ROTATION (ff-pointer self) axis angle)))

(defmethod (SETF EULER) (yaw&pitch&roll (self QUATERNION))
  (destructuring-bind (yaw pitch roll) yaw&pitch&roll
    (bullet-physics-c++::QUATERNION/SET-EULER (ff-pointer self) yaw pitch roll)))

(defmethod (SETF EULER-ZYX) (yaw&pitch&roll (self QUATERNION))
  (destructuring-bind (yaw pitch roll) yaw&pitch&roll
    (bullet-physics-c++::QUATERNION/SET-EULER-ZYX (ff-pointer self) yaw pitch roll)))

(defmethod n+ ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::QUATERNION/INCREMENT (ff-pointer self) (ff-pointer q)))


(defmethod n- ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::Quaternion/DECREMENT (ff-pointer self) (ff-pointer q)))

(defmethod n* ((self QUATERNION) s)
  (bullet-physics-c++::Quaternion/MULTIPLY-AND-ASSIGN/s (ff-pointer self) s))

(defmethod n* ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::Quaternion/MULTIPLY-AND-ASSIGN/q (ff-pointer self) (ff-pointer q)))

(defmethod DOT* ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::Quaternion/DOT (ff-pointer self) (ff-pointer q)))

(defmethod LENGTH-2 ((self QUATERNION))
  (bullet-physics-c++::Quaternion/LENGTH-2 (ff-pointer self)))

(defmethod BULLET/LENGTH ((self QUATERNION))
  (bullet-physics-c++::Quaternion/LENGTH (ff-pointer self)))

(defmethod NORMALIZE ((self QUATERNION))
  (bullet-physics-c++::Quaternion/NORMALIZE (ff-pointer self)))

(defmethod BULLET/* ((self QUATERNION) s)
  (bullet-physics-c++::Quaternion/MULTIPLY (ff-pointer self) s))

(defmethod BULLET/divide ((self QUATERNION) s)
  (bullet-physics-c++::Quaternion/DIVIDE (ff-pointer self) s))

(defmethod n/ ((self QUATERNION) s)
  (bullet-physics-c++::Quaternion/DIVIDE-AND-ASSIGN (ff-pointer self) s))

(defmethod NORMALIZED ((self QUATERNION))
  (bullet-physics-c++::Quaternion/NORMALIZED (ff-pointer self)))

(defmethod ANGLE ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::Quaternion/ANGLE (ff-pointer self) (ff-pointer q)))

(defmethod ANGLE-SHORTEST-PATH ((self QUATERNION) (q QUATERNION))
  (bullet-physics-c++::Quaternion/ANGLE-SHORTEST-PATH (ff-pointer self) (ff-pointer q)))

(defmethod ANGLE ((self QUATERNION) (other null))
  (bullet-physics-c++::Quaternion/GET-ANGLE (ff-pointer self)))

(defmethod ANGLE-SHORTEST-PATH ((self QUATERNION) (other null))
  (bullet-physics-c++::Quaternion/GET-ANGLE-SHORTEST-PATH (ff-pointer self)))

(defmethod AXIS ((self QUATERNION))
  (bullet-physics-c++::Quaternion/GET-AXIS (ff-pointer self)))

(defmethod quaternion-INVERSE ((self QUATERNION))
  (bullet-physics-c++::Quaternion/INVERSE (ff-pointer self)))

(defmethod BULLET/+ ((self QUATERNION) (q2 QUATERNION))
  (bullet-physics-c++::Quaternion/ADD (ff-pointer self) (ff-pointer q2)))

(defmethod bullet/- ((self QUATERNION) (q2 QUATERNION))
  (bullet-physics-c++::Quaternion/SUBTRACT (ff-pointer self) (ff-pointer q2)))

(defmethod negate ((self QUATERNION))
  (bullet-physics-c++::Quaternion///NEG// (ff-pointer self)))

(defmethod FARTHEST ((self QUATERNION) (qd QUATERNION))
  (bullet-physics-c++::Quaternion/FARTHEST (ff-pointer self) (ff-pointer qd)))

(defmethod NEAREST ((self QUATERNION) (qd QUATERNION))
  (bullet-physics-c++::Quaternion/NEAREST (ff-pointer self) (ff-pointer qd)))

(defmethod SLERP ((self QUATERNION) (q QUATERNION) t-arg2)
  (bullet-physics-c++::Quaternion/SLERP (ff-pointer self) (ff-pointer q) t-arg2))

(defmethod W ((self QUATERNION))
  (bullet-physics-c++::Quaternion/GET-W (ff-pointer self)))


(defcfun ("b2l_makeVector3" b2l/make-vector3) vector3
  (x scalar)
  (y scalar)
  (z scalar))



