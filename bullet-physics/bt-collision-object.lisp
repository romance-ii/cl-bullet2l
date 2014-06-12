(in-package #:bullet-physics)

(defcfun ("_wrap_btCollisionObject_mergesSimulationIslands"
          collision-object/merges-simulation-islands) collision-object
  (self collision-object))

(cffi:defcenum anisotropic-friction-flags
  :friction-disabled :friction :rolling-friction)

(defcfun ("_wrap_btCollisionObject_getAnisotropicFriction"
          collision-object/get-anisotropic-friction) vector3
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setAnisotropicFriction__SWIG_0"
          collision-object/set-anisotropic-friction/with-mode) :void
  (self collision-object)
  (anisotropic-friction vector3)
  (friction-mode :int)) ;; FIXME enum

(defcfun ("_wrap_btCollisionObject_setAnisotropicFriction__SWIG_1"
          collision-object/set-anisotropic-friction/without-mode) :void
  (self collision-object)
  (anisotropic-friction vector3))

(defun collision-object/set-anisotropic-friction
    (self anisotropic-friction &key (friction-mode nil friction-mode-?))
  (if friction-mode-?
      (collision-object/set-anisotropic-friction/with-mode
       self anisotropic-friction friction-mode)
      (collision-object/set-anisotropic-friction/without-mode
       self anisotropic-friction)))

(defcfun ("_wrap_btCollisionObject_hasAnisotropicFriction__SWIG_0"
          COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/with-mode) collision-object
  (self collision-object)
  (frictionMode :int))

(defcfun ("_wrap_btCollisionObject_hasAnisotropicFriction__SWIG_1"
          COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/without-mode) collision-object
  (self collision-object))

(defun COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION
    (self &key (friction-mode nil friction-mode-?))
  (if friction-mode-?
      (COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/with-mode
       self friction-mode)
      (COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/without-mode self)))

(defcfun ("_wrap_btCollisionObject_setContactProcessingThreshold"
          COLLISION-OBJECT/SET-CONTACT-PROCESSING-THRESHOLD) :void
  (self collision-object)
  (contactProcessingThreshold :float))

(defcfun ("_wrap_btCollisionObject_getContactProcessingThreshold"
          COLLISION-OBJECT/GET-CONTACT-PROCESSING-THRESHOLD) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_isStaticObject"
          COLLISION-OBJECT/IS-STATIC-OBJECT) collision-object
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_isKinematicObject"
          COLLISION-OBJECT/IS-KINEMATIC-OBJECT) collision-object
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_isStaticOrKinematicObject"
          COLLISION-OBJECT/IS-STATIC-OR-KINEMATIC-OBJECT ) collision-object
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_hasContactResponse"
          COLLISION-OBJECT/HAS-CONTACT-RESPONSE) collision-object
  (self collision-object))

(defcfun ("_wrap_new_btCollisionObject" MAKE-COLLISION-OBJECT) collision-object)

(defcfun ("_wrap_delete_btCollisionObject" DELETE/BT-COLLISION-OBJECT) :void
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setCollisionShape" COLLISION-OBJECT/SET-COLLISION-SHAPE) :void
  (self collision-object)
  (collisionShape collision-shape))

(defcfun ("_wrap_btCollisionObject_getCollisionShape__SWIG_0"
          COLLISION-OBJECT/GET-COLLISION-SHAPE) collision-shape
  (self collision-object))
#+ (or)
(progn

  (defcfun ("_wrap_btCollisionObject_getCollisionShape__SWIG_1"
            COLLISION-OBJECT/GET-COLLISION-SHAPE) collision-shape
    (self collision-object))
  )

;; (defcfun ("_wrap_btCollisionObject_internalGetExtensionPointer"
;;           COLLISION-OBJECT/INTERNAL-GET-EXTENSION-POINTER) :pointer
;;   (self collision-object))

;; (defcfun ("_wrap_btCollisionObject_internalSetExtensionPointer"
;;           COLLISION-OBJECT/INTERNAL-SET-EXTENSION-POINTER) :void
;;   (self collision-object)
;;   (pointer :pointer))

(defcfun ("_wrap_btCollisionObject_getActivationState"
          COLLISION-OBJECT/GET-ACTIVATION-STATE) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setActivationState"
          COLLISION-OBJECT/SET-ACTIVATION-STATE) :void
  (self collision-object)
  (newState :int))

