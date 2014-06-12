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
          collision-world/convex-sweep-test/with-ccd-penetration))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_0"
          collision-world/convex-sweep-test/with-ccd-penetration) :void
  (self :pointer)
  (castShape :pointer)
  (from :pointer)
  (to :pointer)
  (resultCallback :pointer)
  (allowedCcdPenetration :float))
(declaim (inline
          collision-world/convex-sweep-test/without-ccd-penetration))
(defcfun ("_wrap_btCollisionWorld_convexSweepTest__SWIG_1"
          collision-world/convex-sweep-test/without-ccd-penetration) :void
  (self :pointer)
  (castShape :pointer)
  (from :pointer)
  (to :pointer)
  (resultCallback :pointer))
(defun collision-world/convex-sweep-test
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
(define-constant +active-tag+ 1)
(define-constant +island-sleeping+ 2)
(define-constant +wants-deactivation+ 3)
(define-constant +disable-deactivation+ 4)
(define-constant +disable-simulation+ 5)
(alexandria:define-constant +collision-object-data-name+
    "btCollisionObjectFloatData"
  :test 'equal)
(cffi:defcenum collision-flags
  (:static-object 1)
  (:kinematic-object 2)
  (:no-contact-response 4)
  (:custom-material-callback 8)
  (:character-object 16)
  (:disable-visualize-object 32)
  (:disable-spu-collision-processing 64))
(cffi:defcenum collision-object-types
  (:collision-object 1)
  (:rigid-body 2)
  (:ghost-object 4)
  (:soft-body 8)
  (:hf-fluid 16)
  (:user-type 32)
  (:featherstone-link 64))
(cffi:defcenum anisotropic-friction-flags
  (:anisotropic-friction-disabled 0)
  (:anisotropic-friction 1)
  (:anisotropic-rolling-friction 2))
(cffi:defcenum dispatcher-flags
  (:static-static-reported 1)
  (:use-relative-contact-breaking-threshold 2)
  (:disable-contactpool-dynamic-allocation 4))
(define-anonymous-enum
  (dynamic-set 0)
  (fixed-set 1)
  (stagecount 2))
(cffi:defcenum debug-draw-modes
  (:no-debug 0)
  (:draw-wireframe 1)
  (:draw-aabb 2)
  (:draw-features-text 4)
  (:draw-contact-points 8)
  (:no-deactivation 16)
  (:no-help-text #.32)
  (:draw-text #.64)
  (:profile-timings 128)
  (:enable-sat-comparison 256)
  (:disable-bullet-lcp #.512)
  (:enable-ccd 1024)
  (:draw-constraints #.(ash 1 11))
  (:draw-constraint-limits #.(ash 1 12))
  (:fast-wireframe #.(ash 1 13))
  (:draw-normals #.(ash 1 14))
  :max-debug-draw-mode)
(cffi:defcenum serialization-flags
  (:no-bvh 1)
  (:no-triangleinfomap 2)
  (:no-duplicate-assert 4))
(cffi:defcenum rigid-body-flags
  (:disable-world-gravity 1)
  (:enable-gyropscopic-force 2))
(cffi:defcenum point->point-flags
  (:p-2-p-flags-erp 1)
  (:p-2-p-flags-cfm 2))
(cffi:defcenum hinge-flags
  (:hinge-flags-cfm-stop 1)
  (:hinge-flags-erp-stop 2)
  (:hinge-flags-cfm-norm 4))
(cffi:defcenum cone-twist-flags
  (:conetwist-flags-lin-cfm 1)
  (:conetwist-flags-lin-erp 2)
  (:conetwist-flags-ang-cfm 4))
(cffi:defcenum 6-dof-flags
  (:6-dof-flags-cfm-norm 1)
  (:6-dof-flags-cfm-stop 2)
  (:6-dof-flags-erp-stop 4))
(cffi:defcenum slider-flags
  (:slider-flags-cfm-dirlin #.(ash 1 0))
  (:slider-flags-erp-dirlin #.(ash 1 1))
  (:slider-flags-cfm-dirang #.(ash 1 2))
  (:slider-flags-erp-dirang #.(ash 1 3))
  (:slider-flags-cfm-ortlin #.(ash 1 4))
  (:slider-flags-erp-ortlin #.(ash 1 5))
  (:slider-flags-cfm-ortang #.(ash 1 6))
  (:slider-flags-erp-ortang #.(ash 1 7))
  (:slider-flags-cfm-limlin #.(ash 1 8))
  (:slider-flags-erp-limlin #.(ash 1 9))
  (:slider-flags-cfm-limang #.(ash 1 10))
  (:slider-flags-erp-limang #.(ash 1 11)))
(defmethod initialize-instance :after ((obj collision-world)
                                       &key dispatcher broadphase-pair-cache
                                         collision-configuration)
  (setf (slot-value obj 'ff-pointer) (make-collision-world dispatcher
                                                           broadphase-pair-cache
                                                           collision-configuration)))
(defmethod (setf broadphase) (pair-cache (self collision-world))
  (collision-world/set-broadphase (ff-pointer self) pair-cache))
(defmethod broadphase ((self collision-world))
  (collision-world/get-broadphase (ff-pointer self)))
#+ (or)
(defmethod broadphase ((self collision-world))
  (collision-world/get-broadphase (ff-pointer self)))
(defmethod pair-cache ((self collision-world))
  (collision-world/get-pair-cache (ff-pointer self)))
(defmethod dispatcher ((self collision-world))
  (collision-world/get-dispatcher (ff-pointer self)))
(defmethod dispatcher ((self collision-world))
  (collision-world/get-dispatcher (ff-pointer self)))
(defmethod update-single-aabb ((self collision-world) colobj)
  (collision-world/update-single-aabb (ff-pointer self) colobj))
(defmethod update-aabbs ((self collision-world))
  (collision-world/update-aabbs (ff-pointer self)))
(defmethod compute-overlapping-pairs ((self collision-world))
  (collision-world/compute-overlapping-pairs (ff-pointer self)))
(defmethod (setf debug-drawer) (debug-drawer (self collision-world))
  (collision-world/set-debug-drawer (ff-pointer self) debug-drawer))
(defmethod debug-drawer ((self collision-world))
  (collision-world/get-debug-drawer (ff-pointer self)))
(defmethod debug-draw-world ((self collision-world))
  (collision-world/debug-draw-world (ff-pointer self)))
(defmethod debug-draw-object ((self collision-world) worldtransform shape color)
  (collision-world/debug-draw-object (ff-pointer self) worldtransform shape color))
(defmethod num-collision-objects ((self collision-world))
  (collision-world/get-num-collision-objects (ff-pointer self)))
(defmethod ray-test ((self collision-world)
                     (ray-from-world vector3) (ray-to-world vector3) result-callback
                     &optional _1 _2)
  (declare (ignore _1 _2))
  (collision-world/ray-test (ff-pointer self) ray-from-world ray-to-world result-callback))
(defmethod convex-sweep-test
    ((self collision-world)
     castshape from to resultcallback
     (allowedccdpenetration number))
  (collision-world/convex-sweep-test/with-ccd-penetration
   (ff-pointer self) castshape from to resultcallback
   allowedccdpenetration))
(defmethod convex-sweep-test
    ((self collision-world)
     castshape from to resultcallback (allowedccdpenetration null))
  (collision-world/convex-sweep-test/without-ccd-penetration
   (ff-pointer self) castshape from to resultcallback))

(defmethod contact-test
    ((self collision-world) colobj resultcallback)
  (collision-world/contact-test (ff-pointer self) colobj resultcallback))
(defmethod contact-pair-test
    ((self collision-world) colobja colobjb resultcallback)
  (collision-world/contact-pair-test (ff-pointer self) colobja colobjb resultcallback))
(defmethod add-collision-object
    ((self collision-world) collisionobject
     &optional collision-filter-group collision-filter-mask)
  (check-type collision-filter-group (or null integer))
  (check-type collision-filter-mask (or null integer))
  (cond
    ((and collision-filter-group collision-filter-mask)
     (collision-world/add-collision-object/with-filter-group&mask
      (ff-pointer self) collisionobject
      collision-filter-group collision-filter-mask))
    (collision-filter-group
     (collision-world/add-collision-object/with-filter-group
      (ff-pointer self) collisionobject
      collision-filter-group))
    (t (collision-world/add-collision-object/simple
        (ff-pointer self) collisionobject))))

(defmethod collision-object-array ((self collision-world))
  (collision-world/get-collision-object-array (ff-pointer self)))
(defmethod collision-object-array ((self collision-world))
  (collision-world/get-collision-object-array (ff-pointer self)))
(defmethod remove-collision-object ((self collision-world) collisionobject)
  (collision-world/remove-collision-object (ff-pointer self) collisionobject))
(defmethod perform-discrete-collision-detection ((self collision-world))
  (collision-world/perform-discrete-collision-detection (ff-pointer self)))
(defmethod dispatch-info ((self collision-world))
  (collision-world/get-dispatch-info (ff-pointer self)))
(defmethod dispatch-info ((self collision-world))
  (collision-world/get-dispatch-info (ff-pointer self)))
(defmethod force-update-all-aabbs-p ((self collision-world))
  (collision-world/get-force-update-all-aabbs (ff-pointer self)))
(defmethod (setf force-update-all-aabbs-p) ((forceupdateallaabbs t) (self collision-world))
  (collision-world/set-force-update-all-aabbs (ff-pointer self) forceupdateallaabbs))
(defmethod ->serial ((self collision-world) &key serializer &allow-other-keys)
  (collision-world/serialize (ff-pointer self) serializer))

(define-constant +bullet-version+ 282)

(defcfun ("_wrap_btGetVersion"
          get-version) :int)
(define-constant +large-float+ 1d18)
(cffi:defcvar ("btInfinityMask" *infinity-mask*) :int)

(defcfun ("_wrap_btGetInfinityMask" get-infinity-mask) :int)

(defcfun ("_wrap_btSqrt" square-root) :float (y :float))

(defcfun ("_wrap_btFabs" fabs) :float (x :float))

(defcfun ("_wrap_btCos" cosine) :float (x :float))

(defcfun ("_wrap_btSin" sine) :float (x :float))

(defcfun ("_wrap_btTan" tangent) :float (x :float))

(defcfun ("_wrap_btAcos" arc-cosine) :float (x :float))

(defcfun ("_wrap_btAsin" arc-sine) :float (x :float))

(defcfun ("_wrap_btAtan" arc-tangent) :float (x :float))

(defcfun ("_wrap_btAtan2" atan-2) :float (x :float) (y :float))

(defcfun ("_wrap_btExp" exponent) :float (x :float))

(defcfun ("_wrap_btLog" logarithm) :float (x :float))

(defcfun ("_wrap_btPow" power) :float (x :float) (y :float))

(defcfun ("_wrap_btFmod" fmod) :float (x :float) (y :float))

(defcfun ("_wrap_btAtan2Fast" atan-2-fast) :float 
  (y :float) (x :float))

(defcfun ("_wrap_btFuzzyZero" fuzzy-zero) :pointer (x :float))

(defcfun ("_wrap_btEqual" equals) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btGreaterEqual" greater-equal) :pointer
  (a :float)
  (eps :float))

(defcfun ("_wrap_btIsNegative" negative-p) :boolean
  (x :float))

(defcfun ("_wrap_btRadians" radians) :float
  (x :float))

(defcfun ("_wrap_btDegrees" degrees) :float
  (x :float))

(defcfun ("_wrap_btFsel" fsel) :float
  (a :float)
  (b :float)
  (c :float))

(defcfun ("_wrap_btMachineIsLittleEndian" machine-is-little-endian) :boolean)
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








