(in-package #:bullet-physics)



(defcfun ("_wrap_btTranslationalLimitMotor_m_limitSoftness_set"
          translational-limit-motor/limit-softness/set) :void
  (self :pointer)
  (m_limitSoftness :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_limitSoftness_get"
          translational-limit-motor/limit-softness/get) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_damping_set"
          translational-limit-motor/damping/set) :void
  (self :pointer)
  (m_damping :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_damping_get"
          translational-limit-motor/damping/get) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_restitution_set"
          translational-limit-motor/restitution/set) :void
  (self :pointer)
  (m_restitution :float))



(defcfun ("_wrap_btTranslationalLimitMotor_m_restitution_get"
          translational-limit-motor/restitution/get) :float
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_normalCFM_set"
          translational-limit-motor/normal-cfm/set) :void
  (self :pointer)
  (m_normalCFM :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_normalCFM_get"
          translational-limit-motor/normal-cfm/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopERP_set"
          translational-limit-motor/stop-erp/set) :void
  (self :pointer)
  (m_stopERP :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopERP_get"
          translational-limit-motor/stop-erp/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopCFM_set"
          translational-limit-motor/stop-cfm/set) :void
  (self :pointer)
  (m_stopCFM :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_stopCFM_get"
          translational-limit-motor/stop-cfm/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_enableMotor_set"
          translational-limit-motor/enable-motor/set) :void
  (self :pointer)
  (m_enableMotor :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_enableMotor_get"
          translational-limit-motor/enable-motor/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_targetVelocity_set"
          translational-limit-motor/target-velocity/set) :void
  (self :pointer)
  (m_targetVelocity :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_targetVelocity_get"
          translational-limit-motor/target-velocity/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_maxMotorForce_set"
          translational-limit-motor/max-motor-force/set) :void
  (self :pointer)
  (m_maxMotorForce :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_maxMotorForce_get"
          translational-limit-motor/max-motor-force/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimitError_set"
          translational-limit-motor/current-limit-error/set) :void
  (self :pointer)
  (m_currentLimitError :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimitError_get"
          translational-limit-motor/current-limit-error/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLinearDiff_set"
          translational-limit-motor/current-linear-diff/set) :void
  (self :pointer)
  (m_currentLinearDiff :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLinearDiff_get"
          translational-limit-motor/current-linear-diff/get) :pointer
  (self :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimit_set"
          translational-limit-motor/current-limit/set) :void
  (self :pointer)
  (m_currentLimit :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_m_currentLimit_get"
          translational-limit-motor/current-limit/get) :pointer
  (self :pointer))



(defcfun ("_wrap_new_btTranslationalLimitMotor__SWIG_0"
          make-translational-limit-motor) :pointer)



(defcfun ("_wrap_new_btTranslationalLimitMotor__SWIG_1"
          make-translational-limit-motor/with-other) :pointer
  (other :pointer))



(defcfun ("_wrap_btTranslationalLimitMotor_isLimited"
          translational-limit-motor/is-limited) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btTranslationalLimitMotor_needApplyForce"
          translational-limit-motor/need-apply-force) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btTranslationalLimitMotor_testLimitValue"
          translational-limit-motor/test-limit-value) :int
  (self :pointer)
  (limitIndex :int)
  (test_value :float))



(defcfun ("_wrap_btTranslationalLimitMotor_solveLinearAxis"
          translational-limit-motor/solve-linear-axis) :float
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
          delete/bt-translational-limit-motor) :void
  (self :pointer))

(cffi:defcenum 6-DOF-FLAGS
  (:6-DOF-FLAGS-CFM-NORM 1)
  (:6-DOF-FLAGS-CFM-STOP 2)
  (:6-DOF-FLAGS-ERP-STOP 4))

(define-constant +6-DOF-FLAGS-AXIS-SHIFT+ 3)



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusPlusInstance__SWIG_0"
          generic-6-dof-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusPlusInstance__SWIG_0"
          generic-6-dof-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusPlusInstance__SWIG_1"
          generic-6-dof-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusPlusInstance__SWIG_1"
          generic-6-dof-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusArray__SWIG_0"
          generic-6-dof-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusArray__SWIG_0"
          generic-6-dof-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_makeCPlusArray__SWIG_1"
          generic-6-dof-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_deleteCPlusArray__SWIG_1"
          generic-6-dof-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_m_useSolveConstraintObsolete_set"
          generic-6-dof-constraint/use-solve-constraint-obsolete/set) :void
  (self :pointer)
  (m_useSolveConstraintObsolete :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_m_useSolveConstraintObsolete_get"
          generic-6-dof-constraint/use-solve-constraint-obsolete/get) :pointer
  (self :pointer))