(defcfun ("_wrap_btCollisionObject_setDeactivationTime"
          collision-object/set-deactivation-time) :void
  (self collision-object)
  (time :float))

(defcfun ("_wrap_btCollisionObject_getDeactivationTime"
          collision-object/get-deactivation-time) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_forceActivationState"
          collision-object/force-activation-state) :void
  (self collision-object)
  (newState :int))

(defcfun ("_wrap_btCollisionObject_activate__SWIG_0"
          collision-object/activate/force) :void
  (self collision-object)
  (force-activation-p :boolean))

(defcfun ("_wrap_btCollisionObject_activate__SWIG_1"
          collision-object/activate) :void
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_isActive" collision-object/is-active) :boolean
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setRestitution"
          COLLISION-OBJECT/SET-RESTITUTION) :void
  (self collision-object)
  (rest :float))

(defcfun ("_wrap_btCollisionObject_getRestitution"
          COLLISION-OBJECT/GET-RESTITUTION) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setFriction"
          COLLISION-OBJECT/SET-FRICTION) :void
  (self collision-object)
  (frict :float))

(defcfun ("_wrap_btCollisionObject_getFriction"
          COLLISION-OBJECT/GET-FRICTION) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setRollingFriction"
          COLLISION-OBJECT/SET-ROLLING-FRICTION) :void
  (self collision-object)
  (frict :float))

(defcfun ("_wrap_btCollisionObject_getRollingFriction"
          COLLISION-OBJECT/GET-ROLLING-FRICTION) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getInternalType"
          COLLISION-OBJECT/GET-INTERNAL-TYPE) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getWorldTransform__SWIG_0"
          COLLISION-OBJECT/GET-WORLD-TRANSFORM) transform
  (self collision-object))
#+ (or)
(progn

  (defcfun ("_wrap_btCollisionObject_getWorldTransform__SWIG_1"
            COLLISION-OBJECT/GET-WORLD-TRANSFORM) :pointer
    (self collision-object))
  )

(defcfun ("_wrap_btCollisionObject_setWorldTransform"
          COLLISION-OBJECT/SET-WORLD-TRANSFORM) :void
  (self collision-object)
  (worldTrans transform))

(defcfun ("_wrap_btCollisionObject_getBroadphaseHandle__SWIG_0"
          COLLISION-OBJECT/GET-BROADPHASE-HANDLE) broadphase
  (self collision-object))

#+ (or)
(progn

  (defcfun ("_wrap_btCollisionObject_getBroadphaseHandle__SWIG_1"
            COLLISION-OBJECT/GET-BROADPHASE-HANDLE) :pointer
    (self collision-object))
  )

(defcfun ("_wrap_btCollisionObject_setBroadphaseHandle"
          COLLISION-OBJECT/SET-BROADPHASE-HANDLE) :void
  (self collision-object)
  (handle broadphase))

(defcfun ("_wrap_btCollisionObject_getInterpolationWorldTransform__SWIG_0"
          COLLISION-OBJECT/GET-INTERPOLATION-WORLD-TRANSFORM) transform
  (self collision-object))
#+ (or)
(progn

  (defcfun ("_wrap_btCollisionObject_getInterpolationWorldTransform__SWIG_1"
            COLLISION-OBJECT/GET-INTERPOLATION-WORLD-TRANSFORM) :pointer
    (self collision-object))
  )

(defcfun ("_wrap_btCollisionObject_setInterpolationWorldTransform"
          COLLISION-OBJECT/SET-INTERPOLATION-WORLD-TRANSFORM) :void
  (self collision-object)
  (transform transform))

(defcfun ("_wrap_btCollisionObject_setInterpolationLinearVelocity"
          COLLISION-OBJECT/SET-INTERPOLATION-LINEAR-VELOCITY) :void
  (self collision-object)
  (linear-velocity vector3))

(defcfun ("_wrap_btCollisionObject_setInterpolationAngularVelocity"
          COLLISION-OBJECT/SET-INTERPOLATION-ANGULAR-VELOCITY) :void
  (self collision-object)
  (angvel vector3))

(defcfun ("_wrap_btCollisionObject_getInterpolationLinearVelocity"
          COLLISION-OBJECT/GET-INTERPOLATION-LINEAR-VELOCITY) vector3
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getInterpolationAngularVelocity"
          COLLISION-OBJECT/GET-INTERPOLATION-ANGULAR-VELOCITY) vector3
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getIslandTag"
          COLLISION-OBJECT/GET-ISLAND-TAG) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setIslandTag"
          COLLISION-OBJECT/SET-ISLAND-TAG) :void
  (self collision-object)
  (tag :int))

