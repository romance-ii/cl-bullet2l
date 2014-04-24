(in-package #:bullet-physics)
(defcfun ("_wrap_btDiscreteDynamicsWorld_removeCharacter"
          discrete-dynamics-world/remove-character) :void
  (self :pointer)
  (character :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setSynchronizeAllMotionStates"
          discrete-dynamics-world/set-synchronize-all-motion-states) :void
  (self :pointer)
  (synchronizeAll :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getSynchronizeAllMotionStates"
          discrete-dynamics-world/get-synchronize-all-motion-states) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setApplySpeculativeContactRestitution"
          discrete-dynamics-world/set-apply-speculative-contact-restitution) :void
  (self :pointer)
  (enable :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getApplySpeculativeContactRestitution"
          discrete-dynamics-world/get-apply-speculative-contact-restitution) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_serialize"
          discrete-dynamics-world/serialize) :void
  (self :pointer)
  (serializer :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setLatencyMotionStateInterpolation"
          discrete-dynamics-world/set-latency-motion-state-interpolation) :void
  (self :pointer)
  (latencyInterpolation :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getLatencyMotionStateInterpolation"
          discrete-dynamics-world/get-latency-motion-state-interpolation) :pointer
  (self :pointer))

(defcfun ("_wrap_new_btSimpleDynamicsWorld"
          make-simple-dynamics-world) :pointer
  (dispatcher :pointer)
  (pairCache :pointer)
  (constraintSolver :pointer)
  (collisionConfiguration :pointer))

(defcfun ("_wrap_delete_btSimpleDynamicsWorld"
          delete/bt-simple-dynamics-world) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_stepSimulation__SWIG_0"
          simple-dynamics-world/step-simulation/with-time-step&max-sub-steps&fixed-time-step)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int)
  (fixedTimeStep :float))

(defcfun ("_wrap_btSimpleDynamicsWorld_stepSimulation__SWIG_1"
          simple-dynamics-world/step-simulation/with-time-step&max-sub-steps)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int))

(defcfun ("_wrap_btSimpleDynamicsWorld_stepSimulation__SWIG_2"
          simple-dynamics-world/step-simulation/with-time-step) :int
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btSimpleDynamicsWorld_setGravity"
          simple-dynamics-world/set-gravity) :void
  (self :pointer)
  (gravity :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_getGravity"
          simple-dynamics-world/get-gravity) :pointer
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_addRigidBody__SWIG_0"
          simple-dynamics-world/add-rigid-body) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_addRigidBody__SWIG_1"
          simple-dynamics-world/add-rigid-body/with-group&mask) :void
  (self :pointer)
  (body :pointer)
  (group :short)
  (mask :short))

(defcfun ("_wrap_btSimpleDynamicsWorld_removeRigidBody"
          simple-dynamics-world/remove-rigid-body) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_debugDrawWorld"
          simple-dynamics-world/debug-draw-world) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_addAction"
          simple-dynamics-world/add-action) :void
  (self :pointer)
  (action :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_removeAction"
          simple-dynamics-world/remove-action) :void
  (self :pointer)
  (action :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_removeCollisionObject"
          simple-dynamics-world/remove-collision-object) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_updateAabbs"
          simple-dynamics-world/update-aabbs) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_synchronizeMotionStates"
          simple-dynamics-world/synchronize-motion-states) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_setConstraintSolver"
          simple-dynamics-world/set-constraint-solver) :void
  (self :pointer)
  (solver :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_getConstraintSolver"
          simple-dynamics-world/get-constraint-solver) :pointer
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_getWorldType"
          simple-dynamics-world/get-world-type) :pointer
  (self :pointer))

(defcfun ("_wrap_btSimpleDynamicsWorld_clearForces"
          simple-dynamics-world/clear-forces) :void
  (self :pointer))
(cffi:defcvar ("gDeactivationTime"
               *DEACTIVATION-TIME*)
    :float)
(cffi:defcvar ("gDisableDeactivation"
               *DISABLE-DEACTIVATION*)
    :pointer)


