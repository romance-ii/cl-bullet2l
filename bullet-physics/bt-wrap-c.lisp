(in-package #:bullet-physics)

(defcfun ("_wrap_new_btCompoundShape__SWIG_0"
          make-compound-shape/with-enable-dynamic-aabb-tree) :pointer
  (enable-dynamic-aabb-tree :pointer))

(defcfun ("_wrap_new_btCompoundShape__SWIG_1"
          make-compound-shape) :pointer)

(defcfun ("_wrap_delete_btCompoundShape"
          delete/bt-compound-shape) :void
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_addChildShape"
          compound-shape/add-child-shape) :void
  (self :pointer)
  (local-Transform :pointer)
  (shape :pointer))

(defcfun ("_wrap_btCompoundShape_removeChildShape"
          compound-shape/remove-child-shape) :void
  (self :pointer)
  (shape :pointer))

(defcfun ("_wrap_btCompoundShape_removeChildShapeByIndex"
          compound-shape/remove-child-shape-by-index) :void
  (self :pointer)
  (childShapeindex :int))

(defcfun ("_wrap_btCompoundShape_getNumChildShapes"
          compound-shape/get-num-child-shapes) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getChildShape__SWIG_0"
          compound-shape/get-child-shape) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getChildShape__SWIG_1"
          compound-shape/get-child-shape) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btCompoundShape_getChildTransform__SWIG_0"
          compound-shape/get-child-transform) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getChildTransform__SWIG_1"
          compound-shape/get-child-transform) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btCompoundShape_updateChildTransform__SWIG_0"
          compound-shape/update-child-transform/with-child-index&new-child-transform&should-recalculate-local-aabb)
    :void
  (self :pointer)
  (childIndex :int)
  (newChildTransform :pointer)
  (shouldRecalculateLocalAabb :pointer))

(defcfun ("_wrap_btCompoundShape_updateChildTransform__SWIG_1"
          compound-shape/update-child-transform/with-child-index&new-child-transform)
    :void
  (self :pointer)
  (childIndex :int)
  (newChildTransform :pointer))

(defcfun ("_wrap_btCompoundShape_getChildList"
          compound-shape/get-child-list) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getAabb"
          compound-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btCompoundShape_recalculateLocalAabb"
          compound-shape/recalculate-local-aabb) :void
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_setLocalScaling"
          compound-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btCompoundShape_getLocalScaling"
          compound-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculateLocalInertia"
          compound-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btCompoundShape_setMargin"
          compound-shape/set-margin) :void
  (self :pointer)
  (margin :float))

(defcfun ("_wrap_btCompoundShape_getMargin"
          compound-shape/get-margin) :float
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getName"
          compound-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getDynamicAabbTree__SWIG_0"
          compound-shape/get-dynamic-aabb-tree) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getDynamicAabbTree__SWIG_1"
          compound-shape/get-dynamic-aabb-tree) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_createAabbTreeFromChildren"
          compound-shape/create-aabb-tree-from-children) :void
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculatePrincipalAxisTransform"
          compound-shape/calculate-principal-axis-transform) :void
  (self :pointer)
  (masses :pointer)
  (principal :pointer)
  (inertia :pointer))

(defcfun ("_wrap_btCompoundShape_getUpdateRevision"
          compound-shape/get-update-revision) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculateSerializeBufferSize"
          compound-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_serialize"
          compound-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))


(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusPlusInstance__SWIG_0"
          bu/simplex-1to-4/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusPlusInstance__SWIG_0"
          bu/simplex-1to-4/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusPlusInstance__SWIG_1"
          bu/simplex-1to-4/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusPlusInstance__SWIG_1"
          bu/simplex-1to-4/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusArray__SWIG_0"
          bu/simplex-1to-4/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusArray__SWIG_0"
          bu/simplex-1to-4/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusArray__SWIG_1"
          bu/simplex-1to-4/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusArray__SWIG_1"
          bu/simplex-1to-4/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_0"
          make-bu/simplex-1to-4) :pointer)

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_1"
          make-bu/simplex-1to-4/with-pt0) :pointer
  (pt0 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_2"
          make-bu/simplex-1to-4/with-pt0&1) :pointer
  (pt0 :pointer)
  (pt1 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_3"
          make-bu/simplex-1to-4/with-pt0-2) :pointer
  (pt0 :pointer)
  (pt1 :pointer)
  (pt2 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_4"
          make-bu/simplex-1to-4/with-pt0-3) :pointer
  (pt0 :pointer)
  (pt1 :pointer)
  (pt2 :pointer)
  (pt3 :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_reset"
          bu/simplex-1to-4/reset) :void
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getAabb"
          bu/simplex-1to-4/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_addVertex"
          bu/simplex-1to-4/add-vertex) :void
  (self :pointer)
  (pt :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumVertices"
          bu/simplex-1to-4/get-num-vertices) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumEdges"
          bu/simplex-1to-4/get-num-edges) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getEdge"
          bu/simplex-1to-4/get-edge) :void
  (self :pointer)
  (i :int)
  (pa :pointer)
  (pb :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getVertex"
          bu/simplex-1to-4/get-vertex) :void
  (self :pointer)
  (i :int)
  (vtx :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumPlanes"
          bu/simplex-1to-4/get-num-planes) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getPlane"
          bu/simplex-1to-4/get-plane) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeSupport :pointer)
  (i :int))

(defcfun ("_wrap_btBU_Simplex1to4_getIndex"
          bu/simplex-1to-4/get-index) :int
  (self :pointer)
  (i :int))

(defcfun ("_wrap_btBU_Simplex1to4_isInside"
          bu/simplex-1to-4/is-inside) :pointer
  (self :pointer)
  (pt :pointer)
  (tolerance :float))