(defcfun ("_wrap_btCollisionObject_getCompanionId"
          COLLISION-OBJECT/GET-COMPANION-ID) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setCompanionId"
          COLLISION-OBJECT/SET-COMPANION-ID) :void
  (self collision-object)
  (id :int))

(defcfun ("_wrap_btCollisionObject_getHitFraction"
          cOLLISION-OBJECT/GET-HIT-FRACTION) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setHitFraction"
          cOLLISION-OBJECT/SET-HIT-FRACTION) :void
  (self collision-object)
  (hitFraction :float))

(defcfun ("_wrap_btCollisionObject_getCollisionFlags"
          cOLLISION-OBJECT/GET-COLLISION-FLAGS) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setCollisionFlags"
          collision-object/set-collision-flags) :void
  (self collision-object)
  (flags :int))

(defcfun ("_wrap_btCollisionObject_getCcdSweptSphereRadius"
          collision-object/get-ccd-swept-sphere-radius) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setCcdSweptSphereRadius"
          collision-object/set-ccd-swept-sphere-radius) :void
  (self collision-object)
  (radius :float))

(defcfun ("_wrap_btCollisionObject_getCcdMotionThreshold"
          collision-object/get-ccd-motion-threshold) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getCcdSquareMotionThreshold"
          collision-object/get-ccd-square-motion-threshold) :float
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setCcdMotionThreshold"
          collision-object/set-ccd-motion-threshold) :void
  (self collision-object)
  (ccd-motion-threshold :float))

(defcfun ("_wrap_btCollisionObject_getUserPointer"
          collision-object/get-user-pointer) :pointer
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_getUserIndex"
          collision-object/get-user-index) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_setUserPointer"
          collision-object/set-user-pointer) :void
  (self collision-object)
  (user-pointer :pointer))

(defcfun ("_wrap_btCollisionObject_setUserIndex"
          collision-object/set-user-index) :void
  (self collision-object)
  (index :int))

(defcfun ("_wrap_btCollisionObject_getUpdateRevisionInternal"
          collision-object/get-update-revision-internal) :int
  (self collision-object))

#+c++-protected
(defcfun ("_wrap_btCollisionObject_checkCollideWith"
          cOLLISION-OBJECT/CHECK-COLLIDE-WITH) :pointer
  (self collision-object)
  (co :pointer))

(defcfun ("_wrap_btCollisionObject_calculateSerializeBufferSize"
          collision-object/calculate-serialize-buffer-size) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_serialize"
          collision-object/serialize) :string
  (self collision-object)
  (dataBuffer :pointer)
  (serializer serializer))

(defcfun ("_wrap_btCollisionObject_serializeSingleObject"
          collision-object/serialize-single-object) :void
  (self collision-object)
  (serializer serializer))


(defmethod merges-simulation-islands ((self collision-object))
  (collision-object/merges-simulation-islands (ff-pointer self)))
(defmethod anisotropic-friction ((self collision-object))
  (collision-object/get-anisotropic-friction (ff-pointer self)))
(defmethod (setf anisotropic-friction) ((friction cons) (self collision-object))
  (destructuring-bind (anisotropicfriction friction-mode) friction
    (check-type friction-mode (or null integer))
    (if friction-mode
        (collision-object/set-anisotropic-friction/with-mode
         (ff-pointer self) anisotropicfriction friction-mode)
        (collision-object/set-anisotropic-friction/without-mode
         (ff-pointer self) anisotropicfriction))))
(defmethod has-anisotropic-friction-p
    ((self collision-object) (frictionmode integer))
  (collision-object/has-anisotropic-friction/with-mode
   (ff-pointer self) frictionmode))
(defmethod has-anisotropic-friction-p
    ((self collision-object) (friction-mode null))
  (collision-object/has-anisotropic-friction/without-mode
   (ff-pointer self)))
(defmethod (setf contact-processing-threshold)
    ((contactprocessingthreshold number) (self collision-object))
  (collision-object/set-contact-processing-threshold
   (ff-pointer self) contactprocessingthreshold))
(defmethod contact-processing-threshold ((self collision-object))
  (collision-object/get-contact-processing-threshold (ff-pointer self)))
(defmethod static-object-p ((self collision-object))
  (collision-object/is-static-object (ff-pointer self)))
