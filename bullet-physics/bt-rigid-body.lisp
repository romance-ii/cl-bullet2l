(in-package :bullet-physics)

(define-constant +RIGID-BODY-DATA-NAME+ "btRigidBodyFloatData"
  :test 'equal)
(cffi:defcenum RIGID-BODY-FLAGS
  (:DISABLE-WORLD-GRAVITY 1)
  (:ENABLE-GYROPSCOPIC-FORCE 2))

(defcfun ("_wrap_new_btRigidBody__SWIG_0"
               MAKE-RIGID-BODY) :pointer
  (constructionInfo :pointer))

(defcfun ("_wrap_new_btRigidBody__SWIG_1"
               MAKE-RIGID-BODY/with-motion-state&collision-shape&local-inertia) :pointer
  (mass :float)
  (motionState :pointer)
  (collisionShape :pointer)
  (localInertia :pointer))

(defcfun ("_wrap_new_btRigidBody__SWIG_2"
               MAKE-RIGID-BODY/with-motion-state&collision-shape) :pointer
  (mass :float)
  (motionState :pointer)
  (collisionShape :pointer))

(defcfun ("_wrap_delete_btRigidBody"
               DELETE/BT-RIGID-BODY) :void
  (self :pointer))

(defcfun ("_wrap_btRigidBody_proceedToTransform"
               RIGID-BODY/PROCEED-TO-TRANSFORM) :void
  (self :pointer)
  (newTrans :pointer))

(defcfun ("_wrap_btRigidBody_upcast__SWIG_0"
               RIGID-BODY/UPCAST) :pointer
  (colObj :pointer))
#+ (or)
(defcfun ("_wrap_btRigidBody_upcast__SWIG_1"
               RIGID-BODY/UPCAST) :pointer
  (colObj :pointer))

(defcfun ("_wrap_btRigidBody_predictIntegratedTransform"
               RIGID-BODY/PREDICT-INTEGRATED-TRANSFORM) :void
  (self :pointer)
  (step :float)
  (predictedTransform :pointer))

(defcfun ("_wrap_btRigidBody_saveKinematicState"
               RIGID-BODY/SAVE-KINEMATIC-STATE) :void
  (self :pointer)
  (step :float))

(defcfun ("_wrap_btRigidBody_applyGravity"
               RIGID-BODY/APPLY-GRAVITY) :void
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setGravity"
               RIGID-BODY/SET-GRAVITY) :void
  (self :pointer)
  (acceleration :pointer))

(defcfun ("_wrap_btRigidBody_getGravity"
               RIGID-BODY/GET-GRAVITY) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setDamping"
               RIGID-BODY/SET-DAMPING) :void
  (self :pointer)
  (lin_damping :float)
  (ang_damping :float))

(defcfun ("_wrap_btRigidBody_getLinearDamping"
               RIGID-BODY/GET-LINEAR-DAMPING) :float
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getAngularDamping"
               RIGID-BODY/GET-ANGULAR-DAMPING) :float
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getLinearSleepingThreshold"
               RIGID-BODY/GET-LINEAR-SLEEPING-THRESHOLD) :float
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getAngularSleepingThreshold"
               RIGID-BODY/GET-ANGULAR-SLEEPING-THRESHOLD) :float
  (self :pointer))

(defcfun ("_wrap_btRigidBody_applyDamping"
               RIGID-BODY/APPLY-DAMPING) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btRigidBody_getCollisionShape__SWIG_0"
               RIGID-BODY/GET-COLLISION-SHAPE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btRigidBody_getCollisionShape__SWIG_1"
               RIGID-BODY/GET-COLLISION-SHAPE) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setMassProps"
               RIGID-BODY/SET-MASS-PROPS) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btRigidBody_getLinearFactor"
               RIGID-BODY/GET-LINEAR-FACTOR) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setLinearFactor"
               RIGID-BODY/SET-LINEAR-FACTOR) :void
  (self :pointer)
  (linearFactor :pointer))