(defcfun ("_wrap_btBU_Simplex1to4_getName"
          bu/simplex-1to-4/get-name) :string
  (self :pointer))

(defcfun ("_wrap_delete_btBU_Simplex1to4"
          delete/bt-bu/simplex-1to-4) :void
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusPlusInstance__SWIG_0"
          empty-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusPlusInstance__SWIG_0"
          empty-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusPlusInstance__SWIG_1"
          empty-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusPlusInstance__SWIG_1"
          empty-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusArray__SWIG_0"
          empty-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusArray__SWIG_0"
          empty-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusArray__SWIG_1"
          empty-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusArray__SWIG_1"
          empty-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btEmptyShape"
          make-empty-shape) :pointer)

(defcfun ("_wrap_delete_btEmptyShape"
          delete/bt-empty-shape) :void
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_getAabb"
          empty-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btEmptyShape_setLocalScaling"
          empty-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btEmptyShape_getLocalScaling"
          empty-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_calculateLocalInertia"
          empty-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btEmptyShape_getName"
          empty-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_processAllTriangles"
          empty-shape/process-all-triangles) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer)
  (arg3 :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusPlusInstance__SWIG_0"
          multi-sphere-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusPlusInstance__SWIG_0"
          multi-sphere-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusPlusInstance__SWIG_1"
          multi-sphere-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusPlusInstance__SWIG_1"
          multi-sphere-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusArray__SWIG_0"
          multi-sphere-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusArray__SWIG_0"
          multi-sphere-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusArray__SWIG_1"
          multi-sphere-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusArray__SWIG_1"
          multi-sphere-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btMultiSphereShape"
          make-multi-sphere-shape) :pointer
  (positions :pointer)
  (radi :pointer)
  (numSpheres :int))

(defcfun ("_wrap_btMultiSphereShape_calculateLocalInertia"
          multi-sphere-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btMultiSphereShape_localGetSupportingVertexWithoutMargin"
          multi-sphere-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btMultiSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          multi-sphere-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btMultiSphereShape_getSphereCount"
          multi-sphere-shape/get-sphere-count) :int
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_getSpherePosition"
          multi-sphere-shape/get-sphere-position) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btMultiSphereShape_getSphereRadius"
          multi-sphere-shape/get-sphere-radius) :float
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btMultiSphereShape_getName"
          multi-sphere-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_calculateSerializeBufferSize"
          multi-sphere-shape/calculate-serialize-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_serialize"
          multi-sphere-shape/serialize) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btMultiSphereShape"
          delete/bt-multi-sphere-shape) :void
  (self :pointer))


(defcfun ("_wrap_btUniformScalingShape_makeCPlusPlusInstance__SWIG_0"
          uniform-scaling-shape/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusPlusInstance__SWIG_0"
          uniform-scaling-shape/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusPlusInstance__SWIG_1"
          uniform-scaling-shape/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusPlusInstance__SWIG_1"
          uniform-scaling-shape/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusArray__SWIG_0"
          uniform-scaling-shape/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusArray__SWIG_0"
          uniform-scaling-shape/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusArray__SWIG_1"
          uniform-scaling-shape/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusArray__SWIG_1"
          uniform-scaling-shape/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btUniformScalingShape"
          make-uniform-scaling-shape) :pointer
  (convexChildShape :pointer)
  (uniformScalingFactor :float))

(defcfun ("_wrap_delete_btUniformScalingShape"
          delete/bt-uniform-scaling-shape) :void
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_localGetSupportingVertexWithoutMargin"
          uniform-scaling-shape/local-get-supporting-vertex-without-margin) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btUniformScalingShape_localGetSupportingVertex"
          uniform-scaling-shape/local-get-supporting-vertex) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btUniformScalingShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
          uniform-scaling-shape/batched-unit-vector-get-supporting-vertex-without-margin) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btUniformScalingShape_calculateLocalInertia"
          uniform-scaling-shape/calculate-local-inertia) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btUniformScalingShape_getUniformScalingFactor"
          uniform-scaling-shape/get-uniform-scaling-factor) :float
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getChildShape__SWIG_0"
          uniform-scaling-shape/get-child-shape) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btUniformScalingShape_getChildShape__SWIG_1"
          uniform-scaling-shape/get-child-shape) :pointer
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getName"
          uniform-scaling-shape/get-name) :string
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getAabb"
          uniform-scaling-shape/get-aabb) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btUniformScalingShape_getAabbSlow"
          uniform-scaling-shape/get-aabb-slow) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btUniformScalingShape_setLocalScaling"
          uniform-scaling-shape/set-local-scaling) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btUniformScalingShape_getLocalScaling"
          uniform-scaling-shape/get-local-scaling) :pointer
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_setMargin"
          uniform-scaling-shape/set-margin) :void
  (self :pointer)
  (margin :float))

(defcfun ("_wrap_btUniformScalingShape_getMargin"
          uniform-scaling-shape/get-margin) :float
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getNumPreferredPenetrationDirections"
          uniform-scaling-shape/get-num-preferred-penetration-directions) :int
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getPreferredPenetrationDirection"
          uniform-scaling-shape/get-preferred-penetration-direction) :void
  (self :pointer)
  (index :int)
  (penetrationVector :pointer))

(defcfun ("_wrap_new_btSphereSphereCollisionAlgorithm__SWIG_0"
          make-sphere-sphere-collision-algorithm/with-mf&ci&cal0&1wrap) :pointer
  (mf :pointer)
  (ci :pointer)
  (col0Wrap :pointer)
  (col1Wrap :pointer))

