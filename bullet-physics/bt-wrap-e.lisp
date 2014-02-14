(in-package #:bullet-physics)



(defcfun ("_wrap_btTranslationalLimitMotor_m_limitSoftness_set"
               TRANSLATIONAL-LIMIT-MOTOR/LIMIT-SOFTNESS/SET) :void
  (self :pointer)
  (m_limitSoftness :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_limitSoftness_get"
               TRANSLATIONAL-LIMIT-MOTOR/LIMIT-SOFTNESS/GET) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_damping_set"
               TRANSLATIONAL-LIMIT-MOTOR/DAMPING/SET) :void
  (self :pointer)
  (m_damping :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_damping_get"
               TRANSLATIONAL-LIMIT-MOTOR/DAMPING/GET) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_restitution_set"
               TRANSLATIONAL-LIMIT-MOTOR/RESTITUTION/SET) :void
  (self :pointer)
  (m_restitution :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_restitution_get"
               TRANSLATIONAL-LIMIT-MOTOR/RESTITUTION/GET) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_normalCFM_set"
               TRANSLATIONAL-LIMIT-MOTOR/NORMAL-CFM/SET) :void
  (self :pointer)
  (m_normalCFM :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_normalCFM_get"
               TRANSLATIONAL-LIMIT-MOTOR/NORMAL-CFM/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopERP_set"
               TRANSLATIONAL-LIMIT-MOTOR/STOP-ERP/SET) :void
  (self :pointer)
  (m_stopERP :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopERP_get"
               TRANSLATIONAL-LIMIT-MOTOR/STOP-ERP/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopCFM_set"
               TRANSLATIONAL-LIMIT-MOTOR/STOP-CFM/SET) :void
  (self :pointer)
  (m_stopCFM :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopCFM_get"
               TRANSLATIONAL-LIMIT-MOTOR/STOP-CFM/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_enableMotor_set"
               TRANSLATIONAL-LIMIT-MOTOR/ENABLE-MOTOR/SET) :void
  (self :pointer)
  (m_enableMotor :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_enableMotor_get"
               TRANSLATIONAL-LIMIT-MOTOR/ENABLE-MOTOR/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_targetVelocity_set"
               TRANSLATIONAL-LIMIT-MOTOR/TARGET-VELOCITY/SET) :void
  (self :pointer)
  (m_targetVelocity :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_targetVelocity_get"
               TRANSLATIONAL-LIMIT-MOTOR/TARGET-VELOCITY/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_maxMotorForce_set"
               TRANSLATIONAL-LIMIT-MOTOR/MAX-MOTOR-FORCE/SET) :void
  (self :pointer)
  (m_maxMotorForce :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_maxMotorForce_get"
               TRANSLATIONAL-LIMIT-MOTOR/MAX-MOTOR-FORCE/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimitError_set"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LIMIT-ERROR/SET) :void
  (self :pointer)
  (m_currentLimitError :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimitError_get"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LIMIT-ERROR/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLinearDiff_set"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LINEAR-DIFF/SET) :void
  (self :pointer)
  (m_currentLinearDiff :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLinearDiff_get"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LINEAR-DIFF/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimit_set"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LIMIT/SET) :void
  (self :pointer)
  (m_currentLimit :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimit_get"
               TRANSLATIONAL-LIMIT-MOTOR/CURRENT-LIMIT/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_new_btTranslationalLimitMotor__SWIG_0"
               MAKE-TRANSLATIONAL-LIMIT-MOTOR) :pointer)



(defcfun ("_wrap_new_btTranslationalLimitMotor__SWIG_1"
               MAKE-TRANSLATIONAL-LIMIT-MOTOR/with-other) :pointer
  (other :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_isLimited"
               TRANSLATIONAL-LIMIT-MOTOR/IS-LIMITED) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btTranslationalLimitMotor_needApplyForce"
               TRANSLATIONAL-LIMIT-MOTOR/NEED-APPLY-FORCE) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btTranslationalLimitMotor_testLimitValue"
               TRANSLATIONAL-LIMIT-MOTOR/TEST-LIMIT-VALUE) :int
  (self :pointer)
  (limitIndex :int)
  (test_value :float))



(defcfun ("_wrap_btTranslationalLimitMotor_solveLinearAxis"
               TRANSLATIONAL-LIMIT-MOTOR/SOLVE-LINEAR-AXIS) :float
  (self :pointer)
  (timeStep :float)
  (jacDiagABInv :float)
  (body1 :pointer)
  (pointInA :pointer)
  (body2 :pointer)
  (pointInB :pointer)
  (limit_index :int)
  (axis_normal_on_a :pointer)
  (anchorPos :pointer))



(defcfun ("_wrap_delete_btTranslationalLimitMotor"
               DELETE/BT-TRANSLATIONAL-LIMIT-MOTOR) :void
  (self :pointer))

(cffi:defcenum 6-DOF-FLAGS
  (:6-DOF-FLAGS-CFM-NORM 1)
  (:6-DOF-FLAGS-CFM-STOP 2)
  (:6-DOF-FLAGS-ERP-STOP 4))

(define-constant +6-DOF-FLAGS-AXIS-SHIFT+ 3)



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusPlusInstance__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusPlusInstance__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusPlusInstance__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusPlusInstance__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusArray__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusArray__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusArray__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusArray__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_m_useSolveConstraintObsolete_set"
               GENERIC-6-DOF-CONSTRAINT/USE-SOLVE-CONSTRAINT-OBSOLETE/SET) :void
  (self :pointer)
  (m_useSolveConstraintObsolete :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_m_useSolveConstraintObsolete_get"
               GENERIC-6-DOF-CONSTRAINT/USE-SOLVE-CONSTRAINT-OBSOLETE/GET) :pointer
  (self :pointer))



