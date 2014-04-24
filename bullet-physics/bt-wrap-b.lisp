(in-package #:bullet-physics)
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
(cffi:defcenum COLLISION-FLAGS
  (:STATIC-OBJECT 1)
  (:KINEMATIC-OBJECT 2)
  (:NO-CONTACT-RESPONSE 4)
  (:CUSTOM-MATERIAL-CALLBACK 8)
  (:CHARACTER-OBJECT 16)
  (:DISABLE-VISUALIZE-OBJECT #.32)
  (:DISABLE-SPU-COLLISION-PROCESSING #.64))
(cffi:defcenum ANISOTROPIC-FRICTION-FLAGS
  (:ANISOTROPIC-FRICTION-DISABLED 0)
  (:ANISOTROPIC-FRICTION 1)
  (:ANISOTROPIC-ROLLING-FRICTION 2))

(defcfun ("_wrap_btBoxShape_makeCPlusPlusInstance__SWIG_0"
          box-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBoxShape_deleteCPlusPlusInstance__SWIG_0"
          box-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBoxShape_makeCPlusPlusInstance__SWIG_1"
          box-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBoxShape_deleteCPlusPlusInstance__SWIG_1"
          box-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btBoxShape_makeCPlusArray__SWIG_0"
          box-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBoxShape_deleteCPlusArray__SWIG_0"
          box-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBoxShape_makeCPlusArray__SWIG_1"
          box-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBoxShape_deleteCPlusArray__SWIG_1"
          box-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btBoxShape_getHalfExtentsWithMargin"
          box-shape/get-half-extents-with-margin) :pointer
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getHalfExtentsWithoutMargin"
          box-shape/get-half-extents-without-margin) :pointer
  (self :pointer))

(defcfun ("_wrap_btBoxShape_localGetSupportingVertex"
          box-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btBoxShape_localGetSupportingVertexWithoutMargin"
          box-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btBoxShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          box-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_new_btBoxShape"
          make-box-shape) :pointer
  (boxHalfExtents :pointer))

(defcfun ("_wrap_btBoxShape_setMargin"
          box-shape/set-margin) :void
  (self :pointer)
  (collisionMargin :float))

(defcfun ("_wrap_btBoxShape_setLocalScaling"
          box-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btBoxShape_getAabb"
          box-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBoxShape_calculateLocalInertia"
          box-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btBoxShape_getPlane"
          box-shape/get-plane) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeSupport :pointer)
  (i :int))

(defcfun ("_wrap_btBoxShape_getNumPlanes"
          box-shape/get-num-planes) :int
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getNumVertices"
          box-shape/get-num-vertices) :int
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getNumEdges"
          box-shape/get-num-edges) :int
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getVertex"
          box-shape/get-vertex) :void
  (self :pointer)
  (i :int)
  (vtx :pointer))

(defcfun ("_wrap_btBoxShape_getPlaneEquation"
          box-shape/get-plane-equation) :void
  (self :pointer)
  (plane :pointer)
  (i :int))

(defcfun ("_wrap_btBoxShape_getEdge"
          box-shape/get-edge) :void
  (self :pointer)
  (i :int)
  (pa :pointer)
  (pb :pointer))

(defcfun ("_wrap_btBoxShape_isInside"
          box-shape/is-inside) :pointer
  (self :pointer)
  (pt :pointer)
  (tolerance :float))

(defcfun ("_wrap_btBoxShape_getName"
          box-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getNumPreferredPenetrationDirections"
          box-shape/get-num-preferred-penetration-directions) :int
  (self :pointer))

(defcfun ("_wrap_btBoxShape_getPreferredPenetrationDirection"
          box-shape/get-preferred-penetration-direction) :void
  (self :pointer)
  (index :int)
  (penetrationVector :pointer))

(defcfun ("_wrap_delete_btBoxShape"
          delete/bt-box-shape) :void
  (self :pointer))

(defcfun ("_wrap_btSphereShape_makeCPlusPlusInstance__SWIG_0"
          sphere-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btSphereShape_deleteCPlusPlusInstance__SWIG_0"
          sphere-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSphereShape_makeCPlusPlusInstance__SWIG_1"
          sphere-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSphereShape_deleteCPlusPlusInstance__SWIG_1"
          sphere-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btSphereShape_makeCPlusArray__SWIG_0"
          sphere-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btSphereShape_deleteCPlusArray__SWIG_0"
          sphere-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSphereShape_makeCPlusArray__SWIG_1"
          sphere-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSphereShape_deleteCPlusArray__SWIG_1"
          sphere-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btSphereShape"
          make-sphere-shape) :pointer
  (radius :float))

(defcfun ("_wrap_btSphereShape_localGetSupportingVertex"
          sphere-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btSphereShape_localGetSupportingVertexWithoutMargin"
          sphere-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          sphere-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btSphereShape_calculateLocalInertia"
          sphere-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btSphereShape_getAabb"
          sphere-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSphereShape_getRadius"
          sphere-shape/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_btSphereShape_setUnscaledRadius"
          sphere-shape/set-unscaled-radius) :void
  (self :pointer)
  (radius :float))

(defcfun ("_wrap_btSphereShape_getName"
          sphere-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btSphereShape_setMargin"
          sphere-shape/set-margin) :void
  (self :pointer)
  (margin :float))