(defcfun ("_wrap_new_btGeneric6DofConstraint__SWIG_0"
          make-generic-6-dof-constraint) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (frameInA :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_new_btGeneric6DofConstraint__SWIG_1"
          make-generic-6-dof-constraint/with-linear-reference-frame-b) :pointer
  (rbB :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateTransforms__SWIG_0"
          generic-6-dof-constraint/calculate-transforms) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateTransforms__SWIG_1"
          generic-6-dof-constraint/calculate-transforms/naked) :void
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getCalculatedTransformA"
          generic-6-dof-constraint/get-calculated-transform-a) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getCalculatedTransformB"
          generic-6-dof-constraint/get-calculated-transform-b) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetA__SWIG_0"
          generic-6-dof-constraint/get-frame-offset-a) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetB__SWIG_0"
          generic-6-dof-constraint/get-frame-offset-b) :pointer
  (self :pointer))
#+ (or) (defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetA__SWIG_1"
                  generic-6-dof-constraint/get-frame-offset-a) :pointer
          (self :pointer))
#+ (or)
(defcfun ("_wrap_btGeneric6DofConstraint_getFrameOffsetB__SWIG_1"
          generic-6-dof-constraint/get-frame-offset-b) :pointer
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_buildJacobian"
          generic-6-dof-constraint/build-jacobian) :void  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo1"
          generic-6-dof-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo1NonVirtual"
          generic-6-dof-constraint/get-info-1-non-virtual) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo2"
          generic-6-dof-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getInfo2NonVirtual"
          generic-6-dof-constraint/get-info-2-non-virtual) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (angVelA :pointer)
  (angVelB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_updateRHS"
          generic-6-dof-constraint/update-rhs) :void
  (self :pointer)
  (timeStep :float))



(defcfun ("_wrap_btGeneric6DofConstraint_getAxis"
          generic-6-dof-constraint/get-axis) :pointer
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngle"
          generic-6-dof-constraint/get-angle) :float
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getRelativePivotPosition"
          generic-6-dof-constraint/get-relative-pivot-position) :float
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_setFrames"
          generic-6-dof-constraint/set-frames) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_testAngularLimitMotor"
          generic-6-dof-constraint/test-angular-limit-motor) :pointer
  (self :pointer)
  (axis_index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_setLinearLowerLimit"
          generic-6-dof-constraint/set-linear-lower-limit) :void
  (self :pointer)
  (linearLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getLinearLowerLimit"
          generic-6-dof-constraint/get-linear-lower-limit) :void
  (self :pointer)
  (linearLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setLinearUpperLimit"
          generic-6-dof-constraint/set-linear-upper-limit) :void
  (self :pointer)
  (linearUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getLinearUpperLimit"
          generic-6-dof-constraint/get-linear-upper-limit) :void
  (self :pointer)
  (linearUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAngularLowerLimit"
          generic-6-dof-constraint/set-angular-lower-limit) :void
  (self :pointer)
  (angularLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngularLowerLimit"
          generic-6-dof-constraint/get-angular-lower-limit) :void
  (self :pointer)
  (angularLower :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAngularUpperLimit"
          generic-6-dof-constraint/set-angular-upper-limit) :void
  (self :pointer)
  (angularUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getAngularUpperLimit"
          generic-6-dof-constraint/get-angular-upper-limit) :void
  (self :pointer)
  (angularUpper :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_getRotationalLimitMotor"
          generic-6-dof-constraint/get-rotational-limit-motor) :pointer
  (self :pointer)
  (index :int))



(defcfun ("_wrap_btGeneric6DofConstraint_getTranslationalLimitMotor"
          generic-6-dof-constraint/get-translational-limit-motor) :pointer  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setLimit"
          generic-6-dof-constraint/set-limit) :void
  (self :pointer)
  (axis :int)
  (lo :float)
  (hi :float))



(defcfun ("_wrap_btGeneric6DofConstraint_isLimited"
          generic-6-dof-constraint/is-limited) :pointer
  (self :pointer)
  (limitIndex :int))