(defcfun ("_wrap_new_btGeneric6DofConstraint__SWIG_0"
               MAKE-GENERIC-6-DOF-CONSTRAINT) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (frameInA :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_new_btGeneric6DofConstraint__SWIG_1"
               MAKE-GENERIC-6-DOF-CONSTRAINT/with-linear-reference-frame-b) :pointer
  (rbB :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateTransforms__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/CALCULATE-TRANSFORMS) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateTransforms__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/CALCULATE-TRANSFORMS/naked) :void
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getCalculatedTransformA"
               GENERIC-6-DOF-CONSTRAINT/GET-CALCULATED-TRANSFORM-A) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getCalculatedTransformB"
               GENERIC-6-DOF-CONSTRAINT/GET-CALCULATED-TRANSFORM-B) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetA__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/GET-FRAME-OFFSET-A) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetB__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/GET-FRAME-OFFSET-B) :pointer
  (self :pointer))
#+ (or) (progn 
               (defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetA__SWIG_1"
                              GENERIC-6-DOF-CONSTRAINT/GET-FRAME-OFFSET-A) :pointer
                 (self :pointer))
               
               (defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetB__SWIG_1"
                              GENERIC-6-DOF-CONSTRAINT/GET-FRAME-OFFSET-B) :pointer
                 (self :pointer)))



(defcfun ("_wrap_btGeneric6DofConstraint_buildJacobian"
               GENERIC-6-DOF-CONSTRAINT/BUILD-JACOBIAN) :void  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo1"
               GENERIC-6-DOF-CONSTRAINT/GET-INFO-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo1NonVirtual"
               GENERIC-6-DOF-CONSTRAINT/GET-INFO-1-NON-VIRTUAL) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo2"
               GENERIC-6-DOF-CONSTRAINT/GET-INFO-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo2NonVirtual"
               GENERIC-6-DOF-CONSTRAINT/GET-INFO-2-NON-VIRTUAL) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (angVelA :pointer)
  (angVelB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_updateRHS"
               GENERIC-6-DOF-CONSTRAINT/UPDATE-RHS) :void
  (self :pointer)
  (timeStep :float))



(defcfun ("_wrap_btGeneric6DofConstraint_getAxis"
               GENERIC-6-DOF-CONSTRAINT/GET-AXIS) :pointer
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngle"
               GENERIC-6-DOF-CONSTRAINT/GET-ANGLE) :float
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getRelativePivotPosition"
               GENERIC-6-DOF-CONSTRAINT/GET-RELATIVE-PIVOT-POSITION) :float
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_setFrames"
               GENERIC-6-DOF-CONSTRAINT/SET-FRAMES) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_testAngularLimitMotor"
               GENERIC-6-DOF-CONSTRAINT/TEST-ANGULAR-LIMIT-MOTOR) :pointer
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_setLinearLowerLimit"
               GENERIC-6-DOF-CONSTRAINT/SET-LINEAR-LOWER-LIMIT) :void
  (self :pointer)
  (linearLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getLinearLowerLimit"
               GENERIC-6-DOF-CONSTRAINT/GET-LINEAR-LOWER-LIMIT) :void
  (self :pointer)
  (linearLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setLinearUpperLimit"
               GENERIC-6-DOF-CONSTRAINT/SET-LINEAR-UPPER-LIMIT) :void
  (self :pointer)
  (linearUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getLinearUpperLimit"
               GENERIC-6-DOF-CONSTRAINT/GET-LINEAR-UPPER-LIMIT) :void
  (self :pointer)
  (linearUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAngularLowerLimit"
               GENERIC-6-DOF-CONSTRAINT/SET-ANGULAR-LOWER-LIMIT) :void
  (self :pointer)
  (angularLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngularLowerLimit"
               GENERIC-6-DOF-CONSTRAINT/GET-ANGULAR-LOWER-LIMIT) :void
  (self :pointer)
  (angularLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAngularUpperLimit"
               GENERIC-6-DOF-CONSTRAINT/SET-ANGULAR-UPPER-LIMIT) :void
  (self :pointer)
  (angularUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngularUpperLimit"
               GENERIC-6-DOF-CONSTRAINT/GET-ANGULAR-UPPER-LIMIT) :void
  (self :pointer)
  (angularUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getRotationalLimitMotor"
               GENERIC-6-DOF-CONSTRAINT/GET-ROTATIONAL-LIMIT-MOTOR) :pointer
  (self :pointer)
  (index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getTranslationalLimitMotor"
               GENERIC-6-DOF-CONSTRAINT/GET-TRANSLATIONAL-LIMIT-MOTOR) :pointer  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setLimit"
               GENERIC-6-DOF-CONSTRAINT/SET-LIMIT) :void
  (self :pointer)
  (axis :int)
  (lo :float)
  (hi :float))



(defcfun ("_wrap_btGeneric6DofConstraint_isLimited"
               GENERIC-6-DOF-CONSTRAINT/IS-LIMITED) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btGeneric6DofConstraint_calcAnchorPos"
               GENERIC-6-DOF-CONSTRAINT/CALC-ANCHOR-POS) :void  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_get_limit_motor_info2__SWIG_0"
               GENERIC-6-DOF-CONSTRAINT/GET-LIMIT-MOTOR-INFO-2) :int
  (self :pointer)
  (limot :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (angVelA :pointer)
  (angVelB :pointer)
  (info :pointer)
  (row :int)
  (ax1 :pointer)
  (rotational :int)
  (rotAllowed :int))