(defcfun ("_wrap_new_btSphereSphereCollisionAlgorithm__SWIG_1"
          make-sphere-sphere-collision-algorithm/with-ci) :pointer
  (ci :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_processCollision"
          sphere-sphere-collision-algorithm/process-collision) :void
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer)
  (dispatchInfo :pointer)
  (resultOut :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_calculateTimeOfImpact"
          sphere-sphere-collision-algorithm/calculate-time-of-impact) :float
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer)
  (dispatchInfo :pointer)
  (resultOut :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_getAllContactManifolds"
          sphere-sphere-collision-algorithm/get-all-contact-manifolds) :void
  (self :pointer)
  (manifoldArray :pointer))

(defcfun ("_wrap_delete_btSphereSphereCollisionAlgorithm"
          delete/bt-sphere-sphere-collision-algorithm) :void
  (self :pointer))


(defcfun ("_wrap_new_btDefaultCollisionConfiguration__SWIG_0"
          make-default-collision-configuration/with-construction-info) :pointer
  (constructionInfo :pointer))

(defcfun ("_wrap_new_btDefaultCollisionConfiguration__SWIG_1"
          make-default-collision-configuration) :pointer)

(defcfun ("_wrap_delete_btDefaultCollisionConfiguration"
          delete/bt-default-collision-configuration) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getPersistentManifoldPool"
          default-collision-configuration/get-persistent-manifold-pool) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getCollisionAlgorithmPool"
          default-collision-configuration/get-collision-algorithm-pool) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getSimplexSolver"
          default-collision-configuration/get-simplex-solver) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc"
          default-collision-configuration/get-collision-algorithm-create-func) :pointer
  (self :pointer)
  (proxyType0 :int)
  (proxyType1 :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_0"
          default-collision-configuration/set-convex-convex-multipoint-iterations/with-num&max)
    :void
  (self :pointer)
  (numPerturbationIterations :int)
  (minimumPointsPerturbationThreshold :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_1"
          default-collision-configuration/set-convex-convex-multipoint-iterations/with-num)
    :void
  (self :pointer)
  (numPerturbationIterations :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_2"
          default-collision-configuration/set-convex-convex-multipoint-iterations) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_0"
          default-collision-configuration/set-plane-convex-multipoint-iterations/with-num&min)
    :void
  (self :pointer)
  (numPerturbationIterations :int)
  (minimumPointsPerturbationThreshold :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_1"
          default-collision-configuration/set-plane-convex-multipoint-iterations/with-num)
    :void
  (self :pointer)
  (numPerturbationIterations :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_2"
          default-collision-configuration/set-plane-convex-multipoint-iterations) :void
  (self :pointer))
(define-constant +USE-DISPATCH-REGISTRY-ARRAY+ 1)
(cffi:defcenum DISPATCHER-FLAGS
  (:CD-STATIC-STATIC-REPORTED 1)
  (:CD-USE-RELATIVE-CONTACT-BREAKING-THRESHOLD 2)
  (:CD-DISABLE-CONTACTPOOL-DYNAMIC-ALLOCATION 4))

(defcfun ("_wrap_btCollisionDispatcher_getDispatcherFlags"
          collision-dispatcher/get-dispatcher-flags) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setDispatcherFlags"
          collision-dispatcher/set-dispatcher-flags) :void
  (self :pointer)
  (flags :int))

(defcfun ("_wrap_btCollisionDispatcher_registerCollisionCreateFunc"
          collision-dispatcher/register-collision-create-func) :void
  (self :pointer)
  (proxyType0 :int)
  (proxyType1 :int)
  (createFunc :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNumManifolds"
          collision-dispatcher/get-num-manifolds) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPointer"
          collision-dispatcher/get-internal-manifold-pointer) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getManifoldByIndexInternal__SWIG_0"
          collision-dispatcher/get-manifold-by-index-internal) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getManifoldByIndexInternal__SWIG_1"
          collision-dispatcher/get-manifold-by-index-internal) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_new_btCollisionDispatcher"
          make-collision-dispatcher) collision-dispatcher
  (collision-configuration collision-configuration))

(defcfun ("_wrap_delete_btCollisionDispatcher"
          delete/bt-collision-dispatcher) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNewManifold"
          collision-dispatcher/get-new-manifold) :pointer
  (self :pointer)
  (b0 :pointer)
  (b1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_releaseManifold"
          collision-dispatcher/release-manifold) :void
  (self :pointer)
  (manifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_clearManifold"
          collision-dispatcher/clear-manifold) :void
  (self :pointer)
  (manifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_findAlgorithm__SWIG_0"
          collision-dispatcher/find-algorithm/with-body0&1wrap&shared-manifold) :pointer
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer)
  (sharedManifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_findAlgorithm__SWIG_1"
          collision-dispatcher/find-algorithm/with-body0&1wrap) :pointer
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer))

(defcfun ("_wrap_btCollisionDispatcher_needsCollision"
          collision-dispatcher/needs-collision) :pointer
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_needsResponse"
          collision-dispatcher/needs-response) :pointer
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_dispatchAllCollisionPairs"
          collision-dispatcher/dispatch-all-collision-pairs) :void
  (self :pointer)
  (pairCache :pointer)
  (dispatchInfo :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setNearCallback"
          collision-dispatcher/set-near-callback) :void
  (self :pointer)
  (nearCallback :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNearCallback"
          collision-dispatcher/get-near-callback) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_defaultNearCallback"
          collision-dispatcher/default-near-callback) :void
  (collisionPair :pointer)
  (dispatcher :pointer)
  (dispatchInfo :pointer))

(defcfun ("_wrap_btCollisionDispatcher_allocateCollisionAlgorithm"
          collision-dispatcher/allocate-collision-algorithm) :pointer
  (self :pointer)
  (size :int))