(define-constant +TYPED-CONSTRAINT-DATA-NAME+ "btTypedConstraintFloatData"
  :test 'equal)
(defcenum TYPED-CONSTRAINT-TYPE
  (:POINT->POINT-CONSTRAINT-TYPE #.3)
  :HINGE-CONSTRAINT-TYPE
  :CONETWIST-CONSTRAINT-TYPE
  :D-6-CONSTRAINT-TYPE
  :SLIDER-CONSTRAINT-TYPE
  :CONTACT-CONSTRAINT-TYPE
  :D-6-SPRING-CONSTRAINT-TYPE
  :GEAR-CONSTRAINT-TYPE
  :FIXED-CONSTRAINT-TYPE
  :MAX-CONSTRAINT-TYPE)
(defcenum CONSTRAINT-PARAMS
  (:CONSTRAINT-ERP 1)
  :CONSTRAINT-STOP-ERP
  :CONSTRAINT-CFM
  :CONSTRAINT-STOP-CFM)


(defcfun ("_wrap_btTypedConstraint_makeCPlusPlusInstance__SWIG_0"
          typed-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTypedConstraint_deleteCPlusPlusInstance__SWIG_0"
          typed-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTypedConstraint_makeCPlusPlusInstance__SWIG_1"
          typed-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTypedConstraint_deleteCPlusPlusInstance__SWIG_1"
          typed-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btTypedConstraint_makeCPlusArray__SWIG_0"
          typed-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTypedConstraint_deleteCPlusArray__SWIG_0"
          typed-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTypedConstraint_makeCPlusArray__SWIG_1"
          typed-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTypedConstraint_deleteCPlusArray__SWIG_1"
          typed-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_delete_btTypedConstraint"
          delete/bt-typed-constraint) :void
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getFixedBody"
          typed-constraint/get-fixed-body) :pointer)

(defcfun ("_wrap_btTypedConstraint_getOverrideNumSolverIterations"
          typed-constraint/get-override-num-solver-iterations) :int
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setOverrideNumSolverIterations"
          typed-constraint/set-override-num-solver-iterations) :void
  (self :pointer)
  (overideNumIterations :int))

(defcfun ("_wrap_btTypedConstraint_buildJacobian"
          typed-constraint/build-jacobian) :void
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setupSolverConstraint"
          typed-constraint/setup-solver-constraint) :void
  (self :pointer)
  (ca :pointer)
  (solverBodyA :int)
  (solverBodyB :int)
  (timeStep :float))

(defcfun ("_wrap_btTypedConstraint_getInfo1"
          typed-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btTypedConstraint_getInfo2"
          typed-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btTypedConstraint_internalSetAppliedImpulse"
          typed-constraint/internal-set-applied-impulse) :void
  (self :pointer)
  (appliedImpulse :float))

(defcfun ("_wrap_btTypedConstraint_internalGetAppliedImpulse"
          typed-constraint/internal-get-applied-impulse) :float
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getBreakingImpulseThreshold"
          typed-constraint/get-breaking-impulse-threshold) :float
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setBreakingImpulseThreshold"
          typed-constraint/set-breaking-impulse-threshold) :void
  (self :pointer)
  (threshold :float))

(defcfun ("_wrap_btTypedConstraint_isEnabled"
          typed-constraint/is-enabled) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setEnabled"
          typed-constraint/set-enabled) :void
  (self :pointer)
  (enabled :pointer))

(defcfun ("_wrap_btTypedConstraint_solveConstraintObsolete"
          typed-constraint/solve-constraint-obsolete) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer)
  (arg3 :float))

(defcfun ("_wrap_btTypedConstraint_getRigidBodyA__SWIG_0"
          typed-constraint/get-rigid-body-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getRigidBodyB__SWIG_0"
          typed-constraint/get-rigid-body-b) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTypedConstraint_getRigidBodyA__SWIG_1"
          typed-constraint/get-rigid-body-a) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTypedConstraint_getRigidBodyB__SWIG_1"
          typed-constraint/get-rigid-body-b) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getUserConstraintType"
          typed-constraint/get-user-constraint-type) :int
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setUserConstraintType"
          typed-constraint/set-user-constraint-type) :void
  (self :pointer)
  (userConstraintType :int))

(defcfun ("_wrap_btTypedConstraint_setUserConstraintId"
          typed-constraint/set-user-constraint-id) :void
  (self :pointer)
  (uid :int))

(defcfun ("_wrap_btTypedConstraint_getUserConstraintId"
          typed-constraint/get-user-constraint-id) :int
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setUserConstraintPtr"
          typed-constraint/set-user-constraint-ptr) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTypedConstraint_getUserConstraintPtr"
          typed-constraint/get-user-constraint-ptr) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setJointFeedback"
          typed-constraint/set-joint-feedback) :void
  (self :pointer)
  (jointFeedback :pointer))

(defcfun ("_wrap_btTypedConstraint_getJointFeedback__SWIG_0"
          typed-constraint/get-joint-feedback) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTypedConstraint_getJointFeedback__SWIG_1"
          typed-constraint/get-joint-feedback) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getUid"
          typed-constraint/get-uid) :int
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_needsFeedback"
          typed-constraint/needs-feedback) :pointer
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_enableFeedback"
          typed-constraint/enable-feedback) :void
  (self :pointer)
  (needsFeedback :pointer))