(defcfun ("_wrap_btSphereShape_getMargin"
          sphere-shape/get-margin) :float
  (self :pointer))

(defcfun ("_wrap_delete_btSphereShape"
          delete/bt-sphere-shape) :void
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_makeCPlusPlusInstance__SWIG_0"
          capsule-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCapsuleShape_deleteCPlusPlusInstance__SWIG_0"
          capsule-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCapsuleShape_makeCPlusPlusInstance__SWIG_1"
          capsule-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCapsuleShape_deleteCPlusPlusInstance__SWIG_1"
          capsule-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCapsuleShape_makeCPlusArray__SWIG_0"
          capsule-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCapsuleShape_deleteCPlusArray__SWIG_0"
          capsule-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCapsuleShape_makeCPlusArray__SWIG_1"
          capsule-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCapsuleShape_deleteCPlusArray__SWIG_1"
          capsule-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btCapsuleShape__SWIG_1"
          make-capsule-shape) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btCapsuleShape_calculateLocalInertia"
          capsule-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btCapsuleShape_localGetSupportingVertexWithoutMargin"
          capsule-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btCapsuleShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          capsule-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btCapsuleShape_setMargin"
          capsule-shape/set-margin) :void
  (self :pointer)
  (collisionMargin :float))

(defcfun ("_wrap_btCapsuleShape_getAabb"
          capsule-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btCapsuleShape_getName"
          capsule-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_getUpAxis"
          capsule-shape/get-up-axis) :int
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_getRadius"
          capsule-shape/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_getHalfHeight"
          capsule-shape/get-half-height) :float
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_setLocalScaling"
          capsule-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btCapsuleShape_getAnisotropicRollingFrictionDirection"
          capsule-shape/get-anisotropic-rolling-friction-direction) :pointer
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_calculateSerializeBufferSize"
          capsule-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btCapsuleShape_serialize"
          capsule-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btCapsuleShape"
          delete/bt-capsule-shape) :void
  (self :pointer))

(defcfun ("_wrap_new_btCapsuleShapeX"
          make-capsule-shape-x) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btCapsuleShapeX_getName"
          capsule-shape-x/get-name) :string
  (self :pointer))

(defcfun ("_wrap_delete_btCapsuleShapeX"
          delete/bt-capsule-shape-x) :void
  (self :pointer))

(defcfun ("_wrap_new_btCapsuleShapeZ"
          make-capsule-shape-z) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btCapsuleShapeZ_getName"
          capsule-shape-z/get-name) :string
  (self :pointer))

(defcfun ("_wrap_delete_btCapsuleShapeZ"
          delete/bt-capsule-shape-z) :void
  (self :pointer))


(defcfun ("_wrap_btCylinderShape_makeCPlusPlusInstance__SWIG_0"
          cylinder-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShape_deleteCPlusPlusInstance__SWIG_0"
          cylinder-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShape_makeCPlusPlusInstance__SWIG_1"
          cylinder-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShape_deleteCPlusPlusInstance__SWIG_1"
          cylinder-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCylinderShape_makeCPlusArray__SWIG_0"
          cylinder-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShape_deleteCPlusArray__SWIG_0"
          cylinder-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShape_makeCPlusArray__SWIG_1"
          cylinder-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShape_deleteCPlusArray__SWIG_1"
          cylinder-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCylinderShape_getHalfExtentsWithMargin"
          cylinder-shape/get-half-extents-with-margin) :pointer
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_getHalfExtentsWithoutMargin"
          cylinder-shape/get-half-extents-without-margin) :pointer
  (self :pointer))

(defcfun ("_wrap_new_btCylinderShape"
          make-cylinder-shape) :pointer
  (halfExtents :pointer))

(defcfun ("_wrap_btCylinderShape_getAabb"
          cylinder-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btCylinderShape_calculateLocalInertia"
          cylinder-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btCylinderShape_localGetSupportingVertexWithoutMargin"
          cylinder-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btCylinderShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          cylinder-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btCylinderShape_setMargin"
          cylinder-shape/set-margin) :void
  (self :pointer)
  (collisionMargin :float))

(defcfun ("_wrap_btCylinderShape_localGetSupportingVertex"
          cylinder-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btCylinderShape_getUpAxis"
          cylinder-shape/get-up-axis) :int
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_getAnisotropicRollingFrictionDirection"
          cylinder-shape/get-anisotropic-rolling-friction-direction) :pointer
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_getRadius"
          cylinder-shape/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_setLocalScaling"
          cylinder-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btCylinderShape_getName"
          cylinder-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_calculateSerializeBufferSize"
          cylinder-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btCylinderShape_serialize"
          cylinder-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btCylinderShape"
          delete/bt-cylinder-shape) :void
  (self :pointer))