(defcfun ("_wrap_btGeneric6DofConstraint_get_limit_motor_info2__SWIG_1"
               GENERIC-6-DOF-CONSTRAINT/GET-LIMIT-MOTOR-INFO-2*) :int
  (self :pointer)
  (limot :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (angVelA :pointer)
  (angVelB :pointer)
  (info :pointer)
  (row :int)
  (ax1 :pointer)
  (rotational :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getUseFrameOffset"
               GENERIC-6-DOF-CONSTRAINT/GET-USE-FRAME-OFFSET) :pointer  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setUseFrameOffset"
               GENERIC-6-DOF-CONSTRAINT/SET-USE-FRAME-OFFSET) :void
  (self :pointer)
  (frameOffsetOnOff :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAxis"
               GENERIC-6-DOF-CONSTRAINT/SET-AXIS) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateSerializeBufferSize"
               GENERIC-6-DOF-CONSTRAINT/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_serialize"
               GENERIC-6-DOF-CONSTRAINT/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btGeneric6DofConstraint"
               DELETE/BT-GENERIC-6-DOF-CONSTRAINT) :void
  (self :pointer))












(define-constant +SLIDER-CONSTRAINT-DATA-NAME+ "btSliderConstraintData"
  :test 'equal)

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



(defcfun ("_wrap_btSliderConstraint_makeCPlusPlusInstance__SWIG_0"
               SLIDER-CONSTRAINT/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusPlusInstance__SWIG_0"
               SLIDER-CONSTRAINT/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusPlusInstance__SWIG_1"
               SLIDER-CONSTRAINT/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusPlusInstance__SWIG_1"
               SLIDER-CONSTRAINT/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusArray__SWIG_0"
               SLIDER-CONSTRAINT/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusArray__SWIG_0"
               SLIDER-CONSTRAINT/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusArray__SWIG_1"
               SLIDER-CONSTRAINT/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusArray__SWIG_1"
               SLIDER-CONSTRAINT/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btSliderConstraint__SWIG_0"
               MAKE-SLIDER-CONSTRAINT) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (frameInA :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_new_btSliderConstraint__SWIG_1"
               make-slider-constraint/with-linear-reference-frame-a) :pointer
  (rbB :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo1"
               SLIDER-CONSTRAINT/GET-INFO-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo1NonVirtual"
               SLIDER-CONSTRAINT/GET-INFO-1-NON-VIRTUAL) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo2"
               SLIDER-CONSTRAINT/GET-INFO-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo2NonVirtual"
               SLIDER-CONSTRAINT/GET-INFO-2-NON-VIRTUAL) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (rbAinvMass :float)
  (rbBinvMass :float))



(defcfun ("_wrap_btSliderConstraint_getRigidBodyA"
               SLIDER-CONSTRAINT/GET-RIGID-BODY-A) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRigidBodyB"
               SLIDER-CONSTRAINT/GET-RIGID-BODY-B) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getCalculatedTransformA"
               SLIDER-CONSTRAINT/GET-CALCULATED-TRANSFORM-A) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getCalculatedTransformB"
               SLIDER-CONSTRAINT/GET-CALCULATED-TRANSFORM-B) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getFrameOffsetA__SWIG_0"
               SLIDER-CONSTRAINT/GET-FRAME-OFFSET-A) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getFrameOffsetB__SWIG_0"
               SLIDER-CONSTRAINT/GET-FRAME-OFFSET-B) :pointer  (self :pointer))
#+ (or) (progn 
               (defcfun ("_wrap_btSliderConstraint_getFrameOffsetA__SWIG_1"
                              SLIDER-CONSTRAINT/GET-FRAME-OFFSET-A) :pointer
                 (self :pointer))
               
               (defcfun ("_wrap_btSliderConstraint_getFrameOffsetB__SWIG_1"
                              SLIDER-CONSTRAINT/GET-FRAME-OFFSET-B) :pointer  (self :pointer)))



(defcfun ("_wrap_btSliderConstraint_getLowerLinLimit"
               SLIDER-CONSTRAINT/GET-LOWER-LIN-LIMIT) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setLowerLinLimit"
               SLIDER-CONSTRAINT/SET-LOWER-LIN-LIMIT) :void
  (self :pointer)
  (lower-Limit :float))



(defcfun ("_wrap_btSliderConstraint_getUpperLinLimit"
               SLIDER-CONSTRAINT/GET-UPPER-LIN-LIMIT) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUpperLinLimit"
               SLIDER-CONSTRAINT/SET-UPPER-LIN-LIMIT) :void
  (self :pointer)
  (upperLimit :float))



(defcfun ("_wrap_btSliderConstraint_getLowerAngLimit"
               SLIDER-CONSTRAINT/GET-LOWER-ANG-LIMIT) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setLowerAngLimit"
               SLIDER-CONSTRAINT/SET-LOWER-ANG-LIMIT) :void
  (self :pointer)
  (lowerLimit :float))



(defcfun ("_wrap_btSliderConstraint_getUpperAngLimit"
               SLIDER-CONSTRAINT/GET-UPPER-ANG-LIMIT) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUpperAngLimit"
               SLIDER-CONSTRAINT/SET-UPPER-ANG-LIMIT) :void
  (self :pointer)
  (upperLimit :float))