(defcfun ("_wrap_btGeneric6DofConstraint_calcAnchorPos"
          generic-6-dof-constraint/calc-anchor-pos) :void  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_get_limit_motor_info2__SWIG_0"
          generic-6-dof-constraint/get-limit-motor-info-2) :int
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
          generic-6-dof-constraint/get-limit-motor-info-2*) :int
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
          generic-6-dof-constraint/get-use-frame-offset) :pointer  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setUseFrameOffset"
          generic-6-dof-constraint/set-use-frame-offset) :void
  (self :pointer)
  (frameOffsetOnOff :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_setAxis"
          generic-6-dof-constraint/set-axis) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_calculateSerializeBufferSize"
          generic-6-dof-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofConstraint_serialize"
          generic-6-dof-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btGeneric6DofConstraint"
          delete/bt-generic-6-dof-constraint) :void
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
          slider-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusPlusInstance__SWIG_0"
          slider-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusPlusInstance__SWIG_1"
          slider-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusPlusInstance__SWIG_1"
          slider-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusArray__SWIG_0"
          slider-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusArray__SWIG_0"
          slider-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_makeCPlusArray__SWIG_1"
          slider-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSliderConstraint_deleteCPlusArray__SWIG_1"
          slider-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btSliderConstraint__SWIG_0"
          make-slider-constraint) :pointer
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
          slider-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo1NonVirtual"
          slider-constraint/get-info-1-non-virtual) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo2"
          slider-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSliderConstraint_getInfo2NonVirtual"
          slider-constraint/get-info-2-non-virtual) :void
  (self :pointer)
  (info :pointer)
  (transA :pointer)
  (transB :pointer)
  (linVelA :pointer)
  (linVelB :pointer)
  (rbAinvMass :float)
  (rbBinvMass :float))



(defcfun ("_wrap_btSliderConstraint_getRigidBodyA"
          slider-constraint/get-rigid-body-a) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRigidBodyB"
          slider-constraint/get-rigid-body-b) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getCalculatedTransformA"
          slider-constraint/get-calculated-transform-a) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getCalculatedTransformB"
          slider-constraint/get-calculated-transform-b) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getFrameOffsetA__SWIG_0"
          slider-constraint/get-frame-offset-a) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getFrameOffsetB__SWIG_0"
          slider-constraint/get-frame-offset-b) :pointer  (self :pointer))
#+ (or) (defcfun ("_wrap_btSliderConstraint_getFrameOffsetA__SWIG_1"
                  slider-constraint/get-frame-offset-a) :pointer
          (self :pointer))
#+ (or)
(defcfun ("_wrap_btSliderConstraint_getFrameOffsetB__SWIG_1"
          slider-constraint/get-frame-offset-b) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getLowerLinLimit"
          slider-constraint/get-lower-lin-limit) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setLowerLinLimit"
          slider-constraint/set-lower-lin-limit) :void
  (self :pointer)
  (lower-Limit :float))



(defcfun ("_wrap_btSliderConstraint_getUpperLinLimit"
          slider-constraint/get-upper-lin-limit) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUpperLinLimit"
          slider-constraint/set-upper-lin-limit) :void
  (self :pointer)
  (upperLimit :float))



(defcfun ("_wrap_btSliderConstraint_getLowerAngLimit"
          slider-constraint/get-lower-ang-limit) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setLowerAngLimit"
          slider-constraint/set-lower-ang-limit) :void
  (self :pointer)
  (lowerLimit :float))



(defcfun ("_wrap_btSliderConstraint_getUpperAngLimit"
          slider-constraint/get-upper-ang-limit) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUpperAngLimit"
          slider-constraint/set-upper-ang-limit) :void
  (self :pointer)
  (upperLimit :float))