(defcfun ("_wrap_btCylinderShapeX_makeCPlusPlusInstance__SWIG_0"
          cylinder-shape-x/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShapeX_deleteCPlusPlusInstance__SWIG_0"
          cylinder-shape-x/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeX_makeCPlusPlusInstance__SWIG_1"
          cylinder-shape-x/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeX_deleteCPlusPlusInstance__SWIG_1"
          cylinder-shape-x/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCylinderShapeX_makeCPlusArray__SWIG_0"
          cylinder-shape-x/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShapeX_deleteCPlusArray__SWIG_0"
          cylinder-shape-x/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeX_makeCPlusArray__SWIG_1"
          cylinder-shape-x/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeX_deleteCPlusArray__SWIG_1"
          cylinder-shape-x/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btCylinderShapeX"
          make-cylinder-shape-x) :pointer
  (halfExtents :pointer))

(defcfun ("_wrap_btCylinderShapeX_localGetSupportingVertexWithoutMargin"
          cylinder-shape-x/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btCylinderShapeX_batchedUnitVectorGetSupportingVertexWithoutMargin"
          cylinder-shape-x/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btCylinderShapeX_getName"
          cylinder-shape-x/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btCylinderShapeX_getRadius"
          cylinder-shape-x/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_delete_btCylinderShapeX"
          delete/bt-cylinder-shape-x) :void
  (self :pointer))

(defcfun ("_wrap_btCylinderShapeZ_makeCPlusPlusInstance__SWIG_0"
          cylinder-shape-z/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShapeZ_deleteCPlusPlusInstance__SWIG_0"
          cylinder-shape-z/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeZ_makeCPlusPlusInstance__SWIG_1"
          cylinder-shape-z/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeZ_deleteCPlusPlusInstance__SWIG_1"
          cylinder-shape-z/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCylinderShapeZ_makeCPlusArray__SWIG_0"
          cylinder-shape-z/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCylinderShapeZ_deleteCPlusArray__SWIG_0"
          cylinder-shape-z/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeZ_makeCPlusArray__SWIG_1"
          cylinder-shape-z/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCylinderShapeZ_deleteCPlusArray__SWIG_1"
          cylinder-shape-z/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btCylinderShapeZ"
          make-cylinder-shape-z) :pointer
  (halfExtents :pointer))

(defcfun ("_wrap_btCylinderShapeZ_localGetSupportingVertexWithoutMargin"
          cylinder-shape-z/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btCylinderShapeZ_batchedUnitVectorGetSupportingVertexWithoutMargin"
          cylinder-shape-z/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btCylinderShapeZ_getName"
          cylinder-shape-z/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btCylinderShapeZ_getRadius"
          cylinder-shape-z/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_delete_btCylinderShapeZ"
          delete/bt-cylinder-shape-z) :void
  (self :pointer))


(defcfun ("_wrap_btConeShape_makeCPlusPlusInstance__SWIG_0"
          cone-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConeShape_deleteCPlusPlusInstance__SWIG_0"
          cone-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeShape_makeCPlusPlusInstance__SWIG_1"
          cone-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeShape_deleteCPlusPlusInstance__SWIG_1"
          cone-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btConeShape_makeCPlusArray__SWIG_0"
          cone-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConeShape_deleteCPlusArray__SWIG_0"
          cone-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeShape_makeCPlusArray__SWIG_1"
          cone-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConeShape_deleteCPlusArray__SWIG_1"
          cone-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btConeShape"
          make-cone-shape) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btConeShape_localGetSupportingVertex"
          cone-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConeShape_localGetSupportingVertexWithoutMargin"
          cone-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConeShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          cone-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btConeShape_getRadius"
          cone-shape/get-radius) :float
  (self :pointer))

(defcfun ("_wrap_btConeShape_getHeight"
          cone-shape/get-height) :float
  (self :pointer))

(defcfun ("_wrap_btConeShape_calculateLocalInertia"
          cone-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btConeShape_getName"
          cone-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btConeShape_setConeUpIndex"
          cone-shape/set-cone-up-index) :void
  (self :pointer)
  (upIndex :int))

(defcfun ("_wrap_btConeShape_getConeUpIndex"
          cone-shape/get-cone-up-index) :int
  (self :pointer))

(defcfun ("_wrap_btConeShape_getAnisotropicRollingFrictionDirection"
          cone-shape/get-anisotropic-rolling-friction-direction) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeShape_setLocalScaling"
          cone-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btConeShape_calculateSerializeBufferSize"
          cone-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btConeShape_serialize"
          cone-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btConeShape"
          delete/bt-cone-shape) :void
  (self :pointer))

(defcfun ("_wrap_new_btConeShapeX"
          make-cone-shape-x) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btConeShapeX_getAnisotropicRollingFrictionDirection"
          cone-shape-x/get-anisotropic-rolling-friction-direction) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeShapeX_getName"
          cone-shape-x/get-name) :string
  (self :pointer))

(defcfun ("_wrap_delete_btConeShapeX"
          delete/bt-cone-shape-x) :void
  (self :pointer))

(defcfun ("_wrap_new_btConeShapeZ"
          make-cone-shape-z) :pointer
  (radius :float)
  (height :float))

(defcfun ("_wrap_btConeShapeZ_getAnisotropicRollingFrictionDirection"
          cone-shape-z/get-anisotropic-rolling-friction-direction) :pointer
  (self :pointer))

(defcfun ("_wrap_btConeShapeZ_getName"
          cone-shape-z/get-name) :string
  (self :pointer))