(defcfun ("_wrap_btCollisionDispatcher_freeCollisionAlgorithm"
          collision-dispatcher/free-collision-algorithm) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getCollisionConfiguration__SWIG_0"
          collision-dispatcher/get-collision-configuration) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getCollisionConfiguration__SWIG_1"
          collision-dispatcher/get-collision-configuration) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setCollisionConfiguration"
          collision-dispatcher/set-collision-configuration) :void
  (self :pointer)
  (config :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPool__SWIG_0"
          collision-dispatcher/get-internal-manifold-pool) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPool__SWIG_1"
          collision-dispatcher/get-internal-manifold-pool) :pointer
  (self :pointer))


(defcfun ("_wrap_new_btSimpleBroadphase__SWIG_0"
          make-simple-broadphase/with-max-proxies&overlapping-pair-cache) :pointer
  (max-proxies :int)
  (overlapping-pair-cache :pointer))

(defcfun ("_wrap_new_btSimpleBroadphase__SWIG_1"
          make-simple-broadphase/with-max-proxies) :pointer
  (max-proxies :int))

(defcfun ("_wrap_new_btSimpleBroadphase__SWIG_2"
          make-simple-broadphase) :pointer)

(defcfun ("_wrap_delete_btSimpleBroadphase"
          delete/bt-simple-broadphase) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleBroadphase_aabbOverlap"
          simple-broadphase/aabb-overlap) :pointer
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btSimpleBroadphase_createProxy"
          simple-broadphase/create-proxy) :pointer
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (shapeType :int)
  (userPtr :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short)
  (dispatcher :pointer)
  (multiSapProxy :pointer))

(defcfun ("_wrap_btSimpleBroadphase_calculateOverlappingPairs"
          simple-broadphase/calculate-overlapping-pairs) :void
  (self :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_destroyProxy"
          simple-broadphase/destroy-proxy) :void
  (self :pointer)
  (proxy :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_setAabb"
          simple-broadphase/set-aabb) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getAabb"
          simple-broadphase/get-aabb) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_0"
          simple-broadphase/ray-test/with-ray-from&to&callback&aabb-min&max) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_1"
          simple-broadphase/ray-test/with-ray-from&to&callback&aabb-min) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_2"
          simple-broadphase/ray-test/with-ray-from&to&callback) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer))

(defcfun ("_wrap_btSimpleBroadphase_aabbTest"
          simple-broadphase/aabb-test/with-aabb-min&max&callback) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (callback :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getOverlappingPairCache__SWIG_0"
          simple-broadphase/get-overlapping-pair-cache) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btSimpleBroadphase_getOverlappingPairCache__SWIG_1"
          simple-broadphase/get-overlapping-pair-cache) :pointer
  (self :pointer))

(defcfun ("_wrap_btSimpleBroadphase_testAabbOverlap"
          simple-broadphase/test-aabb-overlap) :pointer
  (self :pointer)
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getBroadphaseAabb"
          simple-broadphase/get-broadphase-aabb) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_printStats"
          simple-broadphase/print-stats) :void
  (self :pointer))
(define-constant +USE-OVERLAP-TEST-ON-REMOVES+ 1)
(cffi:defcvar ("gOverlappingPairs"
               *OVERLAPPING-PAIRS*)
    :int)

(defcfun ("_wrap_new_btAxisSweep3__SWIG_0"
          make-axis-sweep-3/with-world-aabb-min&max&max-handles&pair-cache&d.r.a.) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short)
  (pairCache :pointer)
  (disableRaycastAccelerator :pointer))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_1"
          make-axis-sweep-3/with-world-aabb-min&max&max-handles&pair-cache) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short)
  (pairCache :pointer))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_2"
          make-axis-sweep-3/with-world-aabb-min&max&max-handles) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_3"
          make-axis-sweep-3/with-world-aabb-min&max) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer))

(defcfun ("_wrap_delete_btAxisSweep3"
          delete/bt-axis-sweep-3) :void
  (self :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_0"
          make-32-bit-axis-sweep-3/with-world-aabb-min&max&max-handles&pair-cache&d.r.a.)
    :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int)
  (pairCache :pointer)
  (disableRaycastAccelerator :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_1"
          make-32-bit-axis-sweep-3/with-world-aabb-min&max&max-handles&pair-cache)
    :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int)
  (pairCache :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_2"
          make-32-bit-axis-sweep-3/with-world-aabb-min&max&max-handles) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_3"
          make-32-bit-axis-sweep-3/with-world-aabb-min&max) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer))

(defcfun ("_wrap_delete_bt32BitAxisSweep3"
          delete/bt-32-bit-axis-sweep-3) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseArray__SWIG_0"
          multi-sap-broadphase/get-broadphase-array) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseArray__SWIG_1"
          multi-sap-broadphase/get-broadphase-array) :pointer
  (self :pointer))

(defcfun ("_wrap_delete_btMultiSapBroadphase"
          delete/bt-multi-sap-broadphase) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_createProxy"
          multi-sap-broadphase/create-proxy) :pointer
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (shapeType :int)
  (userPtr :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short)
  (dispatcher :pointer)
  (multiSapProxy :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_destroyProxy"
          multi-sap-broadphase/destroy-proxy) :void
  (self :pointer)
  (proxy :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_setAabb"
          multi-sap-broadphase/set-aabb) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getAabb"
          multi-sap-broadphase/get-aabb) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_0"
          multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min&max) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_1"
          multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_2"
          multi-sap-broadphase/ray-test/with-ray-from&to&callback) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_addToChildBroadphase"
          multi-sap-broadphase/add-to-child-broadphase) :void
  (self :pointer)
  (parentMultiSapProxy :pointer)
  (childProxy :pointer)
  (childBroadphase :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_calculateOverlappingPairs"
          multi-sap-broadphase/calculate-overlapping-pairs) :void
  (self :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_testAabbOverlap"
          multi-sap-broadphase/test-aabb-overlap) :pointer
  (self :pointer)
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getOverlappingPairCache__SWIG_0"
          multi-sap-broadphase/get-overlapping-pair-cache) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btMultiSapBroadphase_getOverlappingPairCache__SWIG_1"
          multi-sap-broadphase/get-overlapping-pair-cache) :pointer
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseAabb"
          multi-sap-broadphase/get-broadphase-aabb) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_buildTree"
          multi-sap-broadphase/build-tree) :void
  (self :pointer)
  (bvhAabbMin :pointer)
  (bvhAabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_printStats"
          multi-sap-broadphase/print-stats) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_quicksort"
          multi-sap-broadphase/quicksort) :void
  (self :pointer)
  (a :pointer)
  (lo :int)
  (hi :int))