(defcfun ("_wrap_btTypedConstraint_getAppliedImpulse"
          typed-constraint/get-applied-impulse) :float
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_getConstraintType"
          typed-constraint/get-constraint-type) (:enum typed-constraint-type)
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_setDbgDrawSize"
          typed-constraint/set-dbg-draw-size) :void
  (self :pointer)
  (dbgDrawSize :float))

(defcfun ("_wrap_btTypedConstraint_getDbgDrawSize"
          typed-constraint/get-dbg-draw-size) :float
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_calculateSerializeBufferSize"
          typed-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btTypedConstraint_serialize"
          typed-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_btAdjustAngleToLimits"
          adjust-angle-to-limits) :float
  (angleInRadians :float)
  (angleLowerLimitInRadians :float)
  (angleUpperLimitInRadians :float))



(defcfun ("_wrap_new_btAngularLimit"
          make-angular-limit) :pointer)

(defcfun ("_wrap_btAngularLimit_set__SWIG_0"
          angular-limit/set/with-low&high&softness&bias-&relaxation-factor) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float)
  (_biasFactor :float)
  (_relaxationFactor :float))

(defcfun ("_wrap_btAngularLimit_set__SWIG_1"
          angular-limit/set/with-low&high&softness&bias-factor) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float)
  (_biasFactor :float))

(defcfun ("_wrap_btAngularLimit_set__SWIG_2"
          angular-limit/set/with-low&high&softness) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float))

(defcfun ("_wrap_btAngularLimit_set__SWIG_3"
          angular-limit/set/with-low&high) :void
  (self :pointer)
  (low :float)
  (high :float))

(defcfun ("_wrap_btAngularLimit_test"
          angular-limit/test) :void
  (self :pointer)
  (angle :float))

(defcfun ("_wrap_btAngularLimit_getSoftness"
          angular-limit/get-softness) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getBiasFactor"
          angular-limit/get-bias-factor) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getRelaxationFactor"
          angular-limit/get-relaxation-factor) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getCorrection"
          angular-limit/get-correction) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getSign"
          angular-limit/get-sign) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getHalfRange"
          angular-limit/get-half-range) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_isLimit"
          angular-limit/is-limit) :pointer
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_fit"
          angular-limit/fit) :void
  (self :pointer)
  (angle :pointer))

(defcfun ("_wrap_btAngularLimit_getError"
          angular-limit/get-error) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getLow"
          angular-limit/get-low) :float
  (self :pointer))

(defcfun ("_wrap_btAngularLimit_getHigh"
          angular-limit/get-high) :float
  (self :pointer))

(defcfun ("_wrap_delete_btAngularLimit"
          delete/bt-angular-limit) :void
  (self :pointer))
(define-constant +POINT->POINT-CONSTRAINT-DATA-NAME+ "btPoint2PointConstraintFloatData"
  :test 'equal)

(defcenum POINT->POINT-FLAGS
  (:P-2-P-FLAGS-ERP 1)
  (:P-2-P-FLAGS-CFM 2))

(defcfun ("_wrap_btPoint2PointConstraint_makeCPlusPlusInstance__SWIG_0"
          point->point-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_deleteCPlusPlusInstance__SWIG_0"
          point->point-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_makeCPlusPlusInstance__SWIG_1"
          point->point-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_deleteCPlusPlusInstance__SWIG_1"
          point->point-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_makeCPlusArray__SWIG_0"
          point->point-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_deleteCPlusArray__SWIG_0"
          point->point-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_makeCPlusArray__SWIG_1"
          point->point-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_deleteCPlusArray__SWIG_1"
          point->point-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_m_useSolveConstraintObsolete_set"
          point->point-constraint/use-solve-constraint-obsolete/set) :void
  (self :pointer)
  (m_useSolveConstraintObsolete :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_m_useSolveConstraintObsolete_get"
          point->point-constraint/use-solve-constraint-obsolete/get) :pointer
  (self :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_m_setting_set"
          point->point-constraint/setting/set) :void
  (self :pointer)
  (m_setting :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_m_setting_get"
          point->point-constraint/setting/get) :pointer
  (self :pointer))

(defcfun ("_wrap_new_btPoint2PointConstraint__SWIG_0"
          make-point->point-constraint) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (pivotInA :pointer)
  (pivotInB :pointer))

(defcfun ("_wrap_new_btPoint2PointConstraint__SWIG_1"
          make-point->point-constraint/with-rigid-body-a&pivot-in-a) :pointer
  (rbA :pointer)
  (pivotInA :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_buildJacobian"
          point->point-constraint/build-jacobian) :void
  (self :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getInfo1"
          point->point-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getInfo1NonVirtual"
          point->point-constraint/get-info-1-non-virtual) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getInfo2"
          point->point-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getInfo2NonVirtual"
          point->point-constraint/get-info-2-non-virtual) :void
  (self :pointer)
  (info :pointer)
  (body0_trans :pointer)
  (body1_trans :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_updateRHS"
          point->point-constraint/update-rhs) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btPoint2PointConstraint_setPivotA"
          point->point-constraint/set-pivot-a) :void
  (self :pointer)
  (pivotA :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_setPivotB"
          point->point-constraint/set-pivot-b) :void
  (self :pointer)
  (pivotB :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getPivotInA"
          point->point-constraint/get-pivot-in-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_getPivotInB"
          point->point-constraint/get-pivot-in-b) :pointer
  (self :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_calculateSerializeBufferSize"
          point->point-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btPoint2PointConstraint_serialize"
          point->point-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btPoint2PointConstraint"
          delete/bt-point->point-constraint) :void
  (self :pointer))