(defcfun ("_wrap_delete_btConeShapeZ"
          delete/bt-cone-shape-z) :void
  (self :pointer))


(defcfun ("_wrap_btStaticPlaneShape_makeCPlusPlusInstance__SWIG_0"
          static-plane-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btStaticPlaneShape_deleteCPlusPlusInstance__SWIG_0"
          static-plane-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btStaticPlaneShape_makeCPlusPlusInstance__SWIG_1"
          static-plane-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btStaticPlaneShape_deleteCPlusPlusInstance__SWIG_1"
          static-plane-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btStaticPlaneShape_makeCPlusArray__SWIG_0"
          static-plane-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btStaticPlaneShape_deleteCPlusArray__SWIG_0"
          static-plane-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btStaticPlaneShape_makeCPlusArray__SWIG_1"
          static-plane-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btStaticPlaneShape_deleteCPlusArray__SWIG_1"
          static-plane-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btStaticPlaneShape"
          make-static-plane-shape) :pointer
  (planeNormal :pointer)
  (planeConstant :float))

(defcfun ("_wrap_delete_btStaticPlaneShape"
          delete/bt-static-plane-shape) :void
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_getAabb"
          static-plane-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btStaticPlaneShape_processAllTriangles"
          static-plane-shape/process-all-triangles) :void
  (self :pointer)
  (callback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btStaticPlaneShape_calculateLocalInertia"
          static-plane-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btStaticPlaneShape_setLocalScaling"
          static-plane-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btStaticPlaneShape_getLocalScaling"
          static-plane-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_getPlaneNormal"
          static-plane-shape/get-plane-normal) :pointer
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_getPlaneConstant"
          static-plane-shape/get-plane-constant) :pointer
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_getName"
          static-plane-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_calculateSerializeBufferSize"
          static-plane-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btStaticPlaneShape_serialize"
          static-plane-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))


(defcfun ("_wrap_btConvexHullShape_makeCPlusPlusInstance__SWIG_0"
          convex-hull-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConvexHullShape_deleteCPlusPlusInstance__SWIG_0"
          convex-hull-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexHullShape_makeCPlusPlusInstance__SWIG_1"
          convex-hull-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexHullShape_deleteCPlusPlusInstance__SWIG_1"
          convex-hull-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btConvexHullShape_makeCPlusArray__SWIG_0"
          convex-hull-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConvexHullShape_deleteCPlusArray__SWIG_0"
          convex-hull-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexHullShape_makeCPlusArray__SWIG_1"
          convex-hull-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexHullShape_deleteCPlusArray__SWIG_1"
          convex-hull-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btConvexHullShape__SWIG_0"
          make-convex-hull-shape/with-num-points&stride) :pointer
  (points :pointer)
  (numPoints :int)
  (stride :int))

(defcfun ("_wrap_new_btConvexHullShape__SWIG_1"
          make-convex-hull-shape/with-num-points) :pointer
  (points :pointer)
  (numPoints :int))

(defcfun ("_wrap_new_btConvexHullShape__SWIG_2"
          make-convex-hull-shape/with-points) :pointer
  (points :pointer))

(defcfun ("_wrap_new_btConvexHullShape__SWIG_3"
          make-convex-hull-shape/naked) :pointer)

(defcfun ("_wrap_btConvexHullShape_addPoint__SWIG_0"
          convex-hull-shape/add-point/with-recalculate-local-aabb) :void
  (self :pointer)
  (point :pointer)
  (recalculateLocalAabb :pointer))
(defcfun ("_wrap_btConvexHullShape_addPoint__SWIG_1"
          convex-hull-shape/add-point) :void
  (self :pointer)
  (point :pointer))

(defcfun ("_wrap_btConvexHullShape_getUnscaledPoints__SWIG_0"
          convex-hull-shape/get-unscaled-points) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btConvexHullShape_getUnscaledPoints__SWIG_1"
          convex-hull-shape/get-unscaled-points) :pointer
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getPoints"
          convex-hull-shape/get-points) :pointer
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getScaledPoint"
          convex-hull-shape/get-scaled-point) :pointer
  (self :pointer)
  (i :int))

(defcfun ("_wrap_btConvexHullShape_getNumPoints"
          convex-hull-shape/get-num-points) :int
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_localGetSupportingVertex"
          convex-hull-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConvexHullShape_localGetSupportingVertexWithoutMargin"
          convex-hull-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConvexHullShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          convex-hull-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btConvexHullShape_project"
          convex-hull-shape/project) :void
  (self :pointer)
  (trans :pointer)
  (dir :pointer)
  (minProj :pointer)
  (maxProj :pointer)
  (witnesPtMin :pointer)
  (witnesPtMax :pointer))

(defcfun ("_wrap_btConvexHullShape_getName"
          convex-hull-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getNumVertices"
          convex-hull-shape/get-num-vertices) :int
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getNumEdges"
          convex-hull-shape/get-num-edges) :int
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getEdge"
          convex-hull-shape/get-edge) :void
  (self :pointer)
  (i :int)
  (pa :pointer)
  (pb :pointer))

(defcfun ("_wrap_btConvexHullShape_getVertex"
          convex-hull-shape/get-vertex) :void
  (self :pointer)
  (i :int)
  (vtx :pointer))