(defcfun ("_wrap_btMultiSapBroadphase_resetPool"
          multi-sap-broadphase/reset-pool) :void
  (self :pointer)
  (dispatcher :pointer))
(define-constant +DBVT-BP-PROFILE+ 0)
(define-constant +DBVT-BP-PREVENTFALSEUPDATE+ 0)
(define-constant +DBVT-BP-ACCURATESLEEPING+ 0)
(define-constant +DBVT-BP-ENABLE-BENCHMARK+ 0)


(define-constant +USE-BT-CLOCK+ 1)

(defcfun ("_wrap_new_btClock__SWIG_0"
          make-clock) :pointer)

(defcfun ("_wrap_new_btClock__SWIG_1"
          make-clock/with-other) :pointer
  (other :pointer))

(defcfun ("_wrap_btClock_assignValue"
          clock/assign-value) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_delete_btClock"
          delete/bt-clock) :void
  (self :pointer))

(defcfun ("_wrap_btClock_reset"
          clock/reset) :void
  (self :pointer))

(defcfun ("_wrap_btClock_getTimeMilliseconds"
          clock/get-time-milliseconds) :unsigned-long
  (self :pointer))

(defcfun ("_wrap_btClock_getTimeMicroseconds"
          clock/get-time-microseconds) :unsigned-long
  (self :pointer))

(defcfun ("_wrap_new_CProfileNode"
          make-cprofile-node) :pointer
  (name :string)
  (parent :pointer))

(defcfun ("_wrap_delete_CProfileNode"
          delete/cprofile-node) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Sub_Node"
          cprofile-node/get/sub/node) :pointer
  (self :pointer)
  (name :string))

(defcfun ("_wrap_CProfileNode_Get_Parent"
          cprofile-node/get/parent) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Sibling"
          cprofile-node/get/sibling) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Child"
          cprofile-node/get/child) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_CleanupMemory"
          cprofile-node/cleanup-memory) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Reset"
          cprofile-node/reset) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Call"
          cprofile-node/call) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Return"
          cprofile-node/return) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Name"
          cprofile-node/get/name) :string
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Total_Calls"
          cprofile-node/get/total/calls) :int
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Total_Time"
          cprofile-node/get/total/time) :float
  (self :pointer))

(defcfun ("_wrap_CProfileNode_GetUserPointer"
          cprofile-node/get-user-pointer) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_SetUserPointer"
          cprofile-node/set-user-pointer) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_CProfileIterator_First"
          cprofile-iterator/first) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Next"
          cprofile-iterator/next) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Is_Done"
          cprofile-iterator/is/done) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Is_Root"
          cprofile-iterator/is/root) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Enter_Child"
          cprofile-iterator/enter/child) :void
  (self :pointer)
  (index :int))

(defcfun ("_wrap_CProfileIterator_Enter_Largest_Child"
          cprofile-iterator/enter/largest/child) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Enter_Parent"
          cprofile-iterator/enter/parent) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Name"
          cprofile-iterator/get/current/name) :string
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Total_Calls"
          cprofile-iterator/get/current/total/calls) :int
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Total_Time"
          cprofile-iterator/get/current/total/time) :float
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_UserPointer"
          cprofile-iterator/get/current/user-pointer) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Set_Current_UserPointer"
          cprofile-iterator/set/current/user-pointer) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Name"
          cprofile-iterator/get/current/parent/name) :string
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Total_Calls"
          cprofile-iterator/get/current/parent/total/calls) :int
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Total_Time"
          cprofile-iterator/get/current/parent/total/time) :float
  (self :pointer))

(defcfun ("_wrap_delete_CProfileIterator"
          delete/cprofile-iterator) :void
  (self :pointer))

(defcfun ("_wrap_CProfileManager_Start_Profile"
          cprofile-manager/start/profile) :void
  (name :string))

(defcfun ("_wrap_CProfileManager_Stop_Profile"
          cprofile-manager/stop/profile) :void)

(defcfun ("_wrap_CProfileManager_CleanupMemory"
          cprofile-manager/cleanup-memory) :void)

(defcfun ("_wrap_CProfileManager_Reset"
          cprofile-manager/reset) :void)

(defcfun ("_wrap_CProfileManager_Increment_Frame_Counter"
          cprofile-manager/increment/frame/counter) :void)

(defcfun ("_wrap_CProfileManager_Get_Frame_Count_Since_Reset"
          cprofile-manager/get/frame/count/since/reset) :int)

(defcfun ("_wrap_CProfileManager_Get_Time_Since_Reset"
          cprofile-manager/get/time/since/reset) :float)

(defcfun ("_wrap_CProfileManager_Get_Iterator"
          cprofile-manager/get/iterator) :pointer)

(defcfun ("_wrap_CProfileManager_Release_Iterator"
          cprofile-manager/release/iterator) :void
  (iterator :pointer))

(defcfun ("_wrap_CProfileManager_dumpRecursive"
          cprofile-manager/dump-recursive) :void
  (profileIterator :pointer)
  (spacing :int))

(defcfun ("_wrap_CProfileManager_dumpAll"
          cprofile-manager/dump-all) :void)