(defcfun ("_wrap_btSliderConstraint_getUseLinearReferenceFrameA"
          slider-constraint/get-use-linear-reference-frame-a) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessDirLin"
          slider-constraint/get-softness-dir-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionDirLin"
          slider-constraint/get-restitution-dir-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingDirLin"
          slider-constraint/get-damping-dir-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessDirAng"
          slider-constraint/get-softness-dir-ang) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionDirAng"
          slider-constraint/get-restitution-dir-ang) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingDirAng"
          slider-constraint/get-damping-dir-ang) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessLimLin"
          slider-constraint/get-softness-lim-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionLimLin"
          slider-constraint/get-restitution-lim-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingLimLin"
          slider-constraint/get-damping-lim-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessLimAng"
          slider-constraint/get-softness-lim-ang) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionLimAng"
          slider-constraint/get-restitution-lim-ang) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingLimAng"
          slider-constraint/get-damping-lim-ang) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessOrthoLin"
          slider-constraint/get-softness-ortho-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionOrthoLin"
          slider-constraint/get-restitution-ortho-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingOrthoLin"
          slider-constraint/get-damping-ortho-lin) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSoftnessOrthoAng"
          slider-constraint/get-softness-ortho-ang) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getRestitutionOrthoAng"
          slider-constraint/get-restitution-ortho-ang) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getDampingOrthoAng"
          slider-constraint/get-damping-ortho-ang) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setSoftnessDirLin"
          slider-constraint/set-softness-dir-lin) :void
  (self :pointer)
  (softnessDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionDirLin"
          slider-constraint/set-restitution-dir-lin) :void
  (self :pointer)
  (restitutionDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingDirLin"
          slider-constraint/set-damping-dir-lin) :void
  (self :pointer)
  (dampingDirLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessDirAng"
          slider-constraint/set-softness-dir-ang) :void
  (self :pointer)
  (softnessDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionDirAng"
          slider-constraint/set-restitution-dir-ang) :void
  (self :pointer)
  (restitutionDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingDirAng"
          slider-constraint/set-damping-dir-ang) :void
  (self :pointer)
  (dampingDirAng :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessLimLin"
          slider-constraint/set-softness-lim-lin) :void
  (self :pointer)
  (softnessLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionLimLin"
          slider-constraint/set-restitution-lim-lin) :void
  (self :pointer)
  (restitutionLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingLimLin"
          slider-constraint/set-damping-lim-lin) :void
  (self :pointer)
  (dampingLimLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessLimAng"
          slider-constraint/set-softness-lim-ang) :void
  (self :pointer)
  (softnessLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionLimAng"
          slider-constraint/set-restitution-lim-ang) :void
  (self :pointer)
  (restitutionLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingLimAng"
          slider-constraint/set-damping-lim-ang) :void
  (self :pointer)
  (dampingLimAng :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessOrthoLin"
          slider-constraint/set-softness-ortho-lin) :void
  (self :pointer)
  (softnessOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionOrthoLin"
          slider-constraint/set-restitution-ortho-lin) :void
  (self :pointer)
  (restitutionOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setDampingOrthoLin"
          slider-constraint/set-damping-ortho-lin) :void
  (self :pointer)
  (dampingOrthoLin :float))



(defcfun ("_wrap_btSliderConstraint_setSoftnessOrthoAng"
          slider-constraint/set-softness-ortho-ang) :void
  (self :pointer)
  (softnessOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setRestitutionOrthoAng"
          slider-constraint/set-restitution-ortho-ang) :void
  (self :pointer)
  (restitutionOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setDampingOrthoAng"
          slider-constraint/set-damping-ortho-ang) :void
  (self :pointer)
  (dampingOrthoAng :float))



(defcfun ("_wrap_btSliderConstraint_setPoweredLinMotor"
          slider-constraint/set-powered-lin-motor) :void
  (self :pointer)
  (onOff :pointer))



(defcfun ("_wrap_btSliderConstraint_getPoweredLinMotor"
          slider-constraint/get-powered-lin-motor) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setTargetLinMotorVelocity"
          slider-constraint/set-target-lin-motor-velocity) :void
  (self :pointer)
  (targetLinMotorVelocity :float))



(defcfun ("_wrap_btSliderConstraint_getTargetLinMotorVelocity"
          slider-constraint/get-target-lin-motor-velocity) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setMaxLinMotorForce"
          slider-constraint/set-max-lin-motor-force) :void
  (self :pointer)
  (maxLinMotorForce :float))



(defcfun ("_wrap_btSliderConstraint_getMaxLinMotorForce"
          slider-constraint/get-max-lin-motor-force) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setPoweredAngMotor"
          slider-constraint/set-powered-ang-motor) :void
  (self :pointer)
  (onOff :pointer))



(defcfun ("_wrap_btSliderConstraint_getPoweredAngMotor"
          slider-constraint/get-powered-ang-motor) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setTargetAngMotorVelocity"
          slider-constraint/set-target-ang-motor-velocity) :void
  (self :pointer)
  (targetAngMotorVelocity :float))