(defcfun ("_wrap_btConvexHullShape_getNumPlanes"
          convex-hull-shape/get-num-planes) :int
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_getPlane"
          convex-hull-shape/get-plane) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeSupport :pointer)
  (i :int))

(defcfun ("_wrap_btConvexHullShape_isInside"
          convex-hull-shape/is-inside) :pointer
  (self :pointer)
  (pt :pointer)
  (tolerance :float))

(defcfun ("_wrap_btConvexHullShape_setLocalScaling"
          convex-hull-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btConvexHullShape_calculateSerializeBufferSize"
          convex-hull-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btConvexHullShape_serialize"
          convex-hull-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btConvexHullShape"
          delete/bt-convex-hull-shape) :void
  (self :pointer))


(defcfun ("_wrap_btTriangleMesh_m_weldingThreshold_set"
          triangle-mesh/welding-threshold/set) :void
  (self :pointer)
  (m_weldingThreshold :float))

(defcfun ("_wrap_btTriangleMesh_m_weldingThreshold_get"
          triangle-mesh/welding-threshold/get) :float
  (self :pointer))

(defcfun ("_wrap_new_btTriangleMesh__SWIG_0"
          make-triangle-mesh/with-use-32-bit-indices&use-4-component-vertices) :pointer
  (use32bitIndices :pointer)
  (use4componentVertices :pointer))

(defcfun ("_wrap_new_btTriangleMesh__SWIG_1"
          make-triangle-mesh/with-use-32-bit-indices) :pointer
  (use32bitIndices :pointer))

(defcfun ("_wrap_new_btTriangleMesh__SWIG_2"
          make-triangle-mesh/naked) :pointer)

(defcfun ("_wrap_btTriangleMesh_getUse32bitIndices"
          triangle-mesh/get-use-32bit-indices) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMesh_getUse4componentVertices"
          triangle-mesh/get-use-4component-vertices) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMesh_addTriangle__SWIG_0"
          triangle-mesh/add-triangle) :void
  (self :pointer)
  (vertex0 :pointer)
  (vertex1 :pointer)
  (vertex2 :pointer)
  (removeDuplicateVertices :pointer))

(defcfun ("_wrap_btTriangleMesh_addTriangle__SWIG_1"
          triangle-mesh/add-triangle/with-3-vertices) :void
  (self :pointer)
  (vertex0 :pointer)
  (vertex1 :pointer)
  (vertex2 :pointer))

(defcfun ("_wrap_btTriangleMesh_getNumTriangles"
          triangle-mesh/get-num-triangles) :int
  (self :pointer))

(defcfun ("_wrap_btTriangleMesh_preallocateVertices"
          triangle-mesh/preallocate-vertices) :void
  (self :pointer)
  (numverts :int))

(defcfun ("_wrap_btTriangleMesh_preallocateIndices"
          triangle-mesh/preallocate-indices) :void
  (self :pointer)
  (numindices :int))

(defcfun ("_wrap_btTriangleMesh_findOrAddVertex"
          triangle-mesh/find-or-add-vertex) :int
  (self :pointer)
  (vertex :pointer)
  (removeDuplicateVertices :pointer))

(defcfun ("_wrap_btTriangleMesh_addIndex"
          triangle-mesh/add-index) :void
  (self :pointer)
  (index :int))

(defcfun ("_wrap_delete_btTriangleMesh"
          delete/bt-triangle-mesh) :void
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_makeCPlusPlusInstance__SWIG_0"
          convex-triangle-mesh-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_deleteCPlusPlusInstance__SWIG_0"
          convex-triangle-mesh-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_makeCPlusPlusInstance__SWIG_1"
          convex-triangle-mesh-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_deleteCPlusPlusInstance__SWIG_1"
          convex-triangle-mesh-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_makeCPlusArray__SWIG_0"
          convex-triangle-mesh-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_deleteCPlusArray__SWIG_0"
          convex-triangle-mesh-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_makeCPlusArray__SWIG_1"
          convex-triangle-mesh-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_deleteCPlusArray__SWIG_1"
          convex-triangle-mesh-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btConvexTriangleMeshShape__SWIG_0"
          make-convex-triangle-mesh-shape/with-calc-aabb) :pointer
  (meshInterface :pointer)
  (calcAabb :pointer))

(defcfun ("_wrap_new_btConvexTriangleMeshShape__SWIG_1"
          make-convex-triangle-mesh-shape) :pointer
  (meshInterface :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getMeshInterface__SWIG_0"
          convex-triangle-mesh-shape/get-mesh-interface) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btConvexTriangleMeshShape_getMeshInterface__SWIG_1"
          convex-triangle-mesh-shape/get-mesh-interface) :pointer
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_localGetSupportingVertex"
          convex-triangle-mesh-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin"
          convex-triangle-mesh-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          convex-triangle-mesh-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btConvexTriangleMeshShape_getName"
          convex-triangle-mesh-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getNumVertices"
          convex-triangle-mesh-shape/get-num-vertices) :int
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getNumEdges"
          convex-triangle-mesh-shape/get-num-edges) :int
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getEdge"
          convex-triangle-mesh-shape/get-edge) :void
  (self :pointer)
  (i :int)
  (pa :pointer)
  (pb :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getVertex"
          convex-triangle-mesh-shape/get-vertex) :void
  (self :pointer)
  (i :int)
  (vtx :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getNumPlanes"
          convex-triangle-mesh-shape/get-num-planes) :int
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getPlane"
          convex-triangle-mesh-shape/get-plane) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeSupport :pointer)
  (i :int))