(defcfun ("_wrap_btRigidBody_getInvMass"
               RIGID-BODY/GET-INV-MASS) :float
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getInvInertiaTensorWorld"
               RIGID-BODY/GET-INV-INERTIA-TENSOR-WORLD) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_integrateVelocities"
               RIGID-BODY/INTEGRATE-VELOCITIES) :void
  (self :pointer)
  (step :float))

(defcfun ("_wrap_btRigidBody_setCenterOfMassTransform"
               RIGID-BODY/SET-CENTER-OF-MASS-TRANSFORM) :void
  (self :pointer)
  (xform :pointer))

(defcfun ("_wrap_btRigidBody_applyCentralForce"
               RIGID-BODY/APPLY-CENTRAL-FORCE) :void
  (self :pointer)
  (force :pointer))

(defcfun ("_wrap_btRigidBody_getTotalForce"
               RIGID-BODY/GET-TOTAL-FORCE) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getTotalTorque"
               RIGID-BODY/GET-TOTAL-TORQUE) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getInvInertiaDiagLocal"
               RIGID-BODY/GET-INV-INERTIA-DIAG-LOCAL) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setInvInertiaDiagLocal"
               RIGID-BODY/SET-INV-INERTIA-DIAG-LOCAL) :void
  (self :pointer)
  (diagInvInertia :pointer))

(defcfun ("_wrap_btRigidBody_setSleepingThresholds"
               RIGID-BODY/SET-SLEEPING-THRESHOLDS) :void
  (self :pointer)
  (linear :float)
  (angular :float))

(defcfun ("_wrap_btRigidBody_applyTorque"
               RIGID-BODY/APPLY-TORQUE) :void
  (self :pointer)
  (torque :pointer))

(defcfun ("_wrap_btRigidBody_applyForce"
               RIGID-BODY/APPLY-FORCE) :void
  (self :pointer)
  (force :pointer)
  (rel_pos :pointer))

(defcfun ("_wrap_btRigidBody_applyCentralImpulse"
               RIGID-BODY/APPLY-CENTRAL-IMPULSE) :void
  (self :pointer)
  (impulse :pointer))

(defcfun ("_wrap_btRigidBody_applyTorqueImpulse"
               RIGID-BODY/APPLY-TORQUE-IMPULSE) :void
  (self :pointer)
  (torque :pointer))

(defcfun ("_wrap_btRigidBody_applyImpulse"
               RIGID-BODY/APPLY-IMPULSE) :void
  (self :pointer)
  (impulse :pointer)
  (rel_pos :pointer))

(defcfun ("_wrap_btRigidBody_clearForces"
               RIGID-BODY/CLEAR-FORCES) :void
  (self :pointer))

(defcfun ("_wrap_btRigidBody_updateInertiaTensor"
               RIGID-BODY/UPDATE-INERTIA-TENSOR) :void
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getCenterOfMassPosition"
               RIGID-BODY/GET-CENTER-OF-MASS-POSITION) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getOrientation"
               RIGID-BODY/GET-ORIENTATION) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getCenterOfMassTransform"
               RIGID-BODY/GET-CENTER-OF-MASS-TRANSFORM) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getLinearVelocity"
               RIGID-BODY/GET-LINEAR-VELOCITY) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getAngularVelocity"
               RIGID-BODY/GET-ANGULAR-VELOCITY) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setLinearVelocity"
               RIGID-BODY/SET-LINEAR-VELOCITY) :void
  (self :pointer)
  (lin_vel :pointer))

(defcfun ("_wrap_btRigidBody_setAngularVelocity"
               RIGID-BODY/SET-ANGULAR-VELOCITY) :void
  (self :pointer)
  (ang_vel :pointer))

(defcfun ("_wrap_btRigidBody_getVelocityInLocalPoint"
               RIGID-BODY/GET-VELOCITY-IN-LOCAL-POINT) :pointer
  (self :pointer)
  (rel_pos :pointer))

(defcfun ("_wrap_btRigidBody_translate"
               RIGID-BODY/TRANSLATE) :void
  (self :pointer)
  (v :pointer))