(defcfun ("_wrap_btSliderConstraint_getTargetAngMotorVelocity"
          slider-constraint/get-target-ang-motor-velocity) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setMaxAngMotorForce"
          slider-constraint/set-max-ang-motor-force) :void
  (self :pointer)
  (maxAngMotorForce :float))



(defcfun ("_wrap_btSliderConstraint_getMaxAngMotorForce"
          slider-constraint/get-max-ang-motor-force) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getLinearPos"
          slider-constraint/get-linear-pos) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAngularPos"
          slider-constraint/get-angular-pos) :float
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSolveLinLimit"
          slider-constraint/get-solve-lin-limit) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getLinDepth"
          slider-constraint/get-lin-depth) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getSolveAngLimit"
          slider-constraint/get-solve-ang-limit) :pointer
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAngDepth"
          slider-constraint/get-ang-depth) :float  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_calculateTransforms"
          slider-constraint/calculate-transforms) :void
  (self :pointer)
  (transA :pointer)
  (transB :pointer))



(defcfun ("_wrap_btSliderConstraint_testLinLimits"
          slider-constraint/test-lin-limits) :void  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_testAngLimits"
          slider-constraint/test-ang-limits) :void
  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAncorInA"
          slider-constraint/get-ancor-in-a) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getAncorInB"
          slider-constraint/get-ancor-in-b) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_getUseFrameOffset"
          slider-constraint/get-use-frame-offset) :pointer  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_setUseFrameOffset"
          slider-constraint/set-use-frame-offset) :void
  (self :pointer)
  (frameOffsetOnOff :pointer))



(defcfun ("_wrap_btSliderConstraint_setFrames"
          slider-constraint/set-frames) :void
  (self :pointer)
  (frameA :pointer)
  (frameB :pointer))



(defcfun ("_wrap_btSliderConstraint_calculateSerializeBufferSize"
          slider-constraint/calculate-serialize-buffer-size) :int  (self :pointer))



(defcfun ("_wrap_btSliderConstraint_serialize"
          slider-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btSliderConstraint"
          delete/bt-slider-constraint) :void
  (self :pointer))






(define-constant +GENERIC-6-DOF-SPRING-CONSTRAINT-DATA-NAME+ "btGeneric6DofSpringConstraintData"
  :test 'equal)



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusPlusInstance__SWIG_0"
          generic-6-dof-spring-constraint/make-c++-instance) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusPlusInstance__SWIG_0"
          generic-6-dof-spring-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusPlusInstance__SWIG_1"
          generic-6-dof-spring-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusPlusInstance__SWIG_1"
          generic-6-dof-spring-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusArray__SWIG_0"
          generic-6-dof-spring-constraint/make-c++-array) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusArray__SWIG_0"
          generic-6-dof-spring-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_makeCPlusArray__SWIG_1"
          generic-6-dof-spring-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_deleteCPlusArray__SWIG_1"
          generic-6-dof-spring-constraint/delete-c++-array/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btGeneric6DofSpringConstraint__SWIG_0"
          make-generic-6-dof-spring-constraint/with-a&b&use-a) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (frameInA :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameA :pointer))



(defcfun ("_wrap_new_btGeneric6DofSpringConstraint__SWIG_1"
          make-generic-6-dof-spring-constraint/with-rb-b&frame-in-b/using-linear-reference-frame-b)
    :pointer
  (rbB :pointer)
  (frameInB :pointer)
  (useLinearReferenceFrameB :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_enableSpring"
          generic-6-dof-spring-constraint/enable-spring) :void
  (self :pointer)
  (index :int)
  (onOff :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setStiffness"
          generic-6-dof-spring-constraint/set-stiffness) :void
  (self :pointer)
  (index :int)
  (stiffness :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setDamping"
          generic-6-dof-spring-constraint/set-damping) :void
  (self :pointer)
  (index :int)
  (damping :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_0"
          generic-6-dof-spring-constraint/set-equilibrium-point) :void
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_1"
          generic-6-dof-spring-constraint/set-equilibrium-point/with-index) :void
  (self :pointer)
  (index :int))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setEquilibriumPoint__SWIG_2"
          generic-6-dof-spring-constraint/set-equilibrium-point/with-index&float)
    :void
  (self :pointer)
  (index :int)
  (val :float))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_setAxis"
          generic-6-dof-spring-constraint/set-axis) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_getInfo2"
          generic-6-dof-spring-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_calculateSerializeBufferSize"
          generic-6-dof-spring-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))