(defcfun ("_wrap_btConvexTriangleMeshShape_isInside"
          convex-triangle-mesh-shape/is-inside) :pointer
  (self :pointer)
  (pt :pointer)
  (tolerance :float))

(defcfun ("_wrap_btConvexTriangleMeshShape_setLocalScaling"
          convex-triangle-mesh-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_getLocalScaling"
          convex-triangle-mesh-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btConvexTriangleMeshShape_calculatePrincipalAxisTransform"
          convex-triangle-mesh-shape/calculate-principal-axis-transform) :void
  (self :pointer)
  (principal :pointer)
  (inertia :pointer)
  (volume :pointer))

(defcfun ("_wrap_delete_btConvexTriangleMeshShape"
          delete/bt-convex-triangle-mesh-shape) :void
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_makeCPlusPlusInstance__SWIG_0"
          bvh-triangle-mesh-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_deleteCPlusPlusInstance__SWIG_0"
          bvh-triangle-mesh-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_makeCPlusPlusInstance__SWIG_1"
          bvh-triangle-mesh-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_deleteCPlusPlusInstance__SWIG_1"
          bvh-triangle-mesh-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_makeCPlusArray__SWIG_0"
          bvh-triangle-mesh-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_deleteCPlusArray__SWIG_0"
          bvh-triangle-mesh-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_makeCPlusArray__SWIG_1"
          bvh-triangle-mesh-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_deleteCPlusArray__SWIG_1"
          bvh-triangle-mesh-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btBvhTriangleMeshShape__SWIG_0"
          make-bvh-triangle-mesh-shape/with-mesh-interface&use-quantized-aabb-compression&build-bvh)
    :pointer
  (meshInterface :pointer)
  (useQuantizedAabbCompression :pointer)
  (buildBvh :pointer))

(defcfun ("_wrap_new_btBvhTriangleMeshShape__SWIG_1"
          make-bvh-triangle-mesh-shape) :pointer
  (meshInterface :pointer)
  (useQuantizedAabbCompression :pointer))

(defcfun ("_wrap_new_btBvhTriangleMeshShape__SWIG_2"
          make-bvh-triangle-mesh-shape/with-mesh-interface&use-quantized-aabb-compression&bvhaabb-min&max&build-bvh)
    :pointer
  (meshInterface :pointer)
  (useQuantizedAabbCompression :pointer)
  (bvhAabbMin :pointer)
  (bvhAabbMax :pointer)
  (buildBvh :pointer))

(defcfun ("_wrap_new_btBvhTriangleMeshShape__SWIG_3"
          make-bvh-triangle-mesh-shape/with-mesh-interface&use-quantized-aabb-compression&bvhaabb-min&max)
    :pointer
  (meshInterface :pointer)
  (useQuantizedAabbCompression :pointer)
  (bvhAabbMin :pointer)
  (bvhAabbMax :pointer))

(defcfun ("_wrap_delete_btBvhTriangleMeshShape"
          delete/bt-bvh-triangle-mesh-shape) :void
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_getOwnsBvh"
          bvh-triangle-mesh-shape/get-owns-bvh) :pointer
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_performRaycast"
          bvh-triangle-mesh-shape/perform-raycast) :void
  (self :pointer)
  (callback :pointer)
  (raySource :pointer)
  (rayTarget :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_performConvexcast"
          bvh-triangle-mesh-shape/perform-convexcast) :void
  (self :pointer)
  (callback :pointer)
  (boxSource :pointer)
  (boxTarget :pointer)
  (boxMin :pointer)
  (boxMax :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_processAllTriangles"
          bvh-triangle-mesh-shape/process-all-triangles) :void
  (self :pointer)
  (callback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_refitTree"
          bvh-triangle-mesh-shape/refit-tree) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_partialRefitTree"
          bvh-triangle-mesh-shape/partial-refit-tree) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_getName"
          bvh-triangle-mesh-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_setLocalScaling"
          bvh-triangle-mesh-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_getOptimizedBvh"
          bvh-triangle-mesh-shape/get-optimized-bvh) :pointer
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_setOptimizedBvh__SWIG_0"
          bvh-triangle-mesh-shape/set-optimized-bvh/with-local-scaling) :void
  (self :pointer)
  (bvh :pointer)
  (localScaling :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_setOptimizedBvh__SWIG_1"
          bvh-triangle-mesh-shape/set-optimized-bvh) :void
  (self :pointer)
  (bvh :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_buildOptimizedBvh"
          bvh-triangle-mesh-shape/build-optimized-bvh) :void
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_usesQuantizedAabbCompression"
          bvh-triangle-mesh-shape/uses-quantized-aabb-compression) :pointer
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_setTriangleInfoMap"
          bvh-triangle-mesh-shape/set-triangle-info-map) :void
  (self :pointer)
  (triangleInfoMap :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_getTriangleInfoMap__SWIG_0"
          bvh-triangle-mesh-shape/get-triangle-info-map) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btBvhTriangleMeshShape_getTriangleInfoMap__SWIG_1"
          bvh-triangle-mesh-shape/get-triangle-info-map) :pointer
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_calculateSerializeBufferSize"
          bvh-triangle-mesh-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_serialize"
          bvh-triangle-mesh-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_serializeSingleBvh"
          bvh-triangle-mesh-shape/serialize-single-bvh) :void
  (self :pointer)
  (serializer :pointer))