(defcfun ("_wrap_btRigidBody_getAabb"
               RIGID-BODY/GET-AABB) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btRigidBody_computeImpulseDenominator"
               RIGID-BODY/COMPUTE-IMPULSE-DENOMINATOR) :float
  (self :pointer)
  (pos :pointer)
  (normal :pointer))

(defcfun ("_wrap_btRigidBody_computeAngularImpulseDenominator"
               RIGID-BODY/COMPUTE-ANGULAR-IMPULSE-DENOMINATOR) :float
  (self :pointer)
  (axis :pointer))

(defcfun ("_wrap_btRigidBody_updateDeactivation"
               RIGID-BODY/UPDATE-DEACTIVATION) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btRigidBody_wantsSleeping"
               RIGID-BODY/WANTS-SLEEPING) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_getBroadphaseProxy__SWIG_0"
               RIGID-BODY/GET-BROADPHASE-PROXY) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btRigidBody_getBroadphaseProxy__SWIG_1"
               RIGID-BODY/GET-BROADPHASE-PROXY) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setNewBroadphaseProxy"
               RIGID-BODY/SET-NEW-BROADPHASE-PROXY) :void
  (self :pointer)
  (broadphaseProxy :pointer))

(defcfun ("_wrap_btRigidBody_getMotionState__SWIG_0"
               RIGID-BODY/GET-MOTION-STATE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btRigidBody_getMotionState__SWIG_1"
               RIGID-BODY/GET-MOTION-STATE) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setMotionState"
               RIGID-BODY/SET-MOTION-STATE) :void
  (self :pointer)
  (motionState :pointer))

(defcfun ("_wrap_btRigidBody_m_contactSolverType_set"
               RIGID-BODY/CONTACT-SOLVER-TYPE/SET) :void
  (self :pointer)
  (m_contactSolverType :int))

(defcfun ("_wrap_btRigidBody_m_contactSolverType_get"
               RIGID-BODY/CONTACT-SOLVER-TYPE/GET) :int
  (self :pointer))

(defcfun ("_wrap_btRigidBody_m_frictionSolverType_set"
               RIGID-BODY/FRICTION-SOLVER-TYPE/SET) :void
  (self :pointer)
  (m_frictionSolverType :int))

(defcfun ("_wrap_btRigidBody_m_frictionSolverType_get"
               RIGID-BODY/FRICTION-SOLVER-TYPE/GET) :int
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setAngularFactor__SWIG_0"
               RIGID-BODY/SET-ANGULAR-FACTOR/vector3) :void
  (self :pointer)
  (angFac :pointer))
(defcfun ("_wrap_btRigidBody_setAngularFactor__SWIG_1"
               RIGID-BODY/SET-ANGULAR-FACTOR/float) :void
  (self :pointer)
  (angFac :float))

(defcfun ("_wrap_btRigidBody_getAngularFactor"
               RIGID-BODY/GET-ANGULAR-FACTOR) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_isInWorld"
               RIGID-BODY/IS-IN-WORLD) :pointer
  (self :pointer))

(defcfun ("_wrap_btRigidBody_checkCollideWithOverride"
               RIGID-BODY/CHECK-COLLIDE-WITH-OVERRIDE) :pointer
  (self :pointer)
  (co :pointer))

(defcfun ("_wrap_btRigidBody_addConstraintRef"
               RIGID-BODY/ADD-CONSTRAINT-REF) :void
  (self :pointer)
  (c :pointer))

(defcfun ("_wrap_btRigidBody_removeConstraintRef"
               RIGID-BODY/REMOVE-CONSTRAINT-REF) :void
  (self :pointer)
  (c :pointer))

(defcfun ("_wrap_btRigidBody_getConstraintRef"
               RIGID-BODY/GET-CONSTRAINT-REF) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btRigidBody_getNumConstraintRefs"
               RIGID-BODY/GET-NUM-CONSTRAINT-REFS) :int
  (self :pointer))

(defcfun ("_wrap_btRigidBody_setFlags"
               RIGID-BODY/SET-FLAGS) :void
  (self :pointer)
  (flags :int))