(defcfun ("_wrap_btGeneric6DofSpringConstraint_serialize"
          generic-6-dof-spring-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))



(defcfun ("_wrap_delete_btGeneric6DofSpringConstraint"
          delete/bt-generic-6-dof-spring-constraint) :void
  (self :pointer))






(defcfun ("_wrap_btUniversalConstraint_makeCPlusPlusInstance__SWIG_0"
          universal-constraint/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusPlusInstance__SWIG_0"
          universal-constraint/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusPlusInstance__SWIG_1"
          universal-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusPlusInstance__SWIG_1"
          universal-constraint/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusArray__SWIG_0"
          universal-constraint/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusArray__SWIG_0"
          universal-constraint/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_makeCPlusArray__SWIG_1"
          universal-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btUniversalConstraint_deleteCPlusArray__SWIG_1"
          universal-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btUniversalConstraint"
          make-universal-constraint) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (anchor :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAnchor"
          universal-constraint/get-anchor) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAnchor2"
          universal-constraint/get-anchor-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAxis1"
          universal-constraint/get-axis-1) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAxis2"
          universal-constraint/get-axis-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAngle1"
          universal-constraint/get-angle-1) :float
  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_getAngle2"
          universal-constraint/get-angle-2) :float  (self :pointer))



(defcfun ("_wrap_btUniversalConstraint_setUpperLimit"
          universal-constraint/set-upper-limit) :void
  (self :pointer)  (ang1max :float)
  (ang2max :float))



(defcfun ("_wrap_btUniversalConstraint_setLowerLimit"
          universal-constraint/set-lower-limit) :void
  (self :pointer) (ang1min :float)
  (ang2min :float))



(defcfun ("_wrap_btUniversalConstraint_setAxis"
          universal-constraint/set-axis) :void
  (self :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_delete_btUniversalConstraint"
          delete/bt-universal-constraint) :void  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusPlusInstance__SWIG_0"
          hinge-2-constraint/make-c++-instance) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusPlusInstance__SWIG_0"
          hinge-2-constraint/delete-c++-instance) :void
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusPlusInstance__SWIG_1"
          hinge-2-constraint/make-c++-instance/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusPlusInstance__SWIG_1"
          hinge-2-constraint/delete-c++-instance/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusArray__SWIG_0"
          hinge-2-constraint/make-c++-array) :pointer
  (sizeInBytes :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusArray__SWIG_0"
          hinge-2-constraint/delete-c++-array) :void
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_makeCPlusArray__SWIG_1"
          hinge-2-constraint/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btHinge2Constraint_deleteCPlusArray__SWIG_1"
          hinge-2-constraint/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btHinge2Constraint"
          make-hinge-2-constraint) :pointer
  (rbA :pointer)
  (rbB :pointer)
  (anchor :pointer)
  (axis1 :pointer)
  (axis2 :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAnchor"
          hinge-2-constraint/get-anchor) :pointer  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAnchor2"
          hinge-2-constraint/get-anchor-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAxis1"
          hinge-2-constraint/get-axis-1) :pointer  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAxis2"
          hinge-2-constraint/get-axis-2) :pointer
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAngle1"
          hinge-2-constraint/get-angle-1) :float
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_getAngle2"
          hinge-2-constraint/get-angle-2) :float
  (self :pointer))



(defcfun ("_wrap_btHinge2Constraint_setUpperLimit"
          hinge-2-constraint/set-upper-limit) :void
  (self :pointer)  (ang1max :float))



(defcfun ("_wrap_btHinge2Constraint_setLowerLimit"
          hinge-2-constraint/set-lower-limit) :void
  (self :pointer)(ang1min :float))



(defcfun ("_wrap_delete_btHinge2Constraint"
          delete/bt-hinge-2-constraint) :void
  (self :pointer))

(define-constant +GEAR-CONSTRAINT-DATA-NAME+ "btGearConstraintFloatData"
  :test 'equal)



(defcfun ("_wrap_new_btGearConstraint__SWIG_0"
          make-gear-constraint/with-ratio) :pointer
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
          delete/bt-gear-constraint) :void  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getInfo1"
          gear-constraint/get-info-1) :void
  (self :pointer)(info :pointer))