(defcfun ("_wrap_btBvhTriangleMeshShape_serializeSingleTriangleInfoMap"
          bvh-triangle-mesh-shape/serialize-single-triangle-info-map) :void
  (self :pointer)
  (serializer :pointer))


(defcfun ("_wrap_btScaledBvhTriangleMeshShape_makeCPlusPlusInstance__SWIG_0"
          scaled-bvh-triangle-mesh-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_deleteCPlusPlusInstance__SWIG_0"
          scaled-bvh-triangle-mesh-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_makeCPlusPlusInstance__SWIG_1"
          scaled-bvh-triangle-mesh-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_deleteCPlusPlusInstance__SWIG_1"
          scaled-bvh-triangle-mesh-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_makeCPlusArray__SWIG_0"
          scaled-bvh-triangle-mesh-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_deleteCPlusArray__SWIG_0"
          scaled-bvh-triangle-mesh-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_makeCPlusArray__SWIG_1"
          scaled-bvh-triangle-mesh-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_deleteCPlusArray__SWIG_1"
          scaled-bvh-triangle-mesh-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btScaledBvhTriangleMeshShape"
          make-scaled-bvh-triangle-mesh-shape) :pointer
  (childShape :pointer)
  (localScaling :pointer))

(defcfun ("_wrap_delete_btScaledBvhTriangleMeshShape"
          delete/bt-scaled-bvh-triangle-mesh-shape) :void
  (self :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_getAabb"
          scaled-bvh-triangle-mesh-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_setLocalScaling"
          scaled-bvh-triangle-mesh-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_getLocalScaling"
          scaled-bvh-triangle-mesh-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_calculateLocalInertia"
          scaled-bvh-triangle-mesh-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_processAllTriangles"
          scaled-bvh-triangle-mesh-shape/process-all-triangles) :void
  (self :pointer)
  (callback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_getChildShape__SWIG_0"
          scaled-bvh-triangle-mesh-shape/get-child-shape) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btScaledBvhTriangleMeshShape_getChildShape__SWIG_1"
          scaled-bvh-triangle-mesh-shape/get-child-shape) :pointer
  (self :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_getName"
          scaled-bvh-triangle-mesh-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_calculateSerializeBufferSize"
          scaled-bvh-triangle-mesh-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btScaledBvhTriangleMeshShape_serialize"
          scaled-bvh-triangle-mesh-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))


(defcfun ("_wrap_btTriangleMeshShape_makeCPlusPlusInstance__SWIG_0"
          triangle-mesh-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTriangleMeshShape_deleteCPlusPlusInstance__SWIG_0"
          triangle-mesh-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleMeshShape_makeCPlusPlusInstance__SWIG_1"
          triangle-mesh-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleMeshShape_deleteCPlusPlusInstance__SWIG_1"
          triangle-mesh-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btTriangleMeshShape_makeCPlusArray__SWIG_0"
          triangle-mesh-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTriangleMeshShape_deleteCPlusArray__SWIG_0"
          triangle-mesh-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleMeshShape_makeCPlusArray__SWIG_1"
          triangle-mesh-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleMeshShape_deleteCPlusArray__SWIG_1"
          triangle-mesh-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_delete_btTriangleMeshShape"
          delete/bt-triangle-mesh-shape) :void
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_localGetSupportingVertex"
          triangle-mesh-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btTriangleMeshShape_localGetSupportingVertexWithoutMargin"
          triangle-mesh-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btTriangleMeshShape_recalcLocalAabb"
          triangle-mesh-shape/recalc-local-aabb) :void
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getAabb"
          triangle-mesh-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btTriangleMeshShape_processAllTriangles"
          triangle-mesh-shape/process-all-triangles) :void
  (self :pointer)
  (callback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btTriangleMeshShape_calculateLocalInertia"
          triangle-mesh-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btTriangleMeshShape_setLocalScaling"
          triangle-mesh-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getLocalScaling"
          triangle-mesh-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getMeshInterface__SWIG_0"
          triangle-mesh-shape/get-mesh-interface) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTriangleMeshShape_getMeshInterface__SWIG_1"
          triangle-mesh-shape/get-mesh-interface) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getLocalAabbMin"
          triangle-mesh-shape/get-local-aabb-min) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getLocalAabbMax"
          triangle-mesh-shape/get-local-aabb-max) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleMeshShape_getName"
          triangle-mesh-shape/get-name) :string
  (self :pointer))



