(in-package #:bullet-physics)


(defcfun ("_wrap_new_btCollisionWorld"
          make-collision-world) collision-world
  (dispatcher :pointer)
  (broadphase-pair-cache :pointer)
  (collision-configuration :pointer))

(defcfun ("_wrap_delete_btCollisionWorld"
          delete/bt-collision-world) :void
  (self collision-world))

(defcfun ("_wrap_btCollisionWorld_setBroadphase"
          collision-world/set-broadphase) :void
  (self :pointer)
  (pair-cache :pointer))

(defcfun ("_wrap_btCollisionWorld_getBroadphase__SWIG_0"
          collision-world/get-broadphase) :pointer
  (self :pointer))

#+ (or)
(defcfun ("_wrap_btCollisionWorld_getBroadphase__SWIG_1"
          collision-world/get-broadphase) :pointer
  (self :pointer))


(defcfun ("_wrap_btCollisionWorld_getPairCache"
          collision-world/get-pair-cache) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_getDispatcher__SWIG_0"
          collision-world/get-dispatcher) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getDispatcher__SWIG_1"
            collision-world/get-dispatcher) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btCollisionWorld_updateSingleAabb"
          collision-world/update-single-aabb) :void
  (self :pointer)
  (colObj :pointer))

(defcfun ("_wrap_btCollisionWorld_updateAabbs"
          collision-world/update-aabbs) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_computeOverlappingPairs"
          collision-world/compute-overlapping-pairs) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_setDebugDrawer"
          collision-world/set-debug-drawer) :void
  (self :pointer)
  (debugDrawer :pointer))

(defcfun ("_wrap_btCollisionWorld_getDebugDrawer"
          collision-world/get-debug-drawer) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_debugDrawWorld"
          collision-world/debug-draw-world) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_debugDrawObject"
          collision-world/debug-draw-object) :void
  (self :pointer)
  (worldTransform :pointer)
  (shape :pointer)
  (color :pointer))

(defcfun ("_wrap_btCollisionWorld_getNumCollisionObjects"
          collision-world/get-num-collision-objects) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTest"
          collision-world/ray-test) :void
  (self :pointer)
  (rayFromWorld :pointer)
  (rayToWorld :pointer)
  (resultCallback :pointer))
(declaim (inline
          COLLISION-WORLD/CONVEX-SWEEP-TEST/WITH-CCD-PENETRATION))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_0"
          collision-world/convex-sweep-test/with-ccd-penetration) :void
  (self :pointer)
  (castShape :pointer)
  (from :pointer)
  (to :pointer)
  (resultCallback :pointer)
  (allowedCcdPenetration :float))
(declaim (inline
          COLLISION-WORLD/CONVEX-SWEEP-TEST/WITHOUT-CCD-PENETRATION))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_1"
          collision-world/convex-sweep-test/without-ccd-penetration) :void
  (self :pointer)
  (castShape :pointer)
  (from :pointer)
  (to :pointer)
  (resultCallback :pointer))
(defun COLLISION-WORLD/CONVEX-SWEEP-TEST
    (self cast-shape from to result-callback
     &key (allowed-ccd-penetration nil allowed-?))
  (if allowed-?
      (collision-world/convex-sweep-test/with-ccd-penetration
       self cast-shape from to result-callback allowed-ccd-penetration)
      (collision-world/convex-sweep-test/without-ccd-penetration
       self cast-shape from to result-callback)))

(defcfun ("_wrap_btCollisionWorld_contactTest"
          collision-world/contact-test) :void
  (self :pointer)
  (colObj :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_contactPairTest"
          collision-world/contact-pair-test) :void
  (self :pointer)
  (colObjA :pointer)
  (colObjB :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTestSingle"
          collision-world/ray-test-single) :void
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObject :pointer)
  (collisionShape :pointer)
  (colObjWorldTransform :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTestSingleInternal"
          collision-world/ray-test-single-internal) :void
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObjectWrap :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_objectQuerySingle"
          collision-world/object-query-single) :void
  (castShape :pointer)
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObject :pointer)
  (collisionShape :pointer)
  (colObjWorldTransform :pointer)
  (resultCallback :pointer)
  (allowedPenetration :float))