(defcfun ("_wrap_btRigidBody_getFlags"
               RIGID-BODY/GET-FLAGS) :int
  (self :pointer))

(defcfun ("_wrap_btRigidBody_computeGyroscopicForce"
               RIGID-BODY/COMPUTE-GYROSCOPIC-FORCE) :pointer
  (self :pointer)
  (maxGyroscopicForce :float))

(defcfun ("_wrap_btRigidBody_calculateSerializeBufferSize"
               RIGID-BODY/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))

(defcfun ("_wrap_btRigidBody_serialize"
               RIGID-BODY/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_btRigidBody_serializeSingleObject"
               RIGID-BODY/SERIALIZE-SINGLE-OBJECT) :void
  (self :pointer)
  (serializer :pointer))


(defmethod initialize-instance :after ((obj RIGID-BODY) &key construction-info)
  (setf (slot-value obj 'ff-pointer) (MAKE-RIGID-BODY construction-info)))

(defmethod initialize-instance :after ((obj RIGID-BODY)
                                       &key construction-info
                                         mass motion-state collision-shape local-inertia)
  (setf (slot-value obj 'ff-pointer)
        (cond 
          ((and mass motion-state collision-shape local-inertia
                (not construction-info))
           (check-type mass number) 
           (check-type motion-State MOTION-STATE)
           (check-type local-Inertia VECTOR3)
           (MAKE-RIGID-BODY/with-motion-state&collision-shape&local-inertia
            mass motion-State collision-Shape local-Inertia))
          ((and construction-info
                (not (or mass motion-state collision-shape local-inertia)))
           ;; (check-type construction-info rigid-body-construction-info)
           (MAKE-RIGID-BODY construction-info)))))

(defmethod PROCEED-TO-TRANSFORM ((self RIGID-BODY) (newTrans TRANSFORM))
  (RIGID-BODY/PROCEED-TO-TRANSFORM (ff-pointer self) newTrans))

(defmethod PREDICT-INTEGRATED-TRANSFORM ((self RIGID-BODY) (step number)
                                         (predictedTransform TRANSFORM))
  (RIGID-BODY/PREDICT-INTEGRATED-TRANSFORM (ff-pointer self) step predictedTransform))

(defmethod SAVE-KINEMATIC-STATE ((self RIGID-BODY) (step number))
  (RIGID-BODY/SAVE-KINEMATIC-STATE (ff-pointer self) step))

(defmethod APPLY-GRAVITY ((self RIGID-BODY))
  (RIGID-BODY/APPLY-GRAVITY (ff-pointer self)))

(defmethod (SETF GRAVITY) ( (acceleration VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-GRAVITY (ff-pointer self) acceleration))

(defmethod GRAVITY ((self RIGID-BODY))
  (RIGID-BODY/GET-GRAVITY (ff-pointer self)))

(defmethod (SETF DAMPING) ((linear&angular cons)
                           (self RIGID-BODY))
  (destructuring-bind (linear angular) linear&angular
    (check-type linear number)
    (check-type angular number)
    (RIGID-BODY/SET-DAMPING (ff-pointer self) linear angular)))

(defmethod LINEAR-DAMPING ((self RIGID-BODY))
  (RIGID-BODY/GET-LINEAR-DAMPING (ff-pointer self)))

(defmethod ANGULAR-DAMPING ((self RIGID-BODY))
  (RIGID-BODY/GET-ANGULAR-DAMPING (ff-pointer self)))

(defmethod LINEAR-SLEEPING-THRESHOLD ((self RIGID-BODY))
  (RIGID-BODY/GET-LINEAR-SLEEPING-THRESHOLD (ff-pointer self)))

(defmethod ANGULAR-SLEEPING-THRESHOLD ((self RIGID-BODY))
  (RIGID-BODY/GET-ANGULAR-SLEEPING-THRESHOLD (ff-pointer self)))

(defmethod APPLY-DAMPING ((self RIGID-BODY) (time-step number))
  (RIGID-BODY/APPLY-DAMPING (ff-pointer self) time-step))

(defmethod COLLISION-SHAPE ((self RIGID-BODY))
  (RIGID-BODY/GET-COLLISION-SHAPE (ff-pointer self)))

(defmethod COLLISION-SHAPE ((self RIGID-BODY))
  (RIGID-BODY/GET-COLLISION-SHAPE (ff-pointer self)))

(defmethod (SETF MASS+INERTIA) ((mass&inertia cons) (self RIGID-BODY))
  (destructuring-bind (mass inertia) mass&inertia
    (check-type mass number)  (check-type inertia VECTOR3)
    (RIGID-BODY/SET-MASS-PROPS (ff-pointer self) mass (ff-pointer inertia))))

(defmethod LINEAR-FACTOR ((self RIGID-BODY))
  (RIGID-BODY/GET-LINEAR-FACTOR (ff-pointer self)))

(defmethod (SETF LINEAR-FACTOR) ((linearFactor VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-LINEAR-FACTOR (ff-pointer self) linearFactor))

(defmethod INV-MASS ((self RIGID-BODY))
  (RIGID-BODY/GET-INV-MASS (ff-pointer self)))

(defmethod INV-INERTIA-TENSOR-WORLD ((self RIGID-BODY))
  (RIGID-BODY/GET-INV-INERTIA-TENSOR-WORLD (ff-pointer self)))

(defmethod INTEGRATE-VELOCITIES ((self RIGID-BODY) (step number))
  (RIGID-BODY/INTEGRATE-VELOCITIES (ff-pointer self) step))

(defmethod (SETF CENTER-OF-MASS-TRANSFORM) ((xform TRANSFORM) (self RIGID-BODY))
  (RIGID-BODY/SET-CENTER-OF-MASS-TRANSFORM (ff-pointer self) xform))

(defmethod APPLY-CENTRAL-FORCE ((self RIGID-BODY) (force VECTOR3))
  (RIGID-BODY/APPLY-CENTRAL-FORCE (ff-pointer self) force))

(defmethod TOTAL-FORCE ((self RIGID-BODY))
  (RIGID-BODY/GET-TOTAL-FORCE (ff-pointer self)))

(defmethod TOTAL-TORQUE ((self RIGID-BODY))
  (RIGID-BODY/GET-TOTAL-TORQUE (ff-pointer self)))

(defmethod INV-INERTIA-DIAG-LOCAL ((self RIGID-BODY))
  (RIGID-BODY/GET-INV-INERTIA-DIAG-LOCAL (ff-pointer self)))

(defmethod (SETF INV-INERTIA-DIAG-LOCAL) ( (diagInvInertia VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-INV-INERTIA-DIAG-LOCAL (ff-pointer self) diagInvInertia))

(defmethod (SETF SLEEPING-THRESHOLDS) ( (linear number) (self RIGID-BODY) (angular number))
  (RIGID-BODY/SET-SLEEPING-THRESHOLDS (ff-pointer self) linear angular))

(defmethod APPLY-TORQUE ((self RIGID-BODY) (torque VECTOR3))
  (RIGID-BODY/APPLY-TORQUE (ff-pointer self) torque))

(defmethod APPLY-FORCE ((self RIGID-BODY) (force VECTOR3) (rel_pos VECTOR3))
  (RIGID-BODY/APPLY-FORCE (ff-pointer self) force rel_pos))

(defmethod APPLY-CENTRAL-IMPULSE ((self RIGID-BODY) (impulse VECTOR3))
  (RIGID-BODY/APPLY-CENTRAL-IMPULSE (ff-pointer self) impulse))

(defmethod APPLY-TORQUE-IMPULSE ((self RIGID-BODY) (torque VECTOR3))
  (RIGID-BODY/APPLY-TORQUE-IMPULSE (ff-pointer self) torque))

(defmethod APPLY-IMPULSE ((self RIGID-BODY) (impulse VECTOR3) (rel_pos VECTOR3))
  (RIGID-BODY/APPLY-IMPULSE (ff-pointer self) impulse rel_pos))

(defmethod CLEAR-FORCES ((self RIGID-BODY))
  (RIGID-BODY/CLEAR-FORCES (ff-pointer self)))

(defmethod UPDATE-INERTIA-TENSOR ((self RIGID-BODY))
  (RIGID-BODY/UPDATE-INERTIA-TENSOR (ff-pointer self)))

(defmethod CENTER-OF-MASS-POSITION ((self RIGID-BODY))
  (RIGID-BODY/GET-CENTER-OF-MASS-POSITION (ff-pointer self)))

(defmethod ORIENTATION ((self RIGID-BODY))
  (RIGID-BODY/GET-ORIENTATION (ff-pointer self)))

(defmethod CENTER-OF-MASS-TRANSFORM ((self RIGID-BODY))
  (RIGID-BODY/GET-CENTER-OF-MASS-TRANSFORM (ff-pointer self)))

(defmethod LINEAR-VELOCITY ((self RIGID-BODY))
  (RIGID-BODY/GET-LINEAR-VELOCITY (ff-pointer self)))

(defmethod ANGULAR-VELOCITY ((self RIGID-BODY))
  (RIGID-BODY/GET-ANGULAR-VELOCITY (ff-pointer self)))

(defmethod (SETF LINEAR-VELOCITY) ( (lin_vel VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-LINEAR-VELOCITY (ff-pointer self) lin_vel))

(defmethod (SETF ANGULAR-VELOCITY) ( (ang_vel VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-ANGULAR-VELOCITY (ff-pointer self) ang_vel))

(defmethod VELOCITY-IN-LOCAL-POINT ((self RIGID-BODY) (rel_pos VECTOR3))
  (RIGID-BODY/GET-VELOCITY-IN-LOCAL-POINT (ff-pointer self) rel_pos))

(defmethod TRANSLATE ((self RIGID-BODY) (v VECTOR3))
  (RIGID-BODY/TRANSLATE (ff-pointer self) v))

(defmethod AABB ((self RIGID-BODY) (aabbMin VECTOR3) (aabbMax VECTOR3))
  (RIGID-BODY/GET-AABB (ff-pointer self) aabbMin aabbMax))

(defmethod COMPUTE-IMPULSE-DENOMINATOR ((self RIGID-BODY) (pos VECTOR3) (normal VECTOR3))
  (RIGID-BODY/COMPUTE-IMPULSE-DENOMINATOR (ff-pointer self) pos normal))

(defmethod COMPUTE-ANGULAR-IMPULSE-DENOMINATOR ((self RIGID-BODY) (axis VECTOR3))
  (RIGID-BODY/COMPUTE-ANGULAR-IMPULSE-DENOMINATOR (ff-pointer self) axis))

(defmethod UPDATE-DEACTIVATION ((self RIGID-BODY) (time-step number))
  (RIGID-BODY/UPDATE-DEACTIVATION (ff-pointer self) time-step))

(defmethod WANTS-SLEEPING ((self RIGID-BODY))
  (RIGID-BODY/WANTS-SLEEPING (ff-pointer self)))

(defmethod BROADPHASE-PROXY ((self RIGID-BODY))
  (RIGID-BODY/GET-BROADPHASE-PROXY (ff-pointer self)))

(defmethod BROADPHASE-PROXY ((self RIGID-BODY))
  (RIGID-BODY/GET-BROADPHASE-PROXY (ff-pointer self)))

(defmethod (SETF NEW-BROADPHASE-PROXY) ( broadphaseProxy (self RIGID-BODY))
  (RIGID-BODY/SET-NEW-BROADPHASE-PROXY (ff-pointer self) broadphaseProxy))

(defmethod MOTION-STATE ((self RIGID-BODY))
  (RIGID-BODY/GET-MOTION-STATE (ff-pointer self)))

(defmethod MOTION-STATE ((self RIGID-BODY))
  (RIGID-BODY/GET-MOTION-STATE (ff-pointer self)))

(defmethod (SETF MOTION-STATE) ( (motionState MOTION-STATE) (self RIGID-BODY))
  (RIGID-BODY/SET-MOTION-STATE (ff-pointer self) motionState))

(defmethod (setf CONTACT-SOLVER-TYPE) ( (obj RIGID-BODY) arg0)
  (RIGID-BODY/CONTACT-SOLVER-TYPE/SET (ff-pointer obj) arg0))

(defmethod CONTACT-SOLVER-TYPE ((obj RIGID-BODY))
  (RIGID-BODY/CONTACT-SOLVER-TYPE/GET (ff-pointer obj)))

(defmethod (setf FRICTION-SOLVER-TYPE) ( (obj RIGID-BODY) arg0)
  (RIGID-BODY/FRICTION-SOLVER-TYPE/SET (ff-pointer obj) arg0))

(defmethod FRICTION-SOLVER-TYPE ((obj RIGID-BODY))
  (RIGID-BODY/FRICTION-SOLVER-TYPE/GET (ff-pointer obj)))

(defmethod (SETF ANGULAR-FACTOR) ( (angFac VECTOR3) (self RIGID-BODY))
  (RIGID-BODY/SET-ANGULAR-FACTOR (ff-pointer self) angFac))

(defmethod (SETF ANGULAR-FACTOR) ((angular-Factor number) (self RIGID-BODY))
  (RIGID-BODY/SET-ANGULAR-FACTOR/float (ff-pointer self) angular-Factor))

(defmethod ANGULAR-FACTOR ((self RIGID-BODY))
  (RIGID-BODY/GET-ANGULAR-FACTOR (ff-pointer self)))

(defmethod IN-WORLD-P ((self RIGID-BODY))
  (RIGID-BODY/IS-IN-WORLD (ff-pointer self)))

(defmethod CHECK-COLLIDE-WITH-OVERRIDE ((self RIGID-BODY) (co COLLISION-OBJECT))
  (RIGID-BODY/CHECK-COLLIDE-WITH-OVERRIDE (ff-pointer self) co))

(defmethod ADD-CONSTRAINT-REF ((self RIGID-BODY) c)
  (RIGID-BODY/ADD-CONSTRAINT-REF (ff-pointer self) c))

(defmethod REMOVE-CONSTRAINT-REF ((self RIGID-BODY) c)
  (RIGID-BODY/REMOVE-CONSTRAINT-REF (ff-pointer self) c))

(defmethod CONSTRAINT-REF ((self RIGID-BODY) (index integer))
  (RIGID-BODY/GET-CONSTRAINT-REF (ff-pointer self) index))

(defmethod NUM-CONSTRAINT-REFS ((self RIGID-BODY))
  (RIGID-BODY/GET-NUM-CONSTRAINT-REFS (ff-pointer self)))

(defmethod (SETF FLAGS) ( (flags integer) (self RIGID-BODY))
  (RIGID-BODY/SET-FLAGS (ff-pointer self) flags))

(defmethod FLAGS ((self RIGID-BODY))
  (RIGID-BODY/GET-FLAGS (ff-pointer self)))

(defmethod COMPUTE-GYROSCOPIC-FORCE ((self RIGID-BODY) (maxGyroscopicForce number))
  (RIGID-BODY/COMPUTE-GYROSCOPIC-FORCE (ff-pointer self) maxGyroscopicForce))

(defmethod CALCULATE-SERIALIZE-BUFFER-SIZE ((self RIGID-BODY))
  (RIGID-BODY/CALCULATE-SERIALIZE-BUFFER-SIZE (ff-pointer self)))

(defmethod ->serial ((self RIGID-BODY) &key data-Buffer serializer &allow-other-keys)
  (check-type serializer SERIALIZER)
  (RIGID-BODY/SERIALIZE (ff-pointer self) data-Buffer (ff-pointer serializer)))

(defmethod SERIALIZE-SINGLE-OBJECT ((self RIGID-BODY) (serializer SERIALIZER))
  (RIGID-BODY/SERIALIZE-SINGLE-OBJECT (ff-pointer self) serializer))