(defcfun ("_wrap_btSliderConstraint_getUseLinearReferenceFrameA"
               SLIDER-CONSTRAINT/GET-USE-LINEAR-REFERENCE-FRAME-A) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessDirLin"
               SLIDER-CONSTRAINT/GET-SOFTNESS-DIR-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionDirLin"
               SLIDER-CONSTRAINT/GET-RESTITUTION-DIR-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingDirLin"
               SLIDER-CONSTRAINT/GET-DAMPING-DIR-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessDirAng"
               SLIDER-CONSTRAINT/GET-SOFTNESS-DIR-ANG) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionDirAng"
               SLIDER-CONSTRAINT/GET-RESTITUTION-DIR-ANG) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingDirAng"
               SLIDER-CONSTRAINT/GET-DAMPING-DIR-ANG) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessLimLin"
               SLIDER-CONSTRAINT/GET-SOFTNESS-LIM-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionLimLin"
               SLIDER-CONSTRAINT/GET-RESTITUTION-LIM-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingLimLin"
               SLIDER-CONSTRAINT/GET-DAMPING-LIM-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessLimAng"
               SLIDER-CONSTRAINT/GET-SOFTNESS-LIM-ANG) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionLimAng"
               SLIDER-CONSTRAINT/GET-RESTITUTION-LIM-ANG) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingLimAng"
               SLIDER-CONSTRAINT/GET-DAMPING-LIM-ANG) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessOrthoLin"
               SLIDER-CONSTRAINT/GET-SOFTNESS-ORTHO-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionOrthoLin"
               SLIDER-CONSTRAINT/GET-RESTITUTION-ORTHO-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingOrthoLin"
               SLIDER-CONSTRAINT/GET-DAMPING-ORTHO-LIN) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessOrthoAng"
               SLIDER-CONSTRAINT/GET-SOFTNESS-ORTHO-ANG) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionOrthoAng"
               SLIDER-CONSTRAINT/GET-RESTITUTION-ORTHO-ANG) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingOrthoAng"
               SLIDER-CONSTRAINT/GET-DAMPING-ORTHO-ANG) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setSoftnessDirLin"
               SLIDER-CONSTRAINT/SET-SOFTNESS-DIR-LIN) :void
  (self :pointer)
  (softnessDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionDirLin"
               SLIDER-CONSTRAINT/SET-RESTITUTION-DIR-LIN) :void
  (self :pointer)
  (restitutionDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingDirLin"
               SLIDER-CONSTRAINT/SET-DAMPING-DIR-LIN) :void
  (self :pointer)
  (dampingDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessDirAng"
               SLIDER-CONSTRAINT/SET-SOFTNESS-DIR-ANG) :void
  (self :pointer)
  (softnessDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionDirAng"
               SLIDER-CONSTRAINT/SET-RESTITUTION-DIR-ANG) :void
  (self :pointer)
  (restitutionDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingDirAng"
               SLIDER-CONSTRAINT/SET-DAMPING-DIR-ANG) :void
  (self :pointer)
  (dampingDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessLimLin"
               SLIDER-CONSTRAINT/SET-SOFTNESS-LIM-LIN) :void
  (self :pointer)
  (softnessLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionLimLin"
               SLIDER-CONSTRAINT/SET-RESTITUTION-LIM-LIN) :void
  (self :pointer)
  (restitutionLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingLimLin"
               SLIDER-CONSTRAINT/SET-DAMPING-LIM-LIN) :void
  (self :pointer)
  (dampingLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessLimAng"
               SLIDER-CONSTRAINT/SET-SOFTNESS-LIM-ANG) :void
  (self :pointer)
  (softnessLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionLimAng"
               SLIDER-CONSTRAINT/SET-RESTITUTION-LIM-ANG) :void
  (self :pointer)
  (restitutionLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingLimAng"
               SLIDER-CONSTRAINT/SET-DAMPING-LIM-ANG) :void
  (self :pointer)
  (dampingLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessOrthoLin"
               SLIDER-CONSTRAINT/SET-SOFTNESS-ORTHO-LIN) :void
  (self :pointer)
  (softnessOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionOrthoLin"
               SLIDER-CONSTRAINT/SET-RESTITUTION-ORTHO-LIN) :void
  (self :pointer)
  (restitutionOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingOrthoLin"
               SLIDER-CONSTRAINT/SET-DAMPING-ORTHO-LIN) :void
  (self :pointer)
  (dampingOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessOrthoAng"
               SLIDER-CONSTRAINT/SET-SOFTNESS-ORTHO-ANG) :void
  (self :pointer)
  (softnessOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionOrthoAng"
               SLIDER-CONSTRAINT/SET-RESTITUTION-ORTHO-ANG) :void
  (self :pointer)
  (restitutionOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingOrthoAng"
               SLIDER-CONSTRAINT/SET-DAMPING-ORTHO-ANG) :void
  (self :pointer)
  (dampingOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setPoweredLinMotor"
               SLIDER-CONSTRAINT/SET-POWERED-LIN-MOTOR) :void
  (self :pointer)
  (onOff :pointer))



(defcfun ("_wrap_btSliderConstraint_getPoweredLinMotor"
               SLIDER-CONSTRAINT/GET-POWERED-LIN-MOTOR) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setTargetLinMotorVelocity"
               SLIDER-CONSTRAINT/SET-TARGET-LIN-MOTOR-VELOCITY) :void
  (self :pointer)
  (targetLinMotorVelocity :float))



(defcfun ("_wrap_btSliderConstraint_getTargetLinMotorVelocity"
               SLIDER-CONSTRAINT/GET-TARGET-LIN-MOTOR-VELOCITY) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setMaxLinMotorForce"
               SLIDER-CONSTRAINT/SET-MAX-LIN-MOTOR-FORCE) :void
  (self :pointer)
  (maxLinMotorForce :float))



