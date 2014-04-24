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
          cOLLISION-OBJECT/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self collision-object))

(defcfun ("_wrap_btCollisionObject_serialize"
          cOLLISION-OBJECT/SERIALIZE) :string
  (self collision-object)
  (dataBuffer :pointer)
  (serializer serializer))

(defcfun ("_wrap_btCollisionObject_serializeSingleObject"
          cOLLISION-OBJECT/SERIALIZE-SINGLE-OBJECT) :void
  (self collision-object)
  (serializer serializer))


(defmethod MERGES-SIMULATION-ISLANDS ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/MERGES-SIMULATION-ISLANDS (ff-pointer self)))
(defmethod ANISOTROPIC-FRICTION ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-ANISOTROPIC-FRICTION (ff-pointer self)))
(defmethod (setf anisotropic-friction) ((friction cons) (self collision-object))
  (destructuring-bind (anisotropicfriction friction-mode) friction
    (check-type friction-mode (or null integer))
    (if friction-mode
        (collision-object/set-anisotropic-friction/with-mode
         (ff-pointer self) anisotropicfriction friction-mode)
        (collision-object/set-anisotropic-friction/without-mode
         (ff-pointer self) anisotropicfriction))))
(defmethod HAS-ANISOTROPIC-FRICTION-P
    ((self COLLISION-OBJECT) (frictionMode integer))
  (COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/WITH-MODE
   (ff-pointer self) frictionMode))
(defmethod HAS-ANISOTROPIC-FRICTION-P
    ((self COLLISION-OBJECT) (friction-mode null))
  (COLLISION-OBJECT/HAS-ANISOTROPIC-FRICTION/WITHOUT-MODE
   (ff-pointer self)))
(defmethod (SETF CONTACT-PROCESSING-THRESHOLD)
    ((contactProcessingThreshold number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-CONTACT-PROCESSING-THRESHOLD
   (ff-pointer self) contactProcessingThreshold))
(defmethod CONTACT-PROCESSING-THRESHOLD ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-CONTACT-PROCESSING-THRESHOLD (ff-pointer self)))
(defmethod STATIC-OBJECT-P ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/IS-STATIC-OBJECT (ff-pointer self)))
(defmethod KINEMATIC-OBJECT-P ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/IS-KINEMATIC-OBJECT (ff-pointer self)))
(defmethod STATIC-OR-KINEMATIC-OBJECT-P ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/IS-STATIC-OR-KINEMATIC-OBJECT (ff-pointer self)))
(defmethod HAS-CONTACT-RESPONSE-P ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/HAS-CONTACT-RESPONSE (ff-pointer self)))
(defmethod initialize-instance :after ((obj COLLISION-OBJECT)
                                       &key)
  (setf (slot-value obj 'ff-pointer) (MAKE-COLLISION-OBJECT)))
(defmethod (SETF COLLISION-SHAPE) ( collisionShape (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-COLLISION-SHAPE (ff-pointer self) collisionShape))
(defmethod COLLISION-SHAPE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-COLLISION-SHAPE (ff-pointer self)))
(defmethod COLLISION-SHAPE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-COLLISION-SHAPE (ff-pointer self)))
(defmethod INTERNAL-GET-EXTENSION-POINTER ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/INTERNAL-GET-EXTENSION-POINTER (ff-pointer self)))
(defmethod INTERNAL-SET-EXTENSION-POINTER ((self COLLISION-OBJECT) pointer)
  (COLLISION-OBJECT/INTERNAL-SET-EXTENSION-POINTER (ff-pointer self) pointer))
(defmethod ACTIVATION-STATE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-ACTIVATION-STATE (ff-pointer self)))
(defmethod (SETF ACTIVATION-STATE) ( (newState integer) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-ACTIVATION-STATE (ff-pointer self) newState))
(defmethod (SETF DEACTIVATION-TIME) ( (time number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-DEACTIVATION-TIME (ff-pointer self) time))
(defmethod DEACTIVATION-TIME ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-DEACTIVATION-TIME (ff-pointer self)))
(defmethod FORCE-ACTIVATION-STATE ((self COLLISION-OBJECT) (newState integer))
  (COLLISION-OBJECT/FORCE-ACTIVATION-STATE (ff-pointer self) newState))
(defmethod activate ((self collision-object)
                     &key (force-activation nil force-?))
  (if force-?
      (collision-object/activate/force (ff-pointer self) force-activation)
      (collision-object/activate (ff-pointer self))))