(define-constant +-BT-USE-CENTER-LIMIT-+ 1)
(define-constant +HINGE-CONSTRAINT-DATA-NAME+ "btHingeConstraintFloatData"
  :test 'equal)
(defcenum HINGE-FLAGS
  (:HINGE-FLAGS-CFM-STOP 1)
  (:HINGE-FLAGS-ERP-STOP 2)
  (:HINGE-FLAGS-CFM-NORM 4))

(defcfun ("_wrap_btHingeConstraint_makeCPlusPlusInstance__SWIG_0"
          hinge-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btHingeConstraint_deleteCPlusPlusInstance__SWIG_0"
          hinge-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btHingeConstraint_makeCPlusPlusInstance__SWIG_1"
          hinge-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btHingeConstraint_deleteCPlusPlusInstance__SWIG_1"
          hinge-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btHingeConstraint_makeCPlusArray__SWIG_0"
          hinge-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btHingeConstraint_deleteCPlusArray__SWIG_0"
          hinge-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btHingeConstraint_makeCPlusArray__SWIG_1"
          hinge-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btHingeConstraint_deleteCPlusArray__SWIG_1"
          hinge-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_0"
          make-hinge-constraint/with-a&b&use-a) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (pivotInA :pointer)
  (pivotInB :pointer)
  (axisInA :pointer)
  (axisInB :pointer)
  (useReferenceFrameA :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_1"
          make-hinge-constraint/with-a&b) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (pivotInA :pointer)
  (pivotInB :pointer)
  (axisInA :pointer)
  (axisInB :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_2"
          make-hinge-constraint/with-use-a) :pointer
  (rbA :pointer)
  (pivotInA :pointer)
  (axisInA :pointer)
  (useReferenceFrameA :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_3"
          make-hinge-constraint) :pointer
  (rbA :pointer)
  (pivotInA :pointer)
  (axisInA :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_4"
          make-hinge-constraint/with-frame-a&b&use-a) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (rbAFrame :pointer)
  (rbBFrame :pointer)
  (useReferenceFrameA :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_5"
          make-hinge-constraint/with-frame-a&b) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (rbAFrame :pointer)
  (rbBFrame :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_6"
          make-hinge-constraint/with-frame-a&use-a) :pointer
  (rbA :pointer)
  (rbAFrame :pointer)
  (useReferenceFrameA :pointer))

(defcfun ("_wrap_new_btHingeConstraint__SWIG_7"
          make-hinge-constraint/with-frame-a) :pointer
  (rbA :pointer)
  (rbAFrame :pointer))

(defcfun ("_wrap_btHingeConstraint_buildJacobian"
          hinge-constraint/build-jacobian) :void
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo1"
          hinge-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo1NonVirtual"
          hinge-constraint/get-info-1-non-virtual) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo2"
          hinge-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo2NonVirtual"
          hinge-constraint/get-info-2-non-virtual) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (angVelA :pointer)
  (angVelB :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo2Internal"
          hinge-constraint/get-info-2-internal) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (angVelA :pointer)
  (angVelB :pointer))

(defcfun ("_wrap_btHingeConstraint_getInfo2InternalUsingFrameOffset"
          hinge-constraint/get-info-2-internal-using-frame-offset) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (angVelA :pointer)
  (angVelB :pointer))