(defcfun ("_wrap_btSliderConstraint_getMaxLinMotorForce"
               SLIDER-CONSTRAINT/GET-MAX-LIN-MOTOR-FORCE) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setPoweredAngMotor"
               SLIDER-CONSTRAINT/SET-POWERED-ANG-MOTOR) :void
  (self :pointer)
  (onOff :pointer))



(defcfun ("_wrap_btSliderConstraint_getPoweredAngMotor"
               SLIDER-CONSTRAINT/GET-POWERED-ANG-MOTOR) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setTargetAngMotorVelocity"
               SLIDER-CONSTRAINT/SET-TARGET-ANG-MOTOR-VELOCITY) :void
  (self :pointer)
  (targetAngMotorVelocity :float))



(defcfun ("_wrap_btSliderConstraint_getTargetAngMotorVelocity"
               SLIDER-CONSTRAINT/GET-TARGET-ANG-MOTOR-VELOCITY) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setMaxAngMotorForce"
               SLIDER-CONSTRAINT/SET-MAX-ANG-MOTOR-FORCE) :void
  (self :pointer)
  (maxAngMotorForce :float))



(defcfun ("_wrap_btSliderConstraint_getMaxAngMotorForce"
               SLIDER-CONSTRAINT/GET-MAX-ANG-MOTOR-FORCE) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getLinearPos"
               SLIDER-CONSTRAINT/GET-LINEAR-POS) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAngularPos"
               SLIDER-CONSTRAINT/GET-ANGULAR-POS) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSolveLinLimit"
               SLIDER-CONSTRAINT/GET-SOLVE-LIN-LIMIT) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getLinDepth"
               SLIDER-CONSTRAINT/GET-LIN-DEPTH) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSolveAngLimit"
               SLIDER-CONSTRAINT/GET-SOLVE-ANG-LIMIT) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAngDepth"
               SLIDER-CONSTRAINT/GET-ANG-DEPTH) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_calculateTransforms"
               SLIDER-CONSTRAINT/CALCULATE-TRANSFORMS) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer))



(defcfun ("_wrap_btSliderConstraint_testLinLimits"
               SLIDER-CONSTRAINT/TEST-LIN-LIMITS) :void  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_testAngLimits"
               SLIDER-CONSTRAINT/TEST-ANG-LIMITS) :void
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAncorInA"
               SLIDER-CONSTRAINT/GET-ANCOR-IN-A) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAncorInB"
               SLIDER-CONSTRAINT/GET-ANCOR-IN-B) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getUseFrameOffset"
               SLIDER-CONSTRAINT/GET-USE-FRAME-OFFSET) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUseFrameOffset"
               SLIDER-CONSTRAINT/SET-USE-FRAME-OFFSET) :void
  (self :pointer)
  (frameOffsetOnOff :pointer))



(defcfun ("_wrap_btSliderConstraint_setFrames"
               SLIDER-CONSTRAINT/SET-FRAMES) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))



(defcfun ("_wrap_btSliderConstraint_calculateSerializeBufferSize"
               SLIDER-CONSTRAINT/CALCULATE-SERIALIZE-BUFFER-SIZE) :int  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_serialize"
               SLIDER-CONSTRAINT/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btSliderConstraint"
               DELETE/BT-SLIDER-CONSTRAINT) :void
  (self :pointer))






(define-constant +GENERIC-6-DOF-SPRING-CONSTRAINT-DATA-NAME+ "btGeneric6DofSpringConstraintData"
  :test 'equal)



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusPlusInstance__SWIG_0"
               GENERIC-6-DOF-SPRING-CONSTRAINT/MAKE-c++-INSTANCE) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusPlusInstance__SWIG_0"
               GENERIC-6-DOF-SPRING-CONSTRAINT/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusPlusInstance__SWIG_1"
               GENERIC-6-DOF-SPRING-CONSTRAINT/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusPlusInstance__SWIG_1"
               GENERIC-6-DOF-SPRING-CONSTRAINT/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusArray__SWIG_0"
               GENERIC-6-DOF-SPRING-CONSTRAINT/MAKE-c++-ARRAY) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusArray__SWIG_0"
               GENERIC-6-DOF-SPRING-CONSTRAINT/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusArray__SWIG_1"
               GENERIC-6-DOF-SPRING-CONSTRAINT/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusArray__SWIG_1"
               GENERIC-6-DOF-SPRING-CONSTRAINT/DELETE-c++-ARRAY/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btGeneric6DofSpringConstraint__SWIG_0"
               MAKE-GENERIC-6-DOF-SPRING-CONSTRAINT/with-a&b&use-a) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (frameInA :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_new_btGeneric6DofSpringConstraint__SWIG_1"
               MAKE-GENERIC-6-DOF-SPRING-CONSTRAINT/with-rb-b&frame-in-b/using-linear-reference-frame-b)
    :pointer
  (rbB :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameB :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_enableSpring"
               GENERIC-6-DOF-SPRING-CONSTRAINT/ENABLE-SPRING) :void
  (self :pointer)
  (index :int)
  (onOff :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setStiffness"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-STIFFNESS) :void
  (self :pointer)
  (index :int)
  (stiffness :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setDamping"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-DAMPING) :void
  (self :pointer)
  (index :int)
  (damping :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_0"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-EQUILIBRIUM-POINT) :void
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_1"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-EQUILIBRIUM-POINT/with-index) :void
  (self :pointer)
  (index :int))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_2"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-EQUILIBRIUM-POINT/with-index&float)
    :void
  (self :pointer)
  (index :int)
  (val :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setAxis"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SET-AXIS) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_getInfo2"
               GENERIC-6-DOF-SPRING-CONSTRAINT/GET-INFO-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_calculateSerializeBufferSize"
               GENERIC-6-DOF-SPRING-CONSTRAINT/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_serialize"
               GENERIC-6-DOF-SPRING-CONSTRAINT/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btGeneric6DofSpringConstraint"
               DELETE/BT-GENERIC-6-DOF-SPRING-CONSTRAINT) :void
  (self :pointer))






(defcfun ("_wrap_btUniversalConstraint_makeCPlusPlusInstance__SWIG_0"
               UNIVERSAL-CONSTRAINT/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusPlusInstance__SWIG_0"
               UNIVERSAL-CONSTRAINT/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusPlusInstance__SWIG_1"
               UNIVERSAL-CONSTRAINT/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusPlusInstance__SWIG_1"
               UNIVERSAL-CONSTRAINT/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusArray__SWIG_0"
               UNIVERSAL-CONSTRAINT/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusArray__SWIG_0"
               UNIVERSAL-CONSTRAINT/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusArray__SWIG_1"
               UNIVERSAL-CONSTRAINT/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusArray__SWIG_1"
               UNIVERSAL-CONSTRAINT/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btUniversalConstraint"
               MAKE-UNIVERSAL-CONSTRAINT) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (anchor :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAnchor"
               UNIVERSAL-CONSTRAINT/GET-ANCHOR) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAnchor2"
               UNIVERSAL-CONSTRAINT/GET-ANCHOR-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAxis1"
               UNIVERSAL-CONSTRAINT/GET-AXIS-1) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAxis2"
               UNIVERSAL-CONSTRAINT/GET-AXIS-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAngle1"
               UNIVERSAL-CONSTRAINT/GET-ANGLE-1) :float
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAngle2"
               UNIVERSAL-CONSTRAINT/GET-ANGLE-2) :float  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_setUpperLimit"
               UNIVERSAL-CONSTRAINT/SET-UPPER-LIMIT) :void
  (self :pointer)  (ang1max :float)
  (ang2max :float))