(defmethod kinematic-object-p ((self collision-object))
  (collision-object/is-kinematic-object (ff-pointer self)))
(defmethod static-or-kinematic-object-p ((self collision-object))
  (collision-object/is-static-or-kinematic-object (ff-pointer self)))
(defmethod has-contact-response-p ((self collision-object))
  (collision-object/has-contact-response (ff-pointer self)))
(defmethod initialize-instance :after ((obj collision-object)
                                       &key)
  (setf (slot-value obj 'ff-pointer) (make-collision-object)))
(defmethod (setf collision-shape) ( collisionshape (self collision-object))
  (collision-object/set-collision-shape (ff-pointer self) collisionshape))
(defmethod collision-shape ((self collision-object))
  (collision-object/get-collision-shape (ff-pointer self)))
(defmethod collision-shape ((self collision-object))
  (collision-object/get-collision-shape (ff-pointer self)))
(defmethod internal-get-extension-pointer ((self collision-object))
  (collision-object/internal-get-extension-pointer (ff-pointer self)))
(defmethod internal-set-extension-pointer ((self collision-object) pointer)
  (collision-object/internal-set-extension-pointer (ff-pointer self) pointer))
(defmethod activation-state ((self collision-object))
  (collision-object/get-activation-state (ff-pointer self)))
(defmethod (setf activation-state) ( (newstate integer) (self collision-object))
  (collision-object/set-activation-state (ff-pointer self) newstate))
(defmethod (setf deactivation-time) ( (time number) (self collision-object))
  (collision-object/set-deactivation-time (ff-pointer self) time))
(defmethod deactivation-time ((self collision-object))
  (collision-object/get-deactivation-time (ff-pointer self)))
(defmethod force-activation-state ((self collision-object) (newstate integer))
  (collision-object/force-activation-state (ff-pointer self) newstate))
(defmethod activate ((self collision-object)
                     &key (force-activation nil force-?))
  (if force-?
      (collision-object/activate/force (ff-pointer self) force-activation)
      (collision-object/activate (ff-pointer self))))
(defmethod activep ((self collision-object))
  (collision-object/is-active (ff-pointer self)))
(defmethod (setf restitution) ( (rest number) (self collision-object))
  (collision-object/set-restitution (ff-pointer self) rest))
(defmethod restitution ((self collision-object))
  (collision-object/get-restitution (ff-pointer self)))
(defmethod (setf friction) ( (frict number) (self collision-object))
  (collision-object/set-friction (ff-pointer self) frict))
(defmethod friction ((self collision-object))
  (collision-object/get-friction (ff-pointer self)))
(defmethod (setf rolling-friction) ( (frict number) (self collision-object))
  (collision-object/set-rolling-friction (ff-pointer self) frict))
(defmethod rolling-friction ((self collision-object))
  (collision-object/get-rolling-friction (ff-pointer self)))
(defmethod internal-type ((self collision-object))
  (collision-object/get-internal-type (ff-pointer self)))
(defmethod world-transform ((self collision-object))
  (collision-object/get-world-transform (ff-pointer self)))
(defmethod world-transform ((self collision-object))
  (collision-object/get-world-transform (ff-pointer self)))
(defmethod (setf world-transform) ( worldtrans (self collision-object))
  (collision-object/set-world-transform (ff-pointer self) worldtrans))
(defmethod get-broadphase-handle ((self collision-object))
  (collision-object/get-broadphase-handle (ff-pointer self)))
(defmethod (setf broadphase-handle) ( handle (self collision-object))
  (collision-object/set-broadphase-handle (ff-pointer self) handle))
(defmethod interpolation-world-transform ((self collision-object))
  (collision-object/get-interpolation-world-transform (ff-pointer self)))
(defmethod interpolation-world-transform ((self collision-object))
  (collision-object/get-interpolation-world-transform (ff-pointer self)))
(defmethod (setf interpolation-world-transform) ( trans (self collision-object))
  (collision-object/set-interpolation-world-transform (ff-pointer self) trans))
(defmethod (setf interpolation-linear-velocity) ( linvel (self collision-object))
  (collision-object/set-interpolation-linear-velocity (ff-pointer self) linvel))
(defmethod (setf interpolation-angular-velocity) ( angvel (self collision-object))
  (collision-object/set-interpolation-angular-velocity (ff-pointer self) angvel))
(defmethod interpolation-linear-velocity ((self collision-object))
  (collision-object/get-interpolation-linear-velocity (ff-pointer self)))
(defmethod interpolation-angular-velocity ((self collision-object))
  (collision-object/get-interpolation-angular-velocity (ff-pointer self)))
(defmethod island-tag ((self collision-object))
  (collision-object/get-island-tag (ff-pointer self)))
(defmethod (setf island-tag) ( (tag integer) (self collision-object))
  (collision-object/set-island-tag (ff-pointer self) tag))
(defmethod companion-id ((self collision-object))
  (collision-object/get-companion-id (ff-pointer self)))
(defmethod (setf companion-id) ( (id integer) (self collision-object))
  (collision-object/set-companion-id (ff-pointer self) id))
(defmethod hit-fraction ((self collision-object))
  (collision-object/get-hit-fraction (ff-pointer self)))
(defmethod (setf hit-fraction) ( (hitfraction number) (self collision-object))
  (collision-object/set-hit-fraction (ff-pointer self) hitfraction))
(defmethod collision-flags ((self collision-object))
  (collision-object/get-collision-flags (ff-pointer self)))
(defmethod (setf collision-flags) ( (flags integer) (self collision-object))
  (collision-object/set-collision-flags (ff-pointer self) flags))
(defmethod ccd-swept-sphere-radius ((self collision-object))
  (collision-object/get-ccd-swept-sphere-radius (ff-pointer self)))
(defmethod (setf ccd-swept-sphere-radius) ( (radius number) (self collision-object))
  (collision-object/set-ccd-swept-sphere-radius (ff-pointer self) radius))
(defmethod ccd-motion-threshold ((self collision-object))
  (collision-object/get-ccd-motion-threshold (ff-pointer self)))
(defmethod ccd-square-motion-threshold ((self collision-object))
  (collision-object/get-ccd-square-motion-threshold (ff-pointer self)))
(defmethod (setf ccd-motion-threshold) ( (ccdmotionthreshold number) (self collision-object))
  (collision-object/set-ccd-motion-threshold (ff-pointer self) ccdmotionthreshold))
(defmethod user-pointer ((self collision-object))
  (collision-object/get-user-pointer (ff-pointer self)))
(defmethod user-index ((self collision-object))
  (collision-object/get-user-index (ff-pointer self)))
(defmethod (setf user-pointer) ( userpointer (self collision-object))
  (collision-object/set-user-pointer (ff-pointer self) userpointer))
(defmethod (setf user-index) ( (index integer) (self collision-object))
  (collision-object/set-user-index (ff-pointer self) index))
(defmethod update-revision-internal ((self collision-object))
  (collision-object/get-update-revision-internal (ff-pointer self)))
(defmethod check-collide-with ((self collision-object) (co collision-object))
  (collision-object/check-collide-with (ff-pointer self) (ff-pointer co)))
(defmethod calculate-serialize-buffer-size ((self collision-object))
  (collision-object/calculate-serialize-buffer-size (ff-pointer self)))
(defmethod serialize ((self collision-object) &key data-buffer serializer
                                                &allow-other-keys)
  (collision-object/serialize (ff-pointer self) data-buffer serializer))
(defmethod serialize-single-object ((self collision-object) serializer)
  (collision-object/serialize-single-object (ff-pointer self) serializer))

(cffi:defcenum collision-object-types
  (:collision-object 1)
  (:rigid-body 2)
  (:ghost-object 4)
  (:soft-body 8)
  (:hf-fluid 16)
  (:user-type 32)
  (:featherstone-link 64))


(define-constant +collision-object-data-name+ "btCollisionObjectFloatData"  :test 'equal)
(defcfun ("_wrap_btCollisionObject_makeCPlusPlusInstance__SWIG_0"
          collision-object/make-c++-instance) collision-object
  (self collision-object)
  (size-in-bytes :int))
(defcfun ("_wrap_btCollisionObject_deleteCPlusPlusInstance__SWIG_0"
          COLLISION-OBJECT/DELETE-C++-INSTANCE) :void
  (self collision-object)
  (ptr collision-object))
(defcfun ("_wrap_btCollisionObject_makeCPlusArray__SWIG_0"
          COLLISION-OBJECT/MAKE-C++-ARRAY) collision-object
  (self collision-object)
  (sizeInBytes :int))

(defcfun ("_wrap_btCollisionObject_deleteCPlusArray__SWIG_0"
          COLLISION-OBJECT/DELETE-C++-ARRAY) :void
  (self collision-object)
  (ptr collision-object))