(defcfun ("_wrap_new_CProfileManager"
          make-cprofile-manager) :pointer)

(defcfun ("_wrap_delete_CProfileManager"
          delete/cprofile-manager) :void
  (self :pointer))

(defcfun ("_wrap_new_CProfileSample"
          make-cprofile-sample) :pointer
  (name :string))

(defcfun ("_wrap_delete_CProfileSample"
          delete/cprofile-sample) :void
  (self :pointer))
(cffi:defcenum DEBUG-DRAW-MODES
  (:DBG-NO-DEBUG 0)
  (:DBG-DRAW-WIREFRAME 1)
  (:DBG-DRAW-AABB 2)
  (:DBG-DRAW-FEATURES-TEXT 4)
  (:DBG-DRAW-CONTACT-POINTS 8)
  (:DBG-NO-DEACTIVATION 16)
  (:DBG-NO-HELP-TEXT #.32)
  (:DBG-DRAW-TEXT #.64)
  (:DBG-PROFILE-TIMINGS 128)
  (:DBG-ENABLE-SAT-COMPARISON 256)
  (:DBG-DISABLE-BULLET-LCP #.512)
  (:DBG-ENABLE-CCD 1024)
  (:DBG-DRAW-CONSTRAINTS #.(ash 1 11))
  (:DBG-DRAW-CONSTRAINT-LIMITS #.(ash 1 12))
  (:DBG-FAST-WIREFRAME #.(ash 1 13))
  (:DBG-DRAW-NORMALS #.(ash 1 14))
  :DBG-MAX-DEBUG-DRAW-MODE)

(defcfun ("_wrap_delete_btIDebugDraw"
          delete/bt-idebug-draw) :void
  (self :pointer))

(defcfun ("_wrap_btIDebugDraw_drawLine__SWIG_0"
          idebug-draw/draw-line/with-from&to&color) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawLine__SWIG_1"
          idebug-draw/draw-line/with-from&to&from-&to-color) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (fromColor :pointer)
  (toColor :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSphere__SWIG_0"
          idebug-draw/draw-sphere/with-radius&transform&color) :void
  (self :pointer)
  (radius :float)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSphere__SWIG_1"
          idebug-draw/draw-sphere/with-p&radius&color) :void
  (self :pointer)
  (p :pointer)
  (radius :float)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawTriangle__SWIG_0"
          idebug-draw/draw-triangle/with-v0&1&2&arg4&5&6&color&alpha) :void
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer)
  (arg4 :pointer)
  (arg5 :pointer)
  (arg6 :pointer)
  (color :pointer)
  (alpha :float))

(defcfun ("_wrap_btIDebugDraw_drawTriangle__SWIG_1"
          idebug-draw/draw-triangle/with-v0&1&2&color&arg5) :void
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer)
  (color :pointer)
  (arg5 :float))

(defcfun ("_wrap_btIDebugDraw_drawContactPoint"
          idebug-draw/draw-contact-point) :void
  (self :pointer)
  (PointOnB :pointer)
  (normalOnB :pointer)
  (distance :float)
  (lifeTime :int)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_reportErrorWarning"
          idebug-draw/report-error-warning) :void
  (self :pointer)
  (warningString :string))

(defcfun ("_wrap_btIDebugDraw_draw3dText"
          idebug-draw/draw-3d-text) :void
  (self :pointer)
  (location :pointer)
  (textString :string))

(defcfun ("_wrap_btIDebugDraw_setDebugMode"
          idebug-draw/set-debug-mode) :void
  (self :pointer)
  (debugMode :int))

(defcfun ("_wrap_btIDebugDraw_getDebugMode"
          idebug-draw/get-debug-mode) :int
  (self :pointer))

(defcfun ("_wrap_btIDebugDraw_drawAabb"
          idebug-draw/draw-aabb) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawTransform"
          idebug-draw/draw-transform) :void
  (self :pointer)
  (transform :pointer)
  (orthoLen :float))

(defcfun ("_wrap_btIDebugDraw_drawArc__SWIG_0"
          idebug-draw/draw-arc) :void
  (self :pointer)
  (center :pointer)
  (normal :pointer)
  (axis :pointer)
  (radiusA :float)
  (radiusB :float)
  (minAngle :float)
  (maxAngle :float)
  (color :pointer)
  (drawSect :pointer)
  (stepDegrees :float))

(defcfun ("_wrap_btIDebugDraw_drawArc__SWIG_1"
          idebug-draw/draw-arc/with-center&normal&axis&radius-a&&b&&min-&max-angle&color&draw-sect)
    :void
  (self :pointer)
  (center :pointer)
  (normal :pointer)
  (axis :pointer)
  (radiusA :float)
  (radiusB :float)
  (minAngle :float)
  (maxAngle :float)
  (color :pointer)
  (drawSect :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSpherePatch__SWIG_0"
          idebug-draw/draw-sphere-patch/with-c&u&a&r&m&m&m&m&c&s&d) :void
  (self :pointer)
  (center :pointer)
  (up :pointer)
  (axis :pointer)
  (radius :float)
  (minTh :float)
  (maxTh :float)
  (minPs :float)
  (maxPs :float)
  (color :pointer)
  (stepDegrees :float)
  (drawCenter :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSpherePatch__SWIG_1"
          idebug-draw/draw-sphere-patch/with-c&u&a&r&m&m&m&m&c&s) :void
  (self :pointer)
  (center :pointer)
  (up :pointer)
  (axis :pointer)
  (radius :float)
  (minTh :float)
  (maxTh :float)
  (minPs :float)
  (maxPs :float)
  (color :pointer)
  (stepDegrees :float))