(defcfun ("_wrap_btUniversalConstraint_setLowerLimit"
               UNIVERSAL-CONSTRAINT/SET-LOWER-LIMIT) :void
  (self :pointer) (ang1min :float)
  (ang2min :float))



(defcfun ("_wrap_btUniversalConstraint_setAxis"
               UNIVERSAL-CONSTRAINT/SET-AXIS) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_delete_btUniversalConstraint"
               DELETE/BT-UNIVERSAL-CONSTRAINT) :void  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusPlusInstance__SWIG_0"
               HINGE-2-CONSTRAINT/MAKE-c++-INSTANCE) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusPlusInstance__SWIG_0"
               HINGE-2-CONSTRAINT/DELETE-c++-INSTANCE) :void
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusPlusInstance__SWIG_1"
               HINGE-2-CONSTRAINT/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusPlusInstance__SWIG_1"
               HINGE-2-CONSTRAINT/DELETE-c++-INSTANCE/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusArray__SWIG_0"
               HINGE-2-CONSTRAINT/MAKE-c++-ARRAY) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusArray__SWIG_0"
               HINGE-2-CONSTRAINT/DELETE-c++-ARRAY) :void
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusArray__SWIG_1"
               HINGE-2-CONSTRAINT/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusArray__SWIG_1"
               HINGE-2-CONSTRAINT/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btHinge2Constraint"
               MAKE-HINGE-2-CONSTRAINT) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (anchor :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAnchor"
               HINGE-2-CONSTRAINT/GET-ANCHOR) :pointer  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAnchor2"
               HINGE-2-CONSTRAINT/GET-ANCHOR-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAxis1"
               HINGE-2-CONSTRAINT/GET-AXIS-1) :pointer  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAxis2"
               HINGE-2-CONSTRAINT/GET-AXIS-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAngle1"
               HINGE-2-CONSTRAINT/GET-ANGLE-1) :float
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAngle2"
               HINGE-2-CONSTRAINT/GET-ANGLE-2) :float
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_setUpperLimit"
               HINGE-2-CONSTRAINT/SET-UPPER-LIMIT) :void
  (self :pointer)  (ang1max :float))



(defcfun ("_wrap_btHinge2Constraint_setLowerLimit"
               HINGE-2-CONSTRAINT/SET-LOWER-LIMIT) :void
  (self :pointer)(ang1min :float))



(defcfun ("_wrap_delete_btHinge2Constraint"
               DELETE/BT-HINGE-2-CONSTRAINT) :void
  (self :pointer))

(define-constant +GEAR-CONSTRAINT-DATA-NAME+ "btGearConstraintFloatData"
  :test 'equal)



(defcfun ("_wrap_new_btGearConstraint__SWIG_0"
               MAKE-GEAR-CONSTRAINT/with-ratio) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (axisInA :pointer)
  (axisInB :pointer)
  (ratio :float))



(defcfun ("_wrap_new_btGearConstraint__SWIG_1"
               make-gear-constraint) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (axisInA :pointer)
  (axisInB :pointer))



(defcfun ("_wrap_delete_btGearConstraint"
               DELETE/BT-GEAR-CONSTRAINT) :void  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getInfo1"
               GEAR-CONSTRAINT/GET-INFO-1) :void
  (self :pointer)(info :pointer))



(defcfun ("_wrap_btGearConstraint_getInfo2"
               GEAR-CONSTRAINT/GET-INFO-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGearConstraint_setAxisA"
               GEAR-CONSTRAINT/SET-AXIS-A) :void
  (self :pointer)
  (axisA :pointer))



(defcfun ("_wrap_btGearConstraint_setAxisB"
               GEAR-CONSTRAINT/SET-AXIS-B) :void
  (self :pointer)
  (axisB :pointer))