(defcfun ("_wrap_btGearConstraint_getInfo2"
          gear-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btGearConstraint_setAxisA"
          gear-constraint/set-axis-a) :void
  (self :pointer)
  (axisA :pointer))



(defcfun ("_wrap_btGearConstraint_setAxisB"
          gear-constraint/set-axis-b) :void
  (self :pointer)
  (axisB :pointer))



(defcfun ("_wrap_btGearConstraint_setRatio"
          gear-constraint/set-ratio) :void
  (self :pointer)
  (ratio :float))



(defcfun ("_wrap_btGearConstraint_getAxisA"
          gear-constraint/get-axis-a) :pointer  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getAxisB"
          gear-constraint/get-axis-b) :pointer  (self :pointer))



(defcfun ("_wrap_btGearConstraint_getRatio"
          gear-constraint/get-ratio) :float  (self :pointer))



(defcfun ("_wrap_btGearConstraint_calculateSerializeBufferSize"
          gear-constraint/calculate-serialize-buffer-size) :int
  (self :pointer))



(defcfun ("_wrap_btGearConstraint_serialize"
          gear-constraint/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))








(defcfun ("_wrap_delete_btFixedConstraint"
          delete/bt-fixed-constraint) :void  (self :pointer))



(defcfun ("_wrap_btFixedConstraint_getInfo1"
          fixed-constraint/get-info-1) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btFixedConstraint_getInfo2"
          fixed-constraint/get-info-2) :void
  (self :pointer)
  (info :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusPlusInstance__SWIG_0"
          sequential-impulse-constraint-solver/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusPlusInstance__SWIG_0"
          sequential-impulse-constraint-solver/delete-c++-instance) :void
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusPlusInstance__SWIG_1"
          sequential-impulse-constraint-solver/make-c++-instance/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusPlusInstance__SWIG_1"
          sequential-impulse-constraint-solver/delete-c++-instance/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusArray__SWIG_0"
          sequential-impulse-constraint-solver/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusArray__SWIG_0"
          sequential-impulse-constraint-solver/delete-c++-array) :void
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_makeCPlusArray__SWIG_1"
          sequential-impulse-constraint-solver/make-c++-array/with-arg1&ptr) :pointer
  (arg1 :pointer)
  (ptr :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_deleteCPlusArray__SWIG_1"
          sequential-impulse-constraint-solver/delete-c++-array/with-arg1&2) :void
  (arg1 :pointer)
  (arg2 :pointer))



(defcfun ("_wrap_new_btSequentialImpulseConstraintSolver"
          make-sequential-impulse-constraint-solver) :pointer)



(defcfun ("_wrap_delete_btSequentialImpulseConstraintSolver"
          delete/bt-sequential-impulse-constraint-solver) :void  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_solveGroup"
          sequential-impulse-constraint-solver/solve-group) :float
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
          sequential-impulse-constraint-solver/reset) :void  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_btRand2"
          sequential-impulse-constraint-solver/bt-rand-2) :unsigned-long  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_btRandInt2"
          sequential-impulse-constraint-solver/bt-rand-int-2) :int
  (self :pointer)
  (n :int))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_setRandSeed"
          sequential-impulse-constraint-solver/set-rand-seed) :void
  (self :pointer)
  (seed :unsigned-long))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_getRandSeed"
          sequential-impulse-constraint-solver/get-rand-seed) :unsigned-long
  (self :pointer))