(defcfun ("_wrap_btIDebugDraw_drawSpherePatch__SWIG_2"
          idebug-draw/draw-sphere-patch/with-c&u&a&r&m&m&m&m&c) :void
  (self :pointer)
  (center :pointer)
  (up :pointer)
  (axis :pointer)
  (radius :float)
  (minTh :float)
  (maxTh :float)
  (minPs :float)
  (maxPs :float)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawBox__SWIG_0"
          idebug-draw/draw-box/with-bb-min&max&color) :void
  (self :pointer)
  (bbMin :pointer)
  (bbMax :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawBox__SWIG_1"
          idebug-draw/draw-box/with-bb-min&max&trans&color) :void
  (self :pointer)
  (bbMin :pointer)
  (bbMax :pointer)
  (trans :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCapsule"
          idebug-draw/draw-capsule) :void
  (self :pointer)
  (radius :float)
  (halfHeight :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCylinder"
          idebug-draw/draw-cylinder) :void
  (self :pointer)
  (radius :float)
  (halfHeight :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCone"
          idebug-draw/draw-cone) :void
  (self :pointer)
  (radius :float)
  (height :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawPlane"
          idebug-draw/draw-plane) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeConst :float)
  (transform :pointer)
  (color :pointer))
(cffi:defcvar ("sBulletDNAstr"
               *S-BULLET-DNASTR*)
    :pointer)
(cffi:defcvar ("sBulletDNAlen"
               *S-BULLET-DNALEN*)
    :int)
(cffi:defcvar ("sBulletDNAstr64"
               *S-BULLET-DNASTR-64*)
    :pointer)
(cffi:defcvar ("sBulletDNAlen64"
               *S-BULLET-DNALEN-64*)
    :int)

(defcfun ("_wrap_btStrLen"
          str-len) :int
  (str :string))

(defcfun ("_wrap_btChunk_m_chunkCode_set"
          chunk/chunk-code/set) :void
  (self :pointer)
  (m_chunkCode :int))

(defcfun ("_wrap_btChunk_m_chunkCode_get"
          chunk/chunk-code/get) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_length_set"
          chunk/length/set) :void
  (self :pointer)
  (m_length :int))

(defcfun ("_wrap_btChunk_m_length_get"
          chunk/length/get) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_oldPtr_set"
          chunk/old-ptr/set) :void
  (self :pointer)
  (m_oldPtr :pointer))

(defcfun ("_wrap_btChunk_m_oldPtr_get"
          chunk/old-ptr/get) :pointer
  (self :pointer))

(defcfun ("_wrap_btChunk_m_dna_nr_set"
          chunk/dna/nr/set) :void
  (self :pointer)
  (m_dna_nr :int))

(defcfun ("_wrap_btChunk_m_dna_nr_get"
          chunk/dna/nr/get) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_number_set"
          chunk/number/set) :void
  (self :pointer)
  (m_number :int))

(defcfun ("_wrap_btChunk_m_number_get"
          chunk/number/get) :int
  (self :pointer))

(defcfun ("_wrap_new_btChunk"
          make-chunk) :pointer)

(defcfun ("_wrap_delete_btChunk"
          delete/bt-chunk) :void
  (self :pointer))
(cffi:defcenum SERIALIZATION-FLAGS
  (:SERIALIZE-NO-BVH 1)
  (:SERIALIZE-NO-TRIANGLEINFOMAP 2)
  (:SERIALIZE-NO-DUPLICATE-ASSERT 4))

(defcfun ("_wrap_delete_btSerializer"
          delete/bt-serializer) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_getBufferPointer"
          serializer/get-buffer-pointer) :pointer
  (self :pointer))

(defcfun ("_wrap_btSerializer_getCurrentBufferSize"
          serializer/get-current-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btSerializer_allocate"
          serializer/allocate) :pointer
  (self :pointer)
  (size :pointer)
  (numElements :int))

(defcfun ("_wrap_btSerializer_finalizeChunk"
          serializer/finalize-chunk) :void
  (self :pointer)
  (chunk :pointer)
  (structType :string)
  (chunkCode :int)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_findPointer"
          serializer/find-pointer) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_getUniquePointer"
          serializer/get-unique-pointer) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_startSerialization"
          serializer/start-serialization) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_finishSerialization"
          serializer/finish-serialization) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_findNameForPointer"
          serializer/find-name-for-pointer) :string
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSerializer_registerNameForPointer"
          serializer/register-name-for-pointer) :void
  (self :pointer)
  (ptr :pointer)
  (name :string))

(defcfun ("_wrap_btSerializer_serializeName"
          serializer/serialize-name) :void
  (self :pointer)
  (ptr :string))

(defcfun ("_wrap_btSerializer_getSerializationFlags"
          serializer/get-serialization-flags) :int
  (self :pointer))

(defcfun ("_wrap_btSerializer_setSerializationFlags"
          serializer/set-serialization-flags) :void
  (self :pointer)
  (flags :int))
(define-constant +HEADER-LENGTH+ 12)


(defcfun ("_wrap_new_btDefaultSerializer__SWIG_0"
          make-default-serializer/with-total-size) :pointer
  (totalSize :int))

(defcfun ("_wrap_new_btDefaultSerializer__SWIG_1"
          make-default-serializer) :pointer)

(defcfun ("_wrap_delete_btDefaultSerializer"
          delete/bt-default-serializer) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_writeHeader"
          default-serializer/write-header) :void
  (self :pointer)
  (buffer :pointer))

(defcfun ("_wrap_btDefaultSerializer_startSerialization"
          default-serializer/start-serialization) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_finishSerialization"
          default-serializer/finish-serialization) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_getUniquePointer"
          default-serializer/get-unique-pointer) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btDefaultSerializer_getBufferPointer"
          default-serializer/get-buffer-pointer) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_getCurrentBufferSize"
          default-serializer/get-current-buffer-size) :int
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_finalizeChunk"
          default-serializer/finalize-chunk) :void
  (self :pointer)
  (chunk :pointer)
  (structType :string)
  (chunkCode :int)
  (oldPtr :pointer))