(defcfun ("_wrap_btHingeConstraint_updateRHS"
          hinge-constraint/update-rhs) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btHingeConstraint_getRigidBodyA__SWIG_0"
          hinge-constraint/get-rigid-body-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getRigidBodyB__SWIG_0"
          hinge-constraint/get-rigid-body-b) :pointer
  (self :pointer))
#+ (or)
(progn

  (defcfun ("_wrap_btHingeConstraint_getRigidBodyA__SWIG_1"
            hinge-constraint/get-rigid-body-a) :pointer
    (self :pointer))

  (defcfun ("_wrap_btHingeConstraint_getRigidBodyB__SWIG_1"
            HINGE-CONSTRAINT/GET-RIGID-BODY-B) :pointer
    (self :pointer))
  )

(defcfun ("_wrap_btHingeConstraint_getFrameOffsetA"
          hinge-constraint/get-frame-offset-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getFrameOffsetB"
          hinge-constraint/get-frame-offset-b) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_setFrames"
          hinge-constraint/set-frames) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))

(defcfun ("_wrap_btHingeConstraint_setAngularOnly"
          hinge-constraint/set-angular-only) :void
  (self :pointer)
  (angularOnly :pointer))

(defcfun ("_wrap_btHingeConstraint_enableAngularMotor"
          hinge-constraint/enable-angular-motor) :void
  (self :pointer)
  (enableMotor :pointer)
  (targetVelocity :float)
  (maxMotorImpulse :float))

(defcfun ("_wrap_btHingeConstraint_enableMotor"
          hinge-constraint/enable-motor) :void
  (self :pointer)
  (enableMotor :pointer))

(defcfun ("_wrap_btHingeConstraint_setMaxMotorImpulse"
          hinge-constraint/set-max-motor-impulse) :void
  (self :pointer)
  (maxMotorImpulse :float))

(defcfun ("_wrap_btHingeConstraint_setMotorTarget__SWIG_0"
          hinge-constraint/set-motor-target/q-a-in-b) :void
  (self :pointer)
  (qAinB :pointer)
  (dt :float))

(defcfun ("_wrap_btHingeConstraint_setMotorTarget__SWIG_1"
          hinge-constraint/set-motor-target/target-angle) :void
  (self :pointer)
  (targetAngle :float)
  (dt :float))

(defcfun ("_wrap_btHingeConstraint_setLimit__SWIG_0"
          hinge-constraint/set-limit/with-softness&bias&relaxation) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float)
  (_biasFactor :float)
  (_relaxationFactor :float))

(defcfun ("_wrap_btHingeConstraint_setLimit__SWIG_1"
          hinge-constraint/set-limit/with-softness&bias) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float)
  (_biasFactor :float))

(defcfun ("_wrap_btHingeConstraint_setLimit__SWIG_2"
          hinge-constraint/set-limit/with-softness) :void
  (self :pointer)
  (low :float)
  (high :float)
  (_softness :float))

(defcfun ("_wrap_btHingeConstraint_setLimit__SWIG_3"
          hinge-constraint/set-limit) :void
  (self :pointer)
  (low :float)
  (high :float))

(defcfun ("_wrap_btHingeConstraint_setAxis"
          hinge-constraint/set-axis) :void
  (self :pointer)
  (axisInA :pointer))

(defcfun ("_wrap_btHingeConstraint_getLowerLimit"
          hinge-constraint/get-lower-limit) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getUpperLimit"
          hinge-constraint/get-upper-limit) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getHingeAngle__SWIG_0"
          hinge-constraint/get-hinge-angle) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getHingeAngle__SWIG_1"
          hinge-constraint/get-hinge-angle/with-trans-a&b) :float
  (self :pointer)
  (transA :pointer)
  (transB :pointer))

(defcfun ("_wrap_btHingeConstraint_testLimit"
          hinge-constraint/test-limit) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer))

(defcfun ("_wrap_btHingeConstraint_getAFrame__SWIG_0"
          hinge-constraint/get-aframe) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getBFrame__SWIG_0"
          hinge-constraint/get-bframe) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btHingeConstraint_getAFrame__SWIG_1"
          hinge-constraint/get-aframe) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btHingeConstraint_getBFrame__SWIG_1"
          hinge-constraint/get-bframe) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getSolveLimit"
          hinge-constraint/get-solve-limit) :int
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getLimitSign"
          hinge-constraint/get-limit-sign) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getAngularOnly"
          hinge-constraint/get-angular-only) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getEnableAngularMotor"
          hinge-constraint/get-enable-angular-motor) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getMotorTargetVelosity"
          hinge-constraint/get-motor-target-velosity) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getMaxMotorImpulse"
          hinge-constraint/get-max-motor-impulse) :float
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_getUseFrameOffset"
          hinge-constraint/get-use-frame-offset) :pointer
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_setUseFrameOffset"
          hinge-constraint/set-use-frame-offset) :void
  (self :pointer)
  (frameOffsetOnOff :pointer))