(defcfun ("_wrap_btSequentialImpulseConstraintSolver_getSolverType"
          sequential-impulse-constraint-solver/get-solver-type) :pointer
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

(defmethod (setf ncopy) ( (other transform) (self transform))
  (transform/assign-value (ff-pointer self) (ff-pointer other)))

(defmethod transform* ((self transform) (t1 transform) &optional t2)
  (check-type t2 transform)
  (transform/mult (ff-pointer self) (ff-pointer t1) (ff-pointer t2)))

(defmethod apply-transform ((self transform) (x vector3))
  (transform///funcall// (ff-pointer self) x))

(defmethod transform* ((self transform) (x vector3) &optional _)
  (declare (ignore _))
  (transform/multiply (ff-pointer self) x))

(defmethod transform* ((self transform) (q quaternion) &optional _)
  (declare (ignore _))
  (transform/multiply (ff-pointer self) q))

(defmethod basis ((self transform))
  (transform/get-basis (ff-pointer self)))

(defmethod origin ((self transform))
  (transform/get-origin (ff-pointer self)))

(defmethod rotation ((self transform))
  (transform/get-rotation (ff-pointer self)))

(defmethod (setf from-opengl-matrix) ( m (self transform))
  (transform/set-from-opengl-matrix (ff-pointer self) m))

(defmethod opengl-matrix-m ((self transform) m)
  (transform/get-opengl-matrix (ff-pointer self) m))

(defmethod (setf origin) ( (origin vector3) (self transform))
  (transform/set-origin (ff-pointer self) origin))

(defmethod invert-transform ((self transform) (invec vector3))
  (transform/inv-xform (ff-pointer self) invec))

(defmethod (setf basis) ( (basis matrix-3x3) (self transform))
  (transform/set-basis (ff-pointer self) basis))

(defmethod (setf get-rotation) ( (q quaternion) (self transform))
  (transform/set-rotation (ff-pointer self) q))

(defmethod set-identity ((self transform))
  (transform/set-identity (ff-pointer self)))

(defmethod *f ((self transform) (t-arg1 transform))
  (transform/multiply-and-assign (ff-pointer self) (ff-pointer t-arg1)))

(defmethod inverse-transform ((self transform))
  (transform/inverse (ff-pointer self)))

(defmethod inverse-times ((self transform) (t-arg1 transform))
  (transform/inverse-times (ff-pointer self) (ff-pointer t-arg1)))

(defmethod transform* ((self transform) (t-arg1 transform) &optional _)
  (declare (ignore _))
  (transform/multiply (ff-pointer self) (ff-pointer t-arg1)))

(defmethod ->serial ((self transform) &key data-out format &allow-other-keys)
  (ecase format
    (:default       (transform/serialize (ff-pointer self) data-out))
    (:single-float  (transform/serialize-float (ff-pointer self) data-out))))

(defmethod <-serial ((self transform) &key data-in format &allow-other-keys)
  (ecase format
    (:default       (transform/de-serialize (ff-pointer self) data-in))
    (:single-float  (transform/de-serialize-double (ff-pointer self) data-in))
    (:double-float  (transform/de-serialize-float (ff-pointer self) data-in))))

(defmethod world-transform-push ((self motion-state) (worldtrans transform))
  (motion-state/get-world-transform (ff-pointer self) worldtrans))

(defmethod (setf world-transform) ((worldtrans transform) (self motion-state))
  (motion-state/set-world-transform (ff-pointer self) worldtrans))

(defmethod debug-draw-object ((self collision-world) (worldtransform transform)
                              shape (color vector3))
  (collision-world/debug-draw-object (ff-pointer self) worldtransform shape color))

(defmethod ray-test ((self collision-world) (rayfromworld vector3) (raytoworld vector3) resultcallback
                     &optional _ __)
  (declare (ignore _ __))
  (collision-world/ray-test (ff-pointer self) rayfromworld raytoworld resultcallback))
#+(or) (defmethod new~size ((self collision-object) sizeinbytes)
         (collision-object/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete ((self collision-object) ptr)
         (collision-object/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new~arg1&ptr ((self collision-object) arg1 ptr)
         (collision-object/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete ((self collision-object) arg1 arg2)
         (collision-object/delete-c++-instance/with-arg1&arg2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self collision-object) sizeinbytes)
         (collision-object/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self collision-object) ptr)
         (collision-object/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self collision-object) arg1 ptr)
         (collision-object/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self collision-object) arg1 arg2)
         (collision-object/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod (setf anisotropic-friction) ((friction cons) (self collision-object) )
  (destructuring-bind (anisotropic-friction friction-mode) friction
    (check-type anisotropic-friction vector3)
    (check-type friction-mode (or null integer)))
  ;; todo
  )


(defmethod (setf world-transform) ( (worldtrans transform) (self collision-object)))

(defmethod (setf interpolation-world-transform) ( (trans transform) (self collision-object))
  (collision-object/set-interpolation-world-transform (ff-pointer self) trans))

(defmethod (setf interpolation-linear-velocity) ( (linvel vector3) (self collision-object))
  (collision-object/set-interpolation-world-transform (ff-pointer self) linvel ;trans
                                                      ))

(defmethod (setf interpolation-angular-velocity) ( (angvel vector3) (self collision-object))
  (collision-object/set-interpolation-world-transform (ff-pointer self) angvel;trans
                                                      ))