(defmethod ACTIVEP ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/IS-ACTIVE (ff-pointer self)))
(defmethod (SETF RESTITUTION) ( (rest number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-RESTITUTION (ff-pointer self) rest))
(defmethod RESTITUTION ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-RESTITUTION (ff-pointer self)))
(defmethod (SETF FRICTION) ( (frict number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-FRICTION (ff-pointer self) frict))
(defmethod FRICTION ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-FRICTION (ff-pointer self)))
(defmethod (SETF ROLLING-FRICTION) ( (frict number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-ROLLING-FRICTION (ff-pointer self) frict))
(defmethod ROLLING-FRICTION ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-ROLLING-FRICTION (ff-pointer self)))
(defmethod INTERNAL-TYPE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-INTERNAL-TYPE (ff-pointer self)))
(defmethod WORLD-TRANSFORM ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-WORLD-TRANSFORM (ff-pointer self)))
(defmethod WORLD-TRANSFORM ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-WORLD-TRANSFORM (ff-pointer self)))
(defmethod (SETF WORLD-TRANSFORM) ( worldTrans (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-WORLD-TRANSFORM (ff-pointer self) worldTrans))
(defmethod GET-BROADPHASE-HANDLE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-BROADPHASE-HANDLE (ff-pointer self)))
(defmethod (SETF BROADPHASE-HANDLE) ( handle (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-BROADPHASE-HANDLE (ff-pointer self) handle))
(defmethod INTERPOLATION-WORLD-TRANSFORM ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self)))
(defmethod INTERPOLATION-WORLD-TRANSFORM ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self)))
(defmethod (SETF INTERPOLATION-WORLD-TRANSFORM) ( trans (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-WORLD-TRANSFORM (ff-pointer self) trans))
(defmethod (SETF INTERPOLATION-LINEAR-VELOCITY) ( linvel (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-LINEAR-VELOCITY (ff-pointer self) linvel))
(defmethod (SETF INTERPOLATION-ANGULAR-VELOCITY) ( angvel (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-INTERPOLATION-ANGULAR-VELOCITY (ff-pointer self) angvel))
(defmethod INTERPOLATION-LINEAR-VELOCITY ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-INTERPOLATION-LINEAR-VELOCITY (ff-pointer self)))
(defmethod INTERPOLATION-ANGULAR-VELOCITY ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-INTERPOLATION-ANGULAR-VELOCITY (ff-pointer self)))
(defmethod ISLAND-TAG ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-ISLAND-TAG (ff-pointer self)))
(defmethod (SETF ISLAND-TAG) ( (tag integer) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-ISLAND-TAG (ff-pointer self) tag))
(defmethod COMPANION-ID ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-COMPANION-ID (ff-pointer self)))
(defmethod (SETF COMPANION-ID) ( (id integer) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-COMPANION-ID (ff-pointer self) id))
(defmethod HIT-FRACTION ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-HIT-FRACTION (ff-pointer self)))
(defmethod (SETF HIT-FRACTION) ( (hitFraction number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-HIT-FRACTION (ff-pointer self) hitFraction))
(defmethod COLLISION-FLAGS ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-COLLISION-FLAGS (ff-pointer self)))
(defmethod (SETF COLLISION-FLAGS) ( (flags integer) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-COLLISION-FLAGS (ff-pointer self) flags))
(defmethod CCD-SWEPT-SPHERE-RADIUS ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-CCD-SWEPT-SPHERE-RADIUS (ff-pointer self)))
(defmethod (SETF CCD-SWEPT-SPHERE-RADIUS) ( (radius number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-CCD-SWEPT-SPHERE-RADIUS (ff-pointer self) radius))
(defmethod CCD-MOTION-THRESHOLD ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-CCD-MOTION-THRESHOLD (ff-pointer self)))
(defmethod CCD-SQUARE-MOTION-THRESHOLD ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-CCD-SQUARE-MOTION-THRESHOLD (ff-pointer self)))
(defmethod (SETF CCD-MOTION-THRESHOLD) ( (ccdMotionThreshold number) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-CCD-MOTION-THRESHOLD (ff-pointer self) ccdMotionThreshold))
(defmethod USER-POINTER ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-USER-POINTER (ff-pointer self)))
(defmethod USER-INDEX ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-USER-INDEX (ff-pointer self)))
(defmethod (SETF USER-POINTER) ( userPointer (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-USER-POINTER (ff-pointer self) userPointer))
(defmethod (SETF USER-INDEX) ( (index integer) (self COLLISION-OBJECT))
  (COLLISION-OBJECT/SET-USER-INDEX (ff-pointer self) index))
(defmethod UPDATE-REVISION-INTERNAL ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/GET-UPDATE-REVISION-INTERNAL (ff-pointer self)))
(defmethod CHECK-COLLIDE-WITH ((self COLLISION-OBJECT) (co COLLISION-OBJECT))
  (COLLISION-OBJECT/CHECK-COLLIDE-WITH (ff-pointer self) (ff-pointer co)))
(defmethod CALCULATE-SERIALIZE-BUFFER-SIZE ((self COLLISION-OBJECT))
  (COLLISION-OBJECT/CALCULATE-SERIALIZE-BUFFER-SIZE (ff-pointer self)))
(defmethod serialize ((self collision-object) &key data-Buffer serializer
                                                &allow-other-keys)
  (collision-object/serialize (ff-pointer self) data-Buffer serializer))
(defmethod SERIALIZE-SINGLE-OBJECT ((self COLLISION-OBJECT) serializer)
  (COLLISION-OBJECT/SERIALIZE-SINGLE-OBJECT (ff-pointer self) serializer))

(cffi:defcenum COLLISION-OBJECT-TYPES
  (:COLLISION-OBJECT 1)
  (:RIGID-BODY 2)
  (:GHOST-OBJECT 4)
  (:SOFT-BODY 8)
  (:HF-FLUID 16)
  (:USER-TYPE 32)
  (:FEATHERSTONE-LINK 64))


(define-constant +COLLISION-OBJECT-DATA-NAME+ "btCollisionObjectFloatData"  :test 'equal)
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

