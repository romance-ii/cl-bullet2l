(in-package #:bullet-physics)


(defcfun ("_wrap_new_btCollisionWorld"
               MAKE-COLLISION-WORLD) :pointer
  (dispatcher :pointer)
  (broadphasePairCache :pointer)
  (collisionConfiguration :pointer))

(defcfun ("_wrap_delete_btCollisionWorld"
               DELETE/BT-COLLISION-WORLD) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_setBroadphase"
               COLLISION-WORLD/SET-BROADPHASE) :void
  (self :pointer)
  (pairCache :pointer))

(defcfun ("_wrap_btCollisionWorld_getBroadphase__SWIG_0"
               COLLISION-WORLD/GET-BROADPHASE) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getBroadphase__SWIG_1"
                 COLLISION-WORLD/GET-BROADPHASE) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btCollisionWorld_getPairCache"
               COLLISION-WORLD/GET-PAIR-CACHE) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_getDispatcher__SWIG_0"
               COLLISION-WORLD/GET-DISPATCHER) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getDispatcher__SWIG_1"
                 COLLISION-WORLD/GET-DISPATCHER) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btCollisionWorld_updateSingleAabb"
               COLLISION-WORLD/UPDATE-SINGLE-AABB) :void
  (self :pointer)
  (colObj :pointer))

(defcfun ("_wrap_btCollisionWorld_updateAabbs"
               COLLISION-WORLD/UPDATE-AABBS) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_computeOverlappingPairs"
               COLLISION-WORLD/COMPUTE-OVERLAPPING-PAIRS) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_setDebugDrawer"
               COLLISION-WORLD/SET-DEBUG-DRAWER) :void
  (self :pointer)
  (debugDrawer :pointer))

(defcfun ("_wrap_btCollisionWorld_getDebugDrawer"
               COLLISION-WORLD/GET-DEBUG-DRAWER) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_debugDrawWorld"
               COLLISION-WORLD/DEBUG-DRAW-WORLD) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_debugDrawObject"
               COLLISION-WORLD/DEBUG-DRAW-OBJECT) :void
  (self :pointer)
  (worldTransform :pointer)
  (shape :pointer)
  (color :pointer))

(defcfun ("_wrap_btCollisionWorld_getNumCollisionObjects"
               COLLISION-WORLD/GET-NUM-COLLISION-OBJECTS) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTest"
               COLLISION-WORLD/RAY-TEST) :void
  (self :pointer)
  (rayFromWorld :pointer)
  (rayToWorld :pointer)
  (resultCallback :pointer))
(declaim (inline
          COLLISION-WORLD/CONVEX-SWEEP-TEST/WITH-CCD-PENETRATION))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_0"
               COLLISION-WORLD/CONVEX-SWEEP-TEST/WITH-CCD-PENETRATION) :void
  (self :pointer)
  (castShape :pointer)
  (from :pointer)
  (to :pointer)
  (resultCallback :pointer)
  (allowedCcdPenetration :float))
(declaim (inline
          COLLISION-WORLD/CONVEX-SWEEP-TEST/WITHOUT-CCD-PENETRATION))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_1"
               COLLISION-WORLD/CONVEX-SWEEP-TEST/WITHOUT-CCD-PENETRATION) :void
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
               COLLISION-WORLD/CONTACT-TEST) :void
  (self :pointer)
  (colObj :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_contactPairTest"
               COLLISION-WORLD/CONTACT-PAIR-TEST) :void
  (self :pointer)
  (colObjA :pointer)
  (colObjB :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTestSingle"
               COLLISION-WORLD/RAY-TEST-SINGLE) :void
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObject :pointer)
  (collisionShape :pointer)
  (colObjWorldTransform :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_rayTestSingleInternal"
               COLLISION-WORLD/RAY-TEST-SINGLE-INTERNAL) :void
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObjectWrap :pointer)
  (resultCallback :pointer))

(defcfun ("_wrap_btCollisionWorld_objectQuerySingle"
               COLLISION-WORLD/OBJECT-QUERY-SINGLE) :void
  (castShape :pointer)
  (rayFromTrans :pointer)
  (rayToTrans :pointer)
  (collisionObject :pointer)
  (collisionShape :pointer)
  (colObjWorldTransform :pointer)
  (resultCallback :pointer)
  (allowedPenetration :float))