(defcfun ("_wrap_btCollisionWorld_objectQuerySingleInternal"
          collision-world/object-query-single-internal) :void
  (castShape :pointer)
  (convexFromTrans :pointer)
  (convexToTrans :pointer)
  (colObjWrap :pointer)
  (resultCallback :pointer)
  (allowedPenetration :float))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_0"
          collision-world/add-collision-object/with-filter-group&mask) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_1"
          collision-world/add-collision-object/with-filter-group) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_2"
          collision-world/add-collision-object/simple) :void
  (self :pointer)
  (collisionObject :pointer))

(defun COLLISION-WORLD/ADD-COLLISION-OBJECT
    (self collision-object &key
                             (filter-group  nil filter-group-?)
                             (filter-mask   nil filter-mask-?))
  (cond
    (filter-mask-? (COLLISION-WORLD/ADD-COLLISION-OBJECT/with-filter-group&mask
                    self collision-object filter-group filter-mask))
    (filter-group-? (COLLISION-WORLD/ADD-COLLISION-OBJECT/with-filter-group
                     self collision-object filter-group))
    (t (COLLISION-WORLD/ADD-COLLISION-OBJECT/simple
        self collision-object))))

(defcfun ("_wrap_btCollisionWorld_getCollisionObjectArray__SWIG_0"
          collision-world/get-collision-object-array) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getCollisionObjectArray__SWIG_1"
            collision-world/get-collision-object-array) :pointer
    (self :pointer))

  )

(defcfun ("_wrap_btCollisionWorld_removeCollisionObject"
          collision-world/remove-collision-object) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btCollisionWorld_performDiscreteCollisionDetection"
          collision-world/perform-discrete-collision-detection) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_getDispatchInfo__SWIG_0"
          collision-world/get-dispatch-info) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getDispatchInfo__SWIG_1"
            collision-world/get-dispatch-info) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btCollisionWorld_getForceUpdateAllAabbs"
          collision-world/get-force-update-all-aabbs) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_setForceUpdateAllAabbs"
          collision-world/set-force-update-all-aabbs) :void
  (self :pointer)
  (forceUpdateAllAabbs :pointer))

(defcfun ("_wrap_btCollisionWorld_serialize"
          collision-world/serialize) :void
  (self :pointer)
  (serializer :pointer))