(defcfun ("_wrap_btTriangleIndexVertexArray_makeCPlusPlusInstance__SWIG_0"
          triangle-index-vertex-array/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_deleteCPlusPlusInstance__SWIG_0"
          triangle-index-vertex-array/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_makeCPlusPlusInstance__SWIG_1"
          triangle-index-vertex-array/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_deleteCPlusPlusInstance__SWIG_1"
          triangle-index-vertex-array/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_makeCPlusArray__SWIG_0"
          triangle-index-vertex-array/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_deleteCPlusArray__SWIG_0"
          triangle-index-vertex-array/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_makeCPlusArray__SWIG_1"
          triangle-index-vertex-array/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_deleteCPlusArray__SWIG_1"
          triangle-index-vertex-array/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btTriangleIndexVertexArray__SWIG_0"
          make-triangle-index-vertex-array) :pointer)

(defcfun ("_wrap_delete_btTriangleIndexVertexArray"
          delete/bt-triangle-index-vertex-array) :void
  (self :pointer))

(defcfun ("_wrap_new_btTriangleIndexVertexArray__SWIG_1"
          make-triangle-index-vertex-array/with-triangle-index-base&stride&num-vertices&vertex-base&stride)
    :pointer
  (numTriangles :int)
  (triangleIndexBase :pointer)
  (triangleIndexStride :int)
  (numVertices :int)
  (vertexBase :pointer)
  (vertexStride :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_addIndexedMesh__SWIG_0"
          triangle-index-vertex-array/add-indexed-mesh/with-index-type) :void
  (self :pointer)
  (mesh :pointer)
  (indexType :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_addIndexedMesh__SWIG_1"
          triangle-index-vertex-array/add-indexed-mesh) :void
  (self :pointer)
  (mesh :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_getLockedVertexIndexBase__SWIG_0"
          triangle-index-vertex-array/get-locked-vertex-index-base/with-v&n&t&v&i&i&n&i&s) :void
  (self :pointer)
  (vertexbase :pointer)
  (numverts :pointer)
  (type :pointer)
  (vertexStride :pointer)
  (indexbase :pointer)
  (indexstride :pointer)
  (numfaces :pointer)
  (indicestype :pointer)
  (subpart :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_getLockedVertexIndexBase__SWIG_1"
          triangle-index-vertex-array/get-locked-vertex-index-base/with-v&n&t&v&i&i&n&i) :void
  (self :pointer)
  (vertexbase :pointer)
  (numverts :pointer)
  (type :pointer)
  (vertexStride :pointer)
  (indexbase :pointer)
  (indexstride :pointer)
  (numfaces :pointer)
  (indicestype :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_getLockedReadOnlyVertexIndexBase__SWIG_0"
          triangle-index-vertex-array/get-locked-read-only-vertex-index-base/with-v&n&t&v&i&i&n&i&s) :void
  (self :pointer)
  (vertexbase :pointer)
  (numverts :pointer)
  (type :pointer)
  (vertexStride :pointer)
  (indexbase :pointer)
  (indexstride :pointer)
  (numfaces :pointer)
  (indicestype :pointer)
  (subpart :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_getLockedReadOnlyVertexIndexBase__SWIG_1"
          triangle-index-vertex-array/get-locked-read-only-vertex-index-base/with-v&n&t&v&i&i&n&i) :void
  (self :pointer)
  (vertexbase :pointer)
  (numverts :pointer)
  (type :pointer)
  (vertexStride :pointer)
  (indexbase :pointer)
  (indexstride :pointer)
  (numfaces :pointer)
  (indicestype :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_unLockVertexBase"
          triangle-index-vertex-array/un-lock-vertex-base) :void
  (self :pointer)
  (subpart :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_unLockReadOnlyVertexBase"
          triangle-index-vertex-array/un-lock-read-only-vertex-base) :void
  (self :pointer)
  (subpart :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_getNumSubParts"
          triangle-index-vertex-array/get-num-sub-parts) :int
  (self :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_getIndexedMeshArray__SWIG_0"
          triangle-index-vertex-array/get-indexed-mesh-array) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btTriangleIndexVertexArray_getIndexedMeshArray__SWIG_1"
          triangle-index-vertex-array/get-indexed-mesh-array) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_preallocateVertices"
          triangle-index-vertex-array/preallocate-vertices) :void
  (self :pointer)
  (numverts :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_preallocateIndices"
          triangle-index-vertex-array/preallocate-indices) :void
  (self :pointer)
  (numindices :int))

(defcfun ("_wrap_btTriangleIndexVertexArray_hasPremadeAabb"
          triangle-index-vertex-array/has-premade-aabb) :pointer
  (self :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_setPremadeAabb"
          triangle-index-vertex-array/set-premade-aabb) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btTriangleIndexVertexArray_getPremadeAabb"
          triangle-index-vertex-array/get-premade-aabb) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))


(defcfun ("_wrap_btCompoundShape_makeCPlusPlusInstance__SWIG_0"
          compound-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCompoundShape_deleteCPlusPlusInstance__SWIG_0"
          compound-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCompoundShape_makeCPlusPlusInstance__SWIG_1"
          compound-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCompoundShape_deleteCPlusPlusInstance__SWIG_1"
          compound-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btCompoundShape_makeCPlusArray__SWIG_0"
          compound-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btCompoundShape_deleteCPlusArray__SWIG_0"
          compound-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCompoundShape_makeCPlusArray__SWIG_1"
          compound-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCompoundShape_deleteCPlusArray__SWIG_1"
          compound-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