(defcfun ("_wrap_btCollisionWorld_objectQuerySingleInternal"
               COLLISION-WORLD/OBJECT-QUERY-SINGLE-INTERNAL) :void
  (castShape :pointer)
  (convexFromTrans :pointer)
  (convexToTrans :pointer)
  (colObjWrap :pointer)
  (resultCallback :pointer)
  (allowedPenetration :float))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_0"
               COLLISION-WORLD/ADD-COLLISION-OBJECT/with-filter-group&mask) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_1"
               COLLISION-WORLD/ADD-COLLISION-OBJECT/with-filter-group) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short))

(defcfun ("_wrap_btCollisionWorld_addCollisionObject__SWIG_2"
               COLLISION-WORLD/ADD-COLLISION-OBJECT/simple) :void
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
               COLLISION-WORLD/GET-COLLISION-OBJECT-ARRAY) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getCollisionObjectArray__SWIG_1"
                 COLLISION-WORLD/GET-COLLISION-OBJECT-ARRAY) :pointer
    (self :pointer))

  )

(defcfun ("_wrap_btCollisionWorld_removeCollisionObject"
               COLLISION-WORLD/REMOVE-COLLISION-OBJECT) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btCollisionWorld_performDiscreteCollisionDetection"
               COLLISION-WORLD/PERFORM-DISCRETE-COLLISION-DETECTION) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_getDispatchInfo__SWIG_0"
               COLLISION-WORLD/GET-DISPATCH-INFO) :pointer
  (self :pointer))
#+ (or)
(progn
  
  (defcfun ("_wrap_btCollisionWorld_getDispatchInfo__SWIG_1"
                 COLLISION-WORLD/GET-DISPATCH-INFO) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btCollisionWorld_getForceUpdateAllAabbs"
               COLLISION-WORLD/GET-FORCE-UPDATE-ALL-AABBS) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionWorld_setForceUpdateAllAabbs"
               COLLISION-WORLD/SET-FORCE-UPDATE-ALL-AABBS) :void
  (self :pointer)
  (forceUpdateAllAabbs :pointer))

(defcfun ("_wrap_btCollisionWorld_serialize"
               COLLISION-WORLD/SERIALIZE) :void
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
               GET-VERSION) :int)
(define-constant +LARGE-FLOAT+ 1d18)
(cffi:defcvar ("btInfinityMask"
               *INFINITY-MASK*)
    :int)

(defcfun ("_wrap_btGetInfinityMask"
               GET-INFINITY-MASK) :int)

(defcfun ("_wrap_btSqrt"
               square-root) :float
  (y :float))

(defcfun ("_wrap_btFabs"
               FABS) :float
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
               ATAN-2) :float
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
               FMOD) :float
  (x :float)
  (y :float))

(defcfun ("_wrap_btAtan2Fast"
               ATAN-2-FAST) :float
  (y :float)
  (x :float))

(defcfun ("_wrap_btFuzzyZero"
               FUZZY-ZERO) :pointer
  (x :float))

(defcfun ("_wrap_btEqual"
               equals) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btGreaterEqual"
               GREATER-EQUAL) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btIsNegative"
               IS-NEGATIVE) :int
  (x :float))

(defcfun ("_wrap_btRadians"
               RADIANS) :float
  (x :float))

(defcfun ("_wrap_btDegrees"
               DEGREES) :float
  (x :float))

(defcfun ("_wrap_btFsel"
               FSEL) :float
  (a :float)
  (b :float)
  (c :float))

(defcfun ("_wrap_btMachineIsLittleEndian"
               MACHINE-IS-LITTLE-ENDIAN) :pointer)
#+ need-funky-select-forms
(progn
  
  (defcfun ("_wrap_btSelect__SWIG_0"
                 SELECT) :unsigned-int
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
               SWAP-ENDIAN) :unsigned-int
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
               LARGE-DOT) :float
  (a :pointer)
  (b :pointer)
  (n :int))

(defcfun ("_wrap_btNormalizeAngle"
               NORMALIZE-ANGLE) :float
  (angleInRadians :float))


(defcfun ("_wrap_btSwapScalarEndian"
               SWAP-SCALAR-ENDIAN) :void
  (sourceVal :pointer)
  (destVal :pointer))

(defcfun ("_wrap_inverse"
               INVERSE) :pointer
  (q :pointer))


(defcfun ("_wrap_new_btTransform__SWIG_0"
               MAKE-TRANSFORM/naked) :pointer)

(defcfun ("_wrap_new_btTransform__SWIG_1"
               MAKE-TRANSFORM/with-q&c) :pointer
  (q :pointer)
  (c :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_2"
               MAKE-TRANSFORM/with-q) :pointer
  (q :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_3"
               MAKE-TRANSFORM/with-b&c) :pointer
  (b :pointer)
  (c :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_4"
               MAKE-TRANSFORM/with-b) :pointer
  (b :pointer))