(defcfun ("_wrap_btDefaultSerializer_internalAlloc"
          default-serializer/internal-alloc) :pointer
  (self :pointer)
  (size :pointer))

(defcfun ("_wrap_btDefaultSerializer_allocate"
          default-serializer/allocate) :pointer
  (self :pointer)
  (size :pointer)
  (numElements :int))

(defcfun ("_wrap_btDefaultSerializer_findNameForPointer"
          default-serializer/find-name-for-pointer) :string
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDefaultSerializer_registerNameForPointer"
          default-serializer/register-name-for-pointer) :void
  (self :pointer)
  (ptr :pointer)
  (name :string))

(defcfun ("_wrap_btDefaultSerializer_serializeName"
          default-serializer/serialize-name) :void
  (self :pointer)
  (name :string))

(defcfun ("_wrap_btDefaultSerializer_getSerializationFlags"
          default-serializer/get-serialization-flags) :int
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_setSerializationFlags"
          default-serializer/set-serialization-flags) :void
  (self :pointer)
  (flags :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusPlusInstance__SWIG_0"
          discrete-dynamics-world/make-c++-instance) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusPlusInstance__SWIG_0"
          discrete-dynamics-world/delete-c++-instance) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusPlusInstance__SWIG_1"
          discrete-dynamics-world/make-c++-instance/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusPlusInstance__SWIG_1"
          discrete-dynamics-world/delete-c++-instance/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusArray__SWIG_0"
          discrete-dynamics-world/make-c++-array) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusArray__SWIG_0"
          discrete-dynamics-world/delete-c++-array) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusArray__SWIG_1"
          discrete-dynamics-world/make-c++-array/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusArray__SWIG_1"
          discrete-dynamics-world/delete-c++-array/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btDiscreteDynamicsWorld"
          make-discrete-dynamics-world) :pointer
  (dispatcher :pointer)
  (pairCache :pointer)
  (constraintSolver :pointer)
  (collisionConfiguration :pointer))

(defcfun ("_wrap_delete_btDiscreteDynamicsWorld"
          delete/bt-discrete-dynamics-world) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_0"
          discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps&fixed-time-step)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int)
  (fixedTimeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_1"
          discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_2"
          discrete-dynamics-world/step-simulation/with-time-step) :int
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_synchronizeMotionStates"
          discrete-dynamics-world/synchronize-motion-states) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_synchronizeSingleMotionState"
          discrete-dynamics-world/synchronize-single-motion-state) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addConstraint__SWIG_0"
          discrete-dynamics-world/add-constraint/with-disable-collision-between-linked-bodies) 
    :void
  (self :pointer)
  (constraint :pointer)
  (disableCollisionsBetweenLinkedBodies :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addConstraint__SWIG_1"
          discrete-dynamics-world/add-constraint) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeConstraint"
          discrete-dynamics-world/remove-constraint) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addAction"
          discrete-dynamics-world/add-action) :void
  (self :pointer)
  (arg1 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeAction"
          discrete-dynamics-world/remove-action) :void
  (self :pointer)
  (arg1 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getSimulationIslandManager__SWIG_0"
          discrete-dynamics-world/get-simulation-island-manager) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btDiscreteDynamicsWorld_getSimulationIslandManager__SWIG_1"
          discrete-dynamics-world/get-simulation-island-manager) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getCollisionWorld"
          discrete-dynamics-world/get-collision-world) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setGravity"
          discrete-dynamics-world/set-gravity) :void
  (self :pointer)
  (gravity :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getGravity"
          discrete-dynamics-world/get-gravity) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_0"
          discrete-dynamics-world/add-collision-object/with-filter-group&mask) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_1"
          discrete-dynamics-world/add-collision-object/with-filter-group) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_2"
          discrete-dynamics-world/add-collision-object) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addRigidBody__SWIG_0"
          discrete-dynamics-world/add-rigid-body) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addRigidBody__SWIG_1"
          discrete-dynamics-world/add-rigid-body/with-group&mask) :void
  (self :pointer)
  (body :pointer)
  (group :short)
  (mask :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeRigidBody"
          discrete-dynamics-world/remove-rigid-body) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeCollisionObject"
          discrete-dynamics-world/remove-collision-object) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_debugDrawConstraint"
          discrete-dynamics-world/debug-draw-constraint) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_debugDrawWorld"
          discrete-dynamics-world/debug-draw-world) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setConstraintSolver"
          discrete-dynamics-world/set-constraint-solver) :void
  (self :pointer)
  (solver :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraintSolver"
          discrete-dynamics-world/get-constraint-solver) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getNumConstraints"
          discrete-dynamics-world/get-num-constraints) :int
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraint__SWIG_0"
          discrete-dynamics-world/get-constraint) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraint__SWIG_1"
          discrete-dynamics-world/get-constraint) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getWorldType"
          discrete-dynamics-world/get-world-type) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_clearForces"
          discrete-dynamics-world/clear-forces) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_applyGravity"
          discrete-dynamics-world/apply-gravity) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setNumTasks"
          discrete-dynamics-world/set-num-tasks) :void
  (self :pointer)
  (numTasks :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_updateVehicles"
          discrete-dynamics-world/update-vehicles) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addVehicle"
          discrete-dynamics-world/add-vehicle) :void
  (self :pointer)
  (vehicle :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeVehicle"
          discrete-dynamics-world/remove-vehicle) :void
  (self :pointer)
  (vehicle :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCharacter"
          discrete-dynamics-world/add-character) :void
  (self :pointer)
  (character :pointer))