(defcfun ("_wrap_btHingeConstraint_calculateSerializeBufferSize"
          hinge-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btHingeConstraint_serialize"
          hinge-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btHingeConstraint"
          delete/bt-hinge-constraint) :void
  (self :pointer))

(define-constant +CONE-TWIST-CONSTRAINT-DATA-NAME+ "btConeTwistConstraintData"
  :test 'equal)
(defcenum CONE-TWIST-FLAGS
  (:CONETWIST-FLAGS-LIN-CFM 1)
  (:CONETWIST-FLAGS-LIN-ERP 2)
  (:CONETWIST-FLAGS-ANG-CFM 4))

(defcfun ("_wrap_btConeTwistConstraint_makeCPlusPlusInstance__SWIG_0"
          cone-twist-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConeTwistConstraint_deleteCPlusPlusInstance__SWIG_0"
          cone-twist-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeTwistConstraint_makeCPlusPlusInstance__SWIG_1"
          cone-twist-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeTwistConstraint_deleteCPlusPlusInstance__SWIG_1"
          cone-twist-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btConeTwistConstraint_makeCPlusArray__SWIG_0"
          cone-twist-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConeTwistConstraint_deleteCPlusArray__SWIG_0"
          cone-twist-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeTwistConstraint_makeCPlusArray__SWIG_1"
          cone-twist-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeTwistConstraint_deleteCPlusArray__SWIG_1"
          cone-twist-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btConeTwistConstraint__SWIG_0"
          make-cone-twist-constraint/with-b) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (rbAFrame :pointer)
  (rbBFrame :pointer))

(defcfun ("_wrap_new_btConeTwistConstraint__SWIG_1"
          make-cone-twist-constraint) :pointer
  (rbA :pointer)
  (rbAFrame :pointer))

(defcfun ("_wrap_btConeTwistConstraint_buildJacobian"
          cone-twist-constraint/build-jacobian) :void
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getInfo1"
          cone-twist-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getInfo1NonVirtual"
          cone-twist-constraint/get-info-1-non-virtual) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getInfo2"
          cone-twist-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getInfo2NonVirtual"
          cone-twist-constraint/get-info-2-non-virtual) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (invInertiaWorldA :pointer)
  (invInertiaWorldB :pointer))

(defcfun ("_wrap_btConeTwistConstraint_solveConstraintObsolete"
          cone-twist-constraint/solve-constraint-obsolete) :void
  (self :pointer)
  (bodyA :pointer)
  (bodyB :pointer)
  (timeStep :float))

(defcfun ("_wrap_btConeTwistConstraint_updateRHS"
          cone-twist-constraint/update-rhs) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btConeTwistConstraint_getRigidBodyA"
          cone-twist-constraint/get-rigid-body-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getRigidBodyB"
          cone-twist-constraint/get-rigid-body-b) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setAngularOnly"
          cone-twist-constraint/set-angular-only) :void
  (self :pointer)
  (angularOnly :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setLimit__SWIG_0"
          cone-twist-constraint/set-limit/elt) :void
  (self :pointer)
  (limitIndex :int)
  (limitValue :float))

(defcfun ("_wrap_btConeTwistConstraint_setLimit__SWIG_1"
          cone-twist-constraint/set-limit/with-swing&twist&softness&bias&relaxation)
    :void
  (self :pointer)
  (_swingSpan1 :float)
  (_swingSpan2 :float)
  (_twistSpan :float)
  (_softness :float)
  (_biasFactor :float)
  (_relaxationFactor :float))

(defcfun ("_wrap_btConeTwistConstraint_setLimit__SWIG_2"
          cone-twist-constraint/set-limit/with-swing&twist&softness&bias) :void
  (self :pointer)
  (_swingSpan1 :float)
  (_swingSpan2 :float)
  (_twistSpan :float)
  (_softness :float)
  (_biasFactor :float))

(defcfun ("_wrap_btConeTwistConstraint_setLimit__SWIG_3"
          cone-twist-constraint/set-limit/with-swing&twist&softness) :void
  (self :pointer)
  (_swingSpan1 :float)
  (_swingSpan2 :float)
  (_twistSpan :float)
  (_softness :float))