(define-constant +ACTIVE-TAG+ 1)
(define-constant +ISLAND-SLEEPING+ 2)
(define-constant +WANTS-DEACTIVATION+ 3)
(define-constant +DISABLE-DEACTIVATION+ 4)
(define-constant +DISABLE-SIMULATION+ 5)
(alexandria:define-constant +COLLISION-OBJECT-DATA-NAME+
    "btCollisionObjectFloatData"
  :test 'equal)
(cffi:defcenum COLLISION-FLAGS
  (:STATIC-OBJECT 1)
  (:KINEMATIC-OBJECT 2)
  (:NO-CONTACT-RESPONSE 4)
  (:CUSTOM-MATERIAL-CALLBACK 8)
  (:CHARACTER-OBJECT 16)
  (:DISABLE-VISUALIZE-OBJECT 32)
  (:DISABLE-SPU-COLLISION-PROCESSING 64))
(cffi:defcenum COLLISION-OBJECT-TYPES
  (:COLLISION-OBJECT 1)
  (:RIGID-BODY 2)
  (:GHOST-OBJECT 4)
  (:SOFT-BODY 8)
  (:HF-FLUID 16)
  (:USER-TYPE 32)
  (:FEATHERSTONE-LINK 64))
(cffi:defcenum ANISOTROPIC-FRICTION-FLAGS
  (:ANISOTROPIC-FRICTION-DISABLED 0)
  (:ANISOTROPIC-FRICTION 1)
  (:ANISOTROPIC-ROLLING-FRICTION 2))
(cffi:defcenum DISPATCHER-FLAGS
  (:STATIC-STATIC-REPORTED 1)
  (:USE-RELATIVE-CONTACT-BREAKING-THRESHOLD 2)
  (:DISABLE-CONTACTPOOL-DYNAMIC-ALLOCATION 4))
(define-anonymous-enum
  (DYNAMIC-SET 0)
  (FIXED-SET 1)
  (STAGECOUNT 2))
(cffi:defcenum DEBUG-DRAW-MODES
  (:NO-DEBUG 0)
  (:DRAW-WIREFRAME 1)
  (:DRAW-AABB 2)
  (:DRAW-FEATURES-TEXT 4)
  (:DRAW-CONTACT-POINTS 8)
  (:NO-DEACTIVATION 16)
  (:NO-HELP-TEXT #.32)
  (:DRAW-TEXT #.64)
  (:PROFILE-TIMINGS 128)
  (:ENABLE-SAT-COMPARISON 256)
  (:DISABLE-BULLET-LCP #.512)
  (:ENABLE-CCD 1024)
  (:DRAW-CONSTRAINTS #.(ash 1 11))
  (:DRAW-CONSTRAINT-LIMITS #.(ash 1 12))
  (:FAST-WIREFRAME #.(ash 1 13))
  (:DRAW-NORMALS #.(ash 1 14))
  :MAX-DEBUG-DRAW-MODE)
(cffi:defcenum SERIALIZATION-FLAGS
  (:NO-BVH 1)
  (:NO-TRIANGLEINFOMAP 2)
  (:NO-DUPLICATE-ASSERT 4))
(cffi:defcenum RIGID-BODY-FLAGS
  (:DISABLE-WORLD-GRAVITY 1)
  (:ENABLE-GYROPSCOPIC-FORCE 2))
(cffi:defcenum POINT->POINT-FLAGS
  (:P-2-P-FLAGS-ERP 1)
  (:P-2-P-FLAGS-CFM 2))
(cffi:defcenum HINGE-FLAGS
  (:HINGE-FLAGS-CFM-STOP 1)
  (:HINGE-FLAGS-ERP-STOP 2)
  (:HINGE-FLAGS-CFM-NORM 4))
(cffi:defcenum CONE-TWIST-FLAGS
  (:CONETWIST-FLAGS-LIN-CFM 1)
  (:CONETWIST-FLAGS-LIN-ERP 2)
  (:CONETWIST-FLAGS-ANG-CFM 4))
(cffi:defcenum 6-DOF-FLAGS
  (:6-DOF-FLAGS-CFM-NORM 1)
  (:6-DOF-FLAGS-CFM-STOP 2)
  (:6-DOF-FLAGS-ERP-STOP 4))
(cffi:defcenum SLIDER-FLAGS
  (:SLIDER-FLAGS-CFM-DIRLIN #.(ash 1 0))
  (:SLIDER-FLAGS-ERP-DIRLIN #.(ash 1 1))
  (:SLIDER-FLAGS-CFM-DIRANG #.(ash 1 2))
  (:SLIDER-FLAGS-ERP-DIRANG #.(ash 1 3))
  (:SLIDER-FLAGS-CFM-ORTLIN #.(ash 1 4))
  (:SLIDER-FLAGS-ERP-ORTLIN #.(ash 1 5))
  (:SLIDER-FLAGS-CFM-ORTANG #.(ash 1 6))
  (:SLIDER-FLAGS-ERP-ORTANG #.(ash 1 7))
  (:SLIDER-FLAGS-CFM-LIMLIN #.(ash 1 8))
  (:SLIDER-FLAGS-ERP-LIMLIN #.(ash 1 9))
  (:SLIDER-FLAGS-CFM-LIMANG #.(ash 1 10))
  (:SLIDER-FLAGS-ERP-LIMANG #.(ash 1 11)))
(defmethod initialize-instance :after ((obj collision-world)
                                       &key dispatcher broadphase-Pair-Cache
                                         collision-Configuration)
  (setf (slot-value obj 'ff-pointer) (MAKE-COLLISION-WORLD dispatcher broadphase-Pair-Cache collision-Configuration)))
(defmethod (setf broadphase) (pair-cache (self collision-world))
  (COLLISION-WORLD/SET-BROADPHASE (ff-pointer self) pair-cache))
(defmethod broadphase ((self collision-world))
  (COLLISION-WORLD/GET-BROADPHASE (ff-pointer self)))
#+ (or)
(defmethod broadphase ((self collision-world))
  (COLLISION-WORLD/GET-BROADPHASE (ff-pointer self)))
(defmethod pair-cache ((self collision-world))
  (COLLISION-WORLD/GET-PAIR-CACHE (ff-pointer self)))
(defmethod dispatcher ((self collision-world))
  (COLLISION-WORLD/GET-DISPATCHER (ff-pointer self)))
(defmethod dispatcher ((self collision-world))
  (COLLISION-WORLD/GET-DISPATCHER (ff-pointer self)))
(defmethod update-single-aabb ((self collision-world) colObj)
  (COLLISION-WORLD/UPDATE-SINGLE-AABB (ff-pointer self) colObj))
(defmethod update-aabbs ((self collision-world))
  (COLLISION-WORLD/UPDATE-AABBS (ff-pointer self)))
(defmethod compute-overlapping-pairs ((self collision-world))
  (COLLISION-WORLD/COMPUTE-OVERLAPPING-PAIRS (ff-pointer self)))
(defmethod (setf debug-drawer) (debug-Drawer (self collision-world))
  (COLLISION-WORLD/SET-DEBUG-DRAWER (ff-pointer self) debug-Drawer))
(defmethod debug-drawer ((self COLLISION-WORLD))
  (COLLISION-WORLD/GET-DEBUG-DRAWER (ff-pointer self)))
(defmethod debug-draw-world ((self collision-world))
  (COLLISION-WORLD/DEBUG-DRAW-WORLD (ff-pointer self)))
(defmethod debug-draw-object ((self collision-world) worldTransform shape color)
  (COLLISION-WORLD/DEBUG-DRAW-OBJECT (ff-pointer self) worldTransform shape color))
(defmethod num-collision-objects ((self collision-world))
  (COLLISION-WORLD/GET-NUM-COLLISION-OBJECTS (ff-pointer self)))
(defmethod ray-test ((self collision-world) rayFromWorld rayToWorld resultCallback
                     &optional _1 _2)
  (declare (ignore _1 _2))
  (COLLISION-WORLD/RAY-TEST (ff-pointer self) rayFromWorld rayToWorld resultCallback))
(defmethod convex-sweep-test
    ((self collision-world)
     castShape from to resultCallback
     (allowedCcdPenetration number))
  (COLLISION-WORLD/CONVEX-SWEEP-TEST/with-ccd-penetration
   (ff-pointer self) castShape from to resultCallback
   allowedCcdPenetration))
(defmethod convex-sweep-test
    ((self collision-world)
     castShape from to resultCallback (allowedCcdPenetration null))
  (COLLISION-WORLD/CONVEX-SWEEP-TEST/without-ccd-penetration
   (ff-pointer self) castShape from to resultCallback))

(defmethod contact-test
    ((self collision-world) colObj resultCallback)
  (COLLISION-WORLD/CONTACT-TEST (ff-pointer self) colObj resultCallback))
(defmethod contact-pair-test
    ((self collision-world) colObjA colObjB resultCallback)
  (COLLISION-WORLD/CONTACT-PAIR-TEST (ff-pointer self) colObjA colObjB resultCallback))
(defmethod add-collision-object
    ((self collision-world) collisionObject
     &optional collision-filter-group collision-filter-mask)
  (check-type collision-Filter-Group (or null integer))
  (check-type collision-Filter-Mask (or null integer))
  (cond
    ((and collision-filter-group collision-filter-mask)
     (COLLISION-WORLD/ADD-COLLISION-OBJECT/WITH-FILTER-GROUP&MASK
      (ff-pointer self) collisionObject
      collision-Filter-Group collision-Filter-Mask))
    (collision-filter-group
     (COLLISION-WORLD/ADD-COLLISION-OBJECT/WITH-FILTER-GROUP
      (ff-pointer self) collisionObject
      collision-Filter-Group))
    (t (COLLISION-WORLD/ADD-COLLISION-OBJECT/simple
        (ff-pointer self) collisionObject))))

(defmethod collision-object-array ((self collision-world))
  (COLLISION-WORLD/GET-COLLISION-OBJECT-ARRAY (ff-pointer self)))
(defmethod collision-object-array ((self collision-world))
  (COLLISION-WORLD/GET-COLLISION-OBJECT-ARRAY (ff-pointer self)))
(defmethod REMOVE-COLLISION-OBJECT ((self COLLISION-WORLD) collisionObject)
  (COLLISION-WORLD/REMOVE-COLLISION-OBJECT (ff-pointer self) collisionObject))
(defmethod PERFORM-DISCRETE-COLLISION-DETECTION ((self COLLISION-WORLD))
  (COLLISION-WORLD/PERFORM-DISCRETE-COLLISION-DETECTION (ff-pointer self)))
(defmethod DISPATCH-INFO ((self COLLISION-WORLD))
  (COLLISION-WORLD/GET-DISPATCH-INFO (ff-pointer self)))
(defmethod DISPATCH-INFO ((self COLLISION-WORLD))
  (COLLISION-WORLD/GET-DISPATCH-INFO (ff-pointer self)))
(defmethod FORCE-UPDATE-ALL-AABBS-P ((self COLLISION-WORLD))
  (COLLISION-WORLD/GET-FORCE-UPDATE-ALL-AABBS (ff-pointer self)))
(defmethod (SETF FORCE-UPDATE-ALL-AABBS-P) ((forceUpdateAllAabbs t) (self COLLISION-WORLD))
  (COLLISION-WORLD/SET-FORCE-UPDATE-ALL-AABBS (ff-pointer self) forceUpdateAllAabbs))
(defmethod ->serial ((self collision-world) &key serializer &allow-other-keys)
  (COLLISION-WORLD/SERIALIZE (ff-pointer self) serializer))

(define-constant +BULLET-VERSION+ 282)

(defcfun ("_wrap_btGetVersion"
          get-version) :int)
(define-constant +LARGE-FLOAT+ 1d18)
(cffi:defcvar ("btInfinityMask"
               *INFINITY-MASK*)
    :int)

(defcfun ("_wrap_btGetInfinityMask"
          get-infinity-mask) :int)

(defcfun ("_wrap_btSqrt"
          square-root) :float
  (y :float))

(defcfun ("_wrap_btFabs"
          fabs) :float
  (x :float))

(defcfun ("_wrap_btCos"
          cosine) :float
  (x :float))

(defcfun ("_wrap_btSin"
          sine) :float
  (x :float))

(defcfun ("_wrap_btTan"
          tangent) :float
  (x :float))

(defcfun ("_wrap_btAcos"
          arc-cosine) :float
  (x :float))

(defcfun ("_wrap_btAsin"
          arc-sine) :float
  (x :float))

(defcfun ("_wrap_btAtan"
          arc-tangent) :float
  (x :float))

(defcfun ("_wrap_btAtan2"
          atan-2) :float
  (x :float)
  (y :float))

(defcfun ("_wrap_btExp"
          exponent) :float
  (x :float))

(defcfun ("_wrap_btLog"
          logarithm) :float
  (x :float))

(defcfun ("_wrap_btPow"
          power) :float
  (x :float)
  (y :float))

(defcfun ("_wrap_btFmod"
          fmod) :float
  (x :float)
  (y :float))

(defcfun ("_wrap_btAtan2Fast"
          atan-2-fast) :float
  (y :float)
  (x :float))

(defcfun ("_wrap_btFuzzyZero"
          fuzzy-zero) :pointer
  (x :float))

(defcfun ("_wrap_btEqual"
          equals) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btGreaterEqual"
          greater-equal) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btIsNegative"
          is-negative) :int
  (x :float))

(defcfun ("_wrap_btRadians"
          radians) :float
  (x :float))

(defcfun ("_wrap_btDegrees"
          degrees) :float
  (x :float))

(defcfun ("_wrap_btFsel"
          fsel) :float
  (a :float)
  (b :float)
  (c :float))

(defcfun ("_wrap_btMachineIsLittleEndian"
          machine-is-little-endian) :pointer)
#+ need-funky-select-forms
(progn
  
  (defcfun ("_wrap_btSelect__SWIG_0"
            select) :unsigned-int
    (condition :unsigned-int)
    (valueIfConditionNonZero :unsigned-int)
    (valueIfConditionZero :unsigned-int))

  
  (defcfun ("_wrap_btSelect__SWIG_1"
                 SELECT) :int
    (condition :unsigned-int)
    (valueIfConditionNonZero :int)
    (valueIfConditionZero :int))

  
  (defcfun ("_wrap_btSelect__SWIG_2"
                 SELECT) :float
    (condition :unsigned-int)
    (valueIfConditionNonZero :float)
    (valueIfConditionZero :float))

  )

(defcfun ("_wrap_btSwapEndian__SWIG_0"
          swap-endian) :unsigned-int
  (val :unsigned-int))

(defcfun ("_wrap_btSwapEndian__SWIG_1"
          swap-endian/unsigned-short) :unsigned-short
  (val :unsigned-short))

(defcfun ("_wrap_btSwapEndian__SWIG_2"
          swap-endian/int) :unsigned-int
  (val :int))

(defcfun ("_wrap_btSwapEndian__SWIG_3"
          swap-endian/short)
    :unsigned-short
  (val :short))

(defcfun ("_wrap_btSwapEndianFloat"
          swap-endian/float) :unsigned-int
  (d :float))

(defcfun ("_wrap_btUnswapEndianFloat"
          unswap-endian/float) :float
  (a :unsigned-int))

(defcfun ("_wrap_btSwapEndianDouble"
          swap-endian/double) :void
  (d :double)
  (dst :pointer))

(defcfun ("_wrap_btUnswapEndianDouble"
          unswap-endian/double) :double
  (src :pointer))

(defcfun ("_wrap_btLargeDot"
          large-dot) :float
  (a :pointer)
  (b :pointer)
  (n :int))

(defcfun ("_wrap_btNormalizeAngle"
          normalize-angle) :float
  (angleInRadians :float))


(defcfun ("_wrap_btSwapScalarEndian"
          swap-scalar-endian) :void
  (sourceVal :pointer)
  (destVal :pointer))

(defcfun ("_wrap_inverse"
          inverse) :pointer
  (q :pointer))


(defcfun ("_wrap_new_btTransform__SWIG_0"
          make-transform/naked) :pointer)

(defcfun ("_wrap_new_btTransform__SWIG_1"
          make-transform/with-q&c) :pointer
  (q :pointer)
  (c :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_2"
          make-transform/with-q) :pointer
  (q :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_3"
          make-transform/with-b&c) :pointer
  (b :pointer)
  (c :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_4"
          make-transform/with-b) :pointer
  (b :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_5"
          make-transform/with-other) :pointer
  (other :pointer))

(defun make-transform (&key (b nil b?) (c nil c?)
                         (q nil q?) (other nil other?))
  (cond
    ((and b? c?
          (not (or q? other?))) (make-transform/with-b&c b c))
    ((and q? c?
          (not (or b? other?))) (make-transform/with-q&c q c))
    ((and q?
          (not (or c? b? other?))) (make-transform/with-q q))
    ((and b?
          (not (or c? q? other?))) (make-transform/with-b b))
    ((and other?
          (not (or b? c? q?))) (make-transform/with-other other))
    ((or b? c? q? other?)
     (error
      "MAKE-TRANSFORM can be called with any of these
 combinations \(only): \(B C) (Q C) (Q) (B) (OTHER) ()"))
    (t (make-transform/naked))))

(defcfun ("_wrap_btTransform_assignValue"
          transform/assign-value) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btTransform_mult"
          transform/mult) :void
  (self :pointer)
  (t1 :pointer)
  (t2 :pointer))

(defcfun ("_wrap_btTransform___funcall__"
          transform///funcall//) :pointer
  (self :pointer)
  (x :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_0"
          transform/multiply/by-x) :pointer
  (self :pointer)
  (x :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_1"
          transform/multiply/by-q) :pointer
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btTransform_getBasis__SWIG_0"
          transform/get-basis) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTransform_getBasis__SWIG_1"
          transform/get-basis) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_getOrigin__SWIG_0"
          transform/get-origin) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTransform_getOrigin__SWIG_1"
          transform/get-origin) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_getRotation"
          transform/get-rotation) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_setFromOpenGLMatrix"
          transform/set-from-opengl-matrix) :void
  (self :pointer)
  (m :pointer))

(defcfun ("_wrap_btTransform_getOpenGLMatrix"
          transform/get-opengl-matrix) :void
  (self :pointer)
  (m :pointer))

(defcfun ("_wrap_btTransform_setOrigin"
          transform/set-origin) :void
  (self :pointer)
  (origin :pointer))

(defcfun ("_wrap_btTransform_invXform"
          transform/inv-xform) :pointer
  (self :pointer)
  (inVec :pointer))

(defcfun ("_wrap_btTransform_setBasis"
          transform/set-basis) :void
  (self :pointer)
  (basis :pointer))

(defcfun ("_wrap_btTransform_setRotation"
          transform/set-rotation) :void
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btTransform_setIdentity"
          transform/set-identity) :void
  (self :pointer))

(defcfun ("_wrap_btTransform_multiplyAndAssign"
          transform/multiply-and-assign) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_inverse"
          transform/inverse) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_inverseTimes"
          transform/inverse-times) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_2"
          transform/multiply) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_getIdentity"
          transform/get-identity) :pointer)

(defcfun ("_wrap_btTransform_serialize"
          transform/serialize) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btTransform_serializeFloat"
          transform/serialize-float) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btTransform_deSerialize"
          transform/de-serialize) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btTransform_deSerializeDouble"
          transform/de-serialize-double) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btTransform_deSerializeFloat"
          transform/de-serialize-float) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_delete_btTransform"
          delete/bt-transform) :void
  (self :pointer))

(defcfun ("_wrap_delete_btMotionState"
          delete/bt-motion-state) :void
  (self :pointer))

(defcfun ("_wrap_btMotionState_getWorldTransform"
          motion-state/get-world-transform) :void
  (self :pointer)
  (worldTrans :pointer))

(defcfun ("_wrap_btMotionState_setWorldTransform"
          motion-state/set-world-transform) :void
  (self :pointer)
  (worldTrans :pointer))
(define-constant +USE-PLACEMENT-NEW+ 1)
(defcfun ("_wrap_new_btCollisionWorld"
          make-collision-world/with-dispatcher&broadphase-pair-cache&collision-configuration)
    :pointer
  (dispatcher :pointer)
  (broadphasePairCache :pointer)
  (collisionConfiguration :pointer))