(defcfun ("_wrap_btGearConstraint_setRatio"
               GEAR-CONSTRAINT/SET-RATIO) :void
  (self :pointer)
  (ratio :float))



(defcfun ("_wrap_btGearConstraint_getAxisA"
               GEAR-CONSTRAINT/GET-AXIS-A) :pointer  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getAxisB"
               GEAR-CONSTRAINT/GET-AXIS-B) :pointer  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getRatio"
               GEAR-CONSTRAINT/GET-RATIO) :float  (self :pointer))



(defcfun ("_wrap_btGearConstraint_calculateSerializeBufferSize"
               GEAR-CONSTRAINT/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))



(defcfun ("_wrap_btGearConstraint_serialize"
               GEAR-CONSTRAINT/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))








(defcfun ("_wrap_delete_btFixedConstraint"
               DELETE/BT-FIXED-CONSTRAINT) :void  (self :pointer))



(defcfun ("_wrap_btFixedConstraint_getInfo1"
               FIXED-CONSTRAINT/GET-INFO-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btFixedConstraint_getInfo2"
               FIXED-CONSTRAINT/GET-INFO-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusPlusInstance__SWIG_0"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusPlusInstance__SWIG_0"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/DELETE-c++-INSTANCE) :void
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusPlusInstance__SWIG_1"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusPlusInstance__SWIG_1"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/DELETE-c++-INSTANCE/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusArray__SWIG_0"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusArray__SWIG_0"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/DELETE-c++-ARRAY) :void
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusArray__SWIG_1"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusArray__SWIG_1"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/DELETE-c++-ARRAY/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btSequentialImpulseConstraintSolver"
               MAKE-SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER) :pointer)



(defcfun ("_wrap_delete_btSequentialImpulseConstraintSolver"
               DELETE/BT-SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER) :void  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_solveGroup"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/SOLVE-GROUP) :float
  (self :pointer)
  (bodies :pointer)
  (numBodies :int)
  (manifold :pointer)
  (numManifolds :int)
  (constraints :pointer)
  (numConstraints :int)
  (info :pointer)
  (debugDrawer :pointer)
  (dispatcher :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_reset"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/RESET) :void  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_btRand2"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/BT-RAND-2) :unsigned-long  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_btRandInt2"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/BT-RAND-INT-2) :int
  (self :pointer)
  (n :int))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_setRandSeed"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/SET-RAND-SEED) :void
  (self :pointer)
  (seed :unsigned-long))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_getRandSeed"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/GET-RAND-SEED) :unsigned-long
  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_getSolverType"
               SEQUENTIAL-IMPULSE-CONSTRAINT-SOLVER/GET-SOLVER-TYPE) :pointer
  (self :pointer))