(defcfun ("_wrap_btConeTwistConstraint_setLimit__SWIG_4"
          cone-twist-constraint/set-limit/with-swing&twist) :void
  (self :pointer)
  (_swingSpan1 :float)
  (_swingSpan2 :float)
  (_twistSpan :float))

(defcfun ("_wrap_btConeTwistConstraint_getAFrame"
          cone-twist-constraint/get-aframe) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getBFrame"
          cone-twist-constraint/get-bframe) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getSolveTwistLimit"
          cone-twist-constraint/get-solve-twist-limit) :int
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getSolveSwingLimit"
          cone-twist-constraint/get-solve-swing-limit) :int
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getTwistLimitSign"
          cone-twist-constraint/get-twist-limit-sign) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_calcAngleInfo"
          cone-twist-constraint/calc-angle-info) :void
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_calcAngleInfo2"
          cone-twist-constraint/calc-angle-info-2) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer)
  (invInertiaWorldA :pointer)
  (invInertiaWorldB :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getSwingSpan1"
          cone-twist-constraint/get-swing-span-1) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getSwingSpan2"
          cone-twist-constraint/get-swing-span-2) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getTwistSpan"
          cone-twist-constraint/get-twist-span) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getTwistAngle"
          cone-twist-constraint/get-twist-angle) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_isPastSwingLimit"
          cone-twist-constraint/is-past-swing-limit) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setDamping"
          cone-twist-constraint/set-damping) :void
  (self :pointer)
  (damping :float))

(defcfun ("_wrap_btConeTwistConstraint_enableMotor"
          cone-twist-constraint/enable-motor) :void
  (self :pointer)
  (b :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setMaxMotorImpulse"
          cone-twist-constraint/set-max-motor-impulse) :void
  (self :pointer)
  (maxMotorImpulse :float))

(defcfun ("_wrap_btConeTwistConstraint_setMaxMotorImpulseNormalized"
          cone-twist-constraint/set-max-motor-impulse-normalized) :void
  (self :pointer)
  (maxMotorImpulse :float))

(defcfun ("_wrap_btConeTwistConstraint_getFixThresh"
          cone-twist-constraint/get-fix-thresh) :float
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setFixThresh"
          cone-twist-constraint/set-fix-thresh) :void
  (self :pointer)
  (fixThresh :float))

(defcfun ("_wrap_btConeTwistConstraint_setMotorTarget"
          cone-twist-constraint/set-motor-target) :void
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btConeTwistConstraint_setMotorTargetInConstraintSpace"
          cone-twist-constraint/set-motor-target-in-constraint-space) :void
  (self :pointer)
  (q :pointer))

(defcfun ("_wrap_btConeTwistConstraint_GetPointForAngle"
          cone-twist-constraint/get-point-for-angle) :pointer
  (self :pointer)
  (fAngleInRadians :float)
  (fLength :float))

(defcfun ("_wrap_btConeTwistConstraint_setFrames"
          cone-twist-constraint/set-frames) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))
(defmethod (setf frames) ((self CONE-TWIST-CONSTRAINT)
                          (frame-a transform)
                          (frame-b transform))
  (CONE-TWIST-CONSTRAINT/SET-FRAMES (ff-pointer self)
                                    (ff-pointer frame-A)
                                    (ff-pointer frame-B)))

(defcfun ("_wrap_btConeTwistConstraint_getFrameOffsetA"
          cone-twist-constraint/get-frame-offset-a) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_getFrameOffsetB"
          cone-twist-constraint/get-frame-offset-b) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_calculateSerializeBufferSize"
          cone-twist-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btConeTwistConstraint_serialize"
          cone-twist-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btConeTwistConstraint"
          delete/bt-cone-twist-constraint) :void
  (self :pointer))