(defcfun ("_wrap_new_btTransform__SWIG_5"
               MAKE-TRANSFORM/with-other) :pointer
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
               TRANSFORM/ASSIGN-VALUE) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_btTransform_mult"
               TRANSFORM/MULT) :void
  (self :pointer)
  (t1 :pointer)
  (t2 :pointer))

(defcfun ("_wrap_btTransform___funcall__"
               TRANSFORM///FUNCALL//) :pointer
  (self :pointer)
  (x :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_0"
               TRANSFORM/MULTIPLY/by-x) :pointer
  (self :pointer)
  (x :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_1"
               TRANSFORM/MULTIPLY/by-q) :pointer
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btTransform_getBasis__SWIG_0"
               TRANSFORM/GET-BASIS) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTransform_getBasis__SWIG_1"
               TRANSFORM/GET-BASIS) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_getOrigin__SWIG_0"
               TRANSFORM/GET-ORIGIN) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTransform_getOrigin__SWIG_1"
               TRANSFORM/GET-ORIGIN) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_getRotation"
               TRANSFORM/GET-ROTATION) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_setFromOpenGLMatrix"
               TRANSFORM/SET-FROM-OPENGL-MATRIX) :void
  (self :pointer)
  (m :pointer))

(defcfun ("_wrap_btTransform_getOpenGLMatrix"
               TRANSFORM/GET-OPENGL-MATRIX) :void
  (self :pointer)
  (m :pointer))

(defcfun ("_wrap_btTransform_setOrigin"
               TRANSFORM/SET-ORIGIN) :void
  (self :pointer)
  (origin :pointer))

(defcfun ("_wrap_btTransform_invXform"
               TRANSFORM/INV-XFORM) :pointer
  (self :pointer)
  (inVec :pointer))

(defcfun ("_wrap_btTransform_setBasis"
               TRANSFORM/SET-BASIS) :void
  (self :pointer)
  (basis :pointer))

(defcfun ("_wrap_btTransform_setRotation"
               TRANSFORM/SET-ROTATION) :void
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btTransform_setIdentity"
               TRANSFORM/SET-IDENTITY) :void
  (self :pointer))

(defcfun ("_wrap_btTransform_multiplyAndAssign"
               TRANSFORM/MULTIPLY-AND-ASSIGN) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_inverse"
               TRANSFORM/INVERSE) :pointer
  (self :pointer))

(defcfun ("_wrap_btTransform_inverseTimes"
               TRANSFORM/INVERSE-TIMES) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_multiply__SWIG_2"
               TRANSFORM/MULTIPLY) :pointer
  (self :pointer)
  (t_arg1 :pointer))

(defcfun ("_wrap_btTransform_getIdentity"
               TRANSFORM/GET-IDENTITY) :pointer)

(defcfun ("_wrap_btTransform_serialize"
               TRANSFORM/SERIALIZE) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btTransform_serializeFloat"
               TRANSFORM/SERIALIZE-FLOAT) :void
  (self :pointer)
  (dataOut :pointer))

(defcfun ("_wrap_btTransform_deSerialize"
               TRANSFORM/DE-SERIALIZE) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btTransform_deSerializeDouble"
               TRANSFORM/DE-SERIALIZE-DOUBLE) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_btTransform_deSerializeFloat"
               TRANSFORM/DE-SERIALIZE-FLOAT) :void
  (self :pointer)
  (dataIn :pointer))

(defcfun ("_wrap_delete_btTransform"
               DELETE/BT-TRANSFORM) :void
  (self :pointer))

(defcfun ("_wrap_delete_btMotionState"
               DELETE/BT-MOTION-STATE) :void
  (self :pointer))

(defcfun ("_wrap_btMotionState_getWorldTransform"
               MOTION-STATE/GET-WORLD-TRANSFORM) :void
  (self :pointer)
  (worldTrans :pointer))

(defcfun ("_wrap_btMotionState_setWorldTransform"
               MOTION-STATE/SET-WORLD-TRANSFORM) :void
  (self :pointer)
  (worldTrans :pointer))
(define-constant +USE-PLACEMENT-NEW+ 1)
(defcfun ("_wrap_new_btCollisionWorld"
               MAKE-COLLISION-WORLD/with-dispatcher&broadphase-pair-cache&collision-configuration)
    :pointer
  (dispatcher :pointer)
  (broadphasePairCache :pointer)
  (collisionConfiguration :pointer))