(defmethod initialize-instance :after ((obj TRANSFORM) &key (b nil b?) (c nil c?) (q nil q?)
                                                         (other nil other?))
  (setf (slot-value obj 'ff-pointer)
        (cond
          ((and (not b?) (not c?) (not q?)
                (not other?))                (MAKE-TRANSFORM/naked))
          ((and q? c? (not b?)
                (not other?))                (MAKE-TRANSFORM/with-q&c q c))
          ((and q? (not b?) (not c?)
                (not other?))                (MAKE-TRANSFORM/with-q q))
          ((and (not q?) b? c?
                (not other?))                (MAKE-TRANSFORM/with-b&c b c))
          ((and b? (not q?) (not c?)
                (not other?))                (MAKE-TRANSFORM/with-b b))
          ((and (not b?) (not q?) (not c?)
                other?)                      (MAKE-TRANSFORM/with-other other))
          (t (error "Transform constructor requires different argument set")))))

(defmethod (setf ncopy) ( (other TRANSFORM) (self TRANSFORM))
  (TRANSFORM/ASSIGN-VALUE (ff-pointer self) (ff-pointer other)))

(defmethod transform* ((self TRANSFORM) (t1 TRANSFORM) &optional t2)
  (check-type t2 transform)
  (TRANSFORM/MULT (ff-pointer self) (ff-pointer t1) (ff-pointer t2)))

(defmethod apply-transform ((self TRANSFORM) (x VECTOR3))
  (TRANSFORM///FUNCALL// (ff-pointer self) x))

(defmethod transform* ((self TRANSFORM) (x VECTOR3) &optional _)
  (declare (ignore _))
  (TRANSFORM/MULTIPLY (ff-pointer self) x))

(defmethod transform* ((self TRANSFORM) (q QUATERNION) &optional _)
  (declare (ignore _))
  (TRANSFORM/MULTIPLY (ff-pointer self) q))

(defmethod BASIS ((self TRANSFORM))
  (TRANSFORM/GET-BASIS (ff-pointer self)))

(defmethod ORIGIN ((self TRANSFORM))
  (TRANSFORM/GET-ORIGIN (ff-pointer self)))

(defmethod ROTATION ((self TRANSFORM))
  (TRANSFORM/GET-ROTATION (ff-pointer self)))

(defmethod (SETF FROM-OPENGL-MATRIX) ( m (self TRANSFORM))
  (TRANSFORM/SET-FROM-OPENGL-MATRIX (ff-pointer self) m))

(defmethod OPENGL-MATRIX-m ((self TRANSFORM) m)
  (TRANSFORM/GET-OPENGL-MATRIX (ff-pointer self) m))

(defmethod (SETF ORIGIN) ( (origin VECTOR3) (self TRANSFORM))
  (TRANSFORM/SET-ORIGIN (ff-pointer self) origin))

(defmethod INVERT-TRANSFORM ((self TRANSFORM) (inVec VECTOR3))
  (TRANSFORM/INV-XFORM (ff-pointer self) inVec))

(defmethod (SETF BASIS) ( (basis MATRIX-3X3) (self TRANSFORM))
  (TRANSFORM/SET-BASIS (ff-pointer self) basis))

(defmethod (SETF GET-ROTATION) ( (q QUATERNION) (self TRANSFORM))
  (TRANSFORM/SET-ROTATION (ff-pointer self) q))

(defmethod SET-IDENTITY ((self TRANSFORM))
  (TRANSFORM/SET-IDENTITY (ff-pointer self)))

(defmethod *f ((self TRANSFORM) (t-arg1 TRANSFORM))
  (TRANSFORM/MULTIPLY-AND-ASSIGN (ff-pointer self) (ff-pointer t-arg1)))

(defmethod INVERSE-TRANSFORM ((self TRANSFORM))
  (TRANSFORM/INVERSE (ff-pointer self)))

(defmethod INVERSE-TIMES ((self TRANSFORM) (t-arg1 TRANSFORM))
  (TRANSFORM/INVERSE-TIMES (ff-pointer self) (ff-pointer t-arg1)))

(defmethod transform* ((self TRANSFORM) (t-arg1 TRANSFORM) &optional _)
  (declare (ignore _))
  (TRANSFORM/MULTIPLY (ff-pointer self) (ff-pointer t-arg1)))

(defmethod ->serial ((self TRANSFORM) &key data-Out format &allow-other-keys)
  (ecase format
    (:default       (TRANSFORM/SERIALIZE (ff-pointer self) data-Out))
    (:single-float  (TRANSFORM/SERIALIZE-FLOAT (ff-pointer self) data-Out))))

(defmethod <-SERIAL ((self TRANSFORM) &key data-In format &allow-other-keys)
  (ecase format
    (:default       (TRANSFORM/DE-SERIALIZE (ff-pointer self) data-In))
    (:single-float  (TRANSFORM/DE-SERIALIZE-DOUBLE (ff-pointer self) data-In))
    (:double-float  (TRANSFORM/DE-SERIALIZE-FLOAT (ff-pointer self) data-In))))

(defmethod WORLD-TRANSFORM-PUSH ((self MOTION-STATE) (worldTrans TRANSFORM))
  (MOTION-STATE/GET-WORLD-TRANSFORM (ff-pointer self) worldTrans))

(defmethod (SETF WORLD-TRANSFORM) ((worldTrans TRANSFORM) (self MOTION-STATE))
  (MOTION-STATE/SET-WORLD-TRANSFORM (ff-pointer self) worldTrans))

(defmethod DEBUG-DRAW-OBJECT ((self COLLISION-WORLD) (worldTransform TRANSFORM)
                              shape (color VECTOR3))
  (COLLISION-WORLD/DEBUG-DRAW-OBJECT (ff-pointer self) worldTransform shape color))

(defmethod RAY-TEST ((self COLLISION-WORLD) (rayFromWorld VECTOR3) (rayToWorld VECTOR3) resultCallback
                     &optional _ __)
  (declare (ignore _ __))
  (COLLISION-WORLD/RAY-TEST (ff-pointer self) rayFromWorld rayToWorld resultCallback))
#+(or) (defmethod NEW~size ((self COLLISION-OBJECT) sizeInBytes)
         (COLLISION-OBJECT/MAKE-c++-INSTANCE (ff-pointer self) sizeInBytes))
#+(or) (defmethod DELETE ((self COLLISION-OBJECT) ptr)
         (COLLISION-OBJECT/DELETE-c++-INSTANCE (ff-pointer self) ptr))
#+(or) (defmethod NEW~arg1&ptr ((self COLLISION-OBJECT) arg1 ptr)
         (COLLISION-OBJECT/MAKE-c++-INSTANCE/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod DELETE ((self COLLISION-OBJECT) arg1 arg2)
         (COLLISION-OBJECT/DELETE-c++-INSTANCE/with-arg1&arg2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod NEW[] ((self COLLISION-OBJECT) sizeInBytes)
         (COLLISION-OBJECT/MAKE-c++-ARRAY (ff-pointer self) sizeInBytes))
#+(or) (defmethod DELETE[] ((self COLLISION-OBJECT) ptr)
         (COLLISION-OBJECT/DELETE-c++-ARRAY (ff-pointer self) ptr))
#+(or) (defmethod NEW[] ((self COLLISION-OBJECT) arg1 ptr)
         (COLLISION-OBJECT/MAKE-c++-ARRAY/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod DELETE[] ((self COLLISION-OBJECT) arg1 arg2)
         (COLLISION-OBJECT/DELETE-c++-ARRAY/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod (SETF ANISOTROPIC-FRICTION) ((friction cons) (self COLLISION-OBJECT) )
  (destructuring-bind (anisotropic-friction friction-mode) friction
    (check-type anisotropic-Friction VECTOR3)
    (check-type friction-mode (or null integer)))
  ;; TODO
  )


(defmethod (SETF WORLD-TRANSFORM) ( (worldTrans TRANSFORM) (self COLLISION-OBJECT)))

(defmethod (SETF INTERPOLATION-WORLD-TRANSFORM) ( (trans TRANSFORM) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self) trans))

(defmethod (SETF INTERPOLATION-LINEAR-VELOCITY) ( (linvel VECTOR3) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self) linvel ;trans
                                                      ))

(defmethod (SETF INTERPOLATION-ANGULAR-VELOCITY) ( (angvel VECTOR3) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self) angvel;trans
                                                      ))