(define-constant +GENERIC-6-DOF-CONSTRAINT-DATA-NAME+ "btGeneric6DofConstraintData"
  :test 'equal)

(defcfun ("_wrap_btRotationalLimitMotor_m_loLimit_set"
          rotational-limit-motor/lo-limit/set) :void
  (self :pointer)
  (m_loLimit :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_loLimit_get"
          rotational-limit-motor/lo-limit/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_hiLimit_set"
          rotational-limit-motor/hi-limit/set) :void
  (self :pointer)
  (m_hiLimit :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_hiLimit_get"
          rotational-limit-motor/hi-limit/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_targetVelocity_set"
          rotational-limit-motor/target-velocity/set) :void
  (self :pointer)
  (m_targetVelocity :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_targetVelocity_get"
          rotational-limit-motor/target-velocity/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_maxMotorForce_set"
          rotational-limit-motor/max-motor-force/set) :void
  (self :pointer)
  (m_maxMotorForce :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_maxMotorForce_get"
          rotational-limit-motor/max-motor-force/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_maxLimitForce_set"
          rotational-limit-motor/max-limit-force/set) :void
  (self :pointer)
  (m_maxLimitForce :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_maxLimitForce_get"
          rotational-limit-motor/max-limit-force/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_damping_set"
          rotational-limit-motor/damping/set) :void
  (self :pointer)
  (m_damping :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_damping_get"
          rotational-limit-motor/damping/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_limitSoftness_set"
          rotational-limit-motor/limit-softness/set) :void
  (self :pointer)
  (m_limitSoftness :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_limitSoftness_get"
          rotational-limit-motor/limit-softness/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_normalCFM_set"
          rotational-limit-motor/normal-cfm/set) :void
  (self :pointer)
  (m_normalCFM :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_normalCFM_get"
          rotational-limit-motor/normal-cfm/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_stopERP_set"
          rotational-limit-motor/stop-erp/set) :void
  (self :pointer)
  (m_stopERP :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_stopERP_get"
          rotational-limit-motor/stop-erp/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_stopCFM_set"
          rotational-limit-motor/stop-cfm/set) :void
  (self :pointer)
  (m_stopCFM :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_stopCFM_get"
          rotational-limit-motor/stop-cfm/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_bounce_set"
          rotational-limit-motor/bounce/set) :void
  (self :pointer)
  (m_bounce :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_bounce_get"
          rotational-limit-motor/bounce/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_enableMotor_set"
          rotational-limit-motor/enable-motor/set) :void
  (self :pointer)
  (m_enableMotor :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_enableMotor_get"
          rotational-limit-motor/enable-motor/get) :pointer
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentLimitError_set"
          rotational-limit-motor/current-limit-error/set) :void
  (self :pointer)
  (m_currentLimitError :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentLimitError_get"
          rotational-limit-motor/current-limit-error/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentPosition_set"
          rotational-limit-motor/current-position/set) :void
  (self :pointer)
  (m_currentPosition :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentPosition_get"
          rotational-limit-motor/current-position/get) :float
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentLimit_set"
          rotational-limit-motor/current-limit/set) :void
  (self :pointer)
  (m_currentLimit :int))

(defcfun ("_wrap_btRotationalLimitMotor_m_currentLimit_get"
          rotational-limit-motor/current-limit/get) :int
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_m_accumulatedImpulse_set"
          rotational-limit-motor/accumulated-impulse/set) :void
  (self :pointer)
  (m_accumulatedImpulse :float))

(defcfun ("_wrap_btRotationalLimitMotor_m_accumulatedImpulse_get"
          rotational-limit-motor/accumulated-impulse/get) :float
  (self :pointer))

(defcfun ("_wrap_new_btRotationalLimitMotor__SWIG_0"
          make-rotational-limit-motor) :pointer)

(defcfun ("_wrap_new_btRotationalLimitMotor__SWIG_1"
          make-rotational-limit-motor/with-limot) :pointer
  (limot :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_isLimited"
          rotational-limit-motor/is-limited) :pointer
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_needApplyTorques"
          rotational-limit-motor/need-apply-torques) :pointer
  (self :pointer))

(defcfun ("_wrap_btRotationalLimitMotor_testLimitValue"
          rotational-limit-motor/test-limit-value) :int
  (self :pointer)
  (test_value :float))

(defcfun ("_wrap_btRotationalLimitMotor_solveAngularLimits"
          rotational-limit-motor/solve-angular-limits) :float
  (self :pointer)
  (timeStep :float)
  (axis :pointer)
  (jacDiagABInv :float)
  (body0 :pointer)
  (body1 :pointer))

(defcfun ("_wrap_delete_btRotationalLimitMotor"
          delete/bt-rotational-limit-motor) :void
  (self :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_lowerLimit_set"
          translational-limit-motor/lower-limit/set) :void
  (self :pointer)
  (m_lowerLimit :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_lowerLimit_get"
          translational-limit-motor/lower-limit/get) :pointer
  (self :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_upperLimit_set"
          translational-limit-motor/upper-limit/set) :void
  (self :pointer)
  (m_upperLimit :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_upperLimit_get"
          translational-limit-motor/upper-limit/get) :pointer
  (self :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_accumulatedImpulse_set"
          translational-limit-motor/accumulated-impulse/set) :void
  (self :pointer)
  (m_accumulatedImpulse :pointer))

(defcfun ("_wrap_btTranslationalLimitMotor_m_accumulatedImpulse_get"
          translational-limit-motor/accumulated-impulse/get) :pointer
  (self :pointer))

