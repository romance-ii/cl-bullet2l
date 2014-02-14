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
               COMPOUND-SHAPE/REMOVE-CHILD-SHAPE) :void
  (self :pointer)
  (shape :pointer))

(defcfun ("_wrap_btCompoundShape_removeChildShapeByIndex"
               COMPOUND-SHAPE/REMOVE-CHILD-SHAPE-BY-INDEX) :void
  (self :pointer)
  (childShapeindex :int))

(defcfun ("_wrap_btCompoundShape_getNumChildShapes"
               COMPOUND-SHAPE/GET-NUM-CHILD-SHAPES) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getChildShape__SWIG_0"
               COMPOUND-SHAPE/GET-CHILD-SHAPE) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getChildShape__SWIG_1"
               COMPOUND-SHAPE/GET-CHILD-SHAPE) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btCompoundShape_getChildTransform__SWIG_0"
               COMPOUND-SHAPE/GET-CHILD-TRANSFORM) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getChildTransform__SWIG_1"
               COMPOUND-SHAPE/GET-CHILD-TRANSFORM) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btCompoundShape_updateChildTransform__SWIG_0"
               COMPOUND-SHAPE/UPDATE-CHILD-TRANSFORM/with-child-index&new-child-transform&should-recalculate-local-aabb)
    :void
  (self :pointer)
  (childIndex :int)
  (newChildTransform :pointer)
  (shouldRecalculateLocalAabb :pointer))

(defcfun ("_wrap_btCompoundShape_updateChildTransform__SWIG_1"
               COMPOUND-SHAPE/UPDATE-CHILD-TRANSFORM/with-child-index&new-child-transform)
    :void
  (self :pointer)
  (childIndex :int)
  (newChildTransform :pointer))

(defcfun ("_wrap_btCompoundShape_getChildList"
               COMPOUND-SHAPE/GET-CHILD-LIST) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getAabb"
               COMPOUND-SHAPE/GET-AABB) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btCompoundShape_recalculateLocalAabb"
               COMPOUND-SHAPE/RECALCULATE-LOCAL-AABB) :void
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_setLocalScaling"
               COMPOUND-SHAPE/SET-LOCAL-SCALING) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btCompoundShape_getLocalScaling"
               COMPOUND-SHAPE/GET-LOCAL-SCALING) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculateLocalInertia"
               COMPOUND-SHAPE/CALCULATE-LOCAL-INERTIA) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btCompoundShape_setMargin"
               COMPOUND-SHAPE/SET-MARGIN) :void
  (self :pointer)
  (margin :float))

(defcfun ("_wrap_btCompoundShape_getMargin"
               COMPOUND-SHAPE/GET-MARGIN) :float
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getName"
               COMPOUND-SHAPE/GET-NAME) :string
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_getDynamicAabbTree__SWIG_0"
               COMPOUND-SHAPE/GET-DYNAMIC-AABB-TREE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCompoundShape_getDynamicAabbTree__SWIG_1"
               COMPOUND-SHAPE/GET-DYNAMIC-AABB-TREE) :pointer
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_createAabbTreeFromChildren"
               COMPOUND-SHAPE/CREATE-AABB-TREE-FROM-CHILDREN) :void
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculatePrincipalAxisTransform"
               COMPOUND-SHAPE/CALCULATE-PRINCIPAL-AXIS-TRANSFORM) :void
  (self :pointer)
  (masses :pointer)
  (principal :pointer)
  (inertia :pointer))

(defcfun ("_wrap_btCompoundShape_getUpdateRevision"
               COMPOUND-SHAPE/GET-UPDATE-REVISION) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_calculateSerializeBufferSize"
               COMPOUND-SHAPE/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))

(defcfun ("_wrap_btCompoundShape_serialize"
               COMPOUND-SHAPE/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))


(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusPlusInstance__SWIG_0"
               BU/SIMPLEX-1TO-4/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusPlusInstance__SWIG_0"
               BU/SIMPLEX-1TO-4/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusPlusInstance__SWIG_1"
               BU/SIMPLEX-1TO-4/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusPlusInstance__SWIG_1"
               BU/SIMPLEX-1TO-4/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusArray__SWIG_0"
               BU/SIMPLEX-1TO-4/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusArray__SWIG_0"
               BU/SIMPLEX-1TO-4/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_makeCPlusArray__SWIG_1"
               BU/SIMPLEX-1TO-4/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_deleteCPlusArray__SWIG_1"
               BU/SIMPLEX-1TO-4/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_0"
               MAKE-BU/SIMPLEX-1TO-4) :pointer)

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_1"
               MAKE-BU/SIMPLEX-1TO-4/with-pt0) :pointer
  (pt0 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_2"
               MAKE-BU/SIMPLEX-1TO-4/with-pt0&1) :pointer
  (pt0 :pointer)
  (pt1 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_3"
               MAKE-BU/SIMPLEX-1TO-4/with-pt0-2) :pointer
  (pt0 :pointer)
  (pt1 :pointer)
  (pt2 :pointer))

(defcfun ("_wrap_new_btBU_Simplex1to4__SWIG_4"
               MAKE-BU/SIMPLEX-1TO-4/with-pt0-3) :pointer
  (pt0 :pointer)
  (pt1 :pointer)
  (pt2 :pointer)
  (pt3 :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_reset"
               BU/SIMPLEX-1TO-4/RESET) :void
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getAabb"
               BU/SIMPLEX-1TO-4/GET-AABB) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_addVertex"
               BU/SIMPLEX-1TO-4/ADD-VERTEX) :void
  (self :pointer)
  (pt :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumVertices"
               BU/SIMPLEX-1TO-4/GET-NUM-VERTICES) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumEdges"
               BU/SIMPLEX-1TO-4/GET-NUM-EDGES) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getEdge"
               BU/SIMPLEX-1TO-4/GET-EDGE) :void
  (self :pointer)
  (i :int)
  (pa :pointer)
  (pb :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getVertex"
               BU/SIMPLEX-1TO-4/GET-VERTEX) :void
  (self :pointer)
  (i :int)
  (vtx :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getNumPlanes"
               BU/SIMPLEX-1TO-4/GET-NUM-PLANES) :int
  (self :pointer))

(defcfun ("_wrap_btBU_Simplex1to4_getPlane"
               BU/SIMPLEX-1TO-4/GET-PLANE) :void
  (self :pointer)
  (planeNormal :pointer)
  (planeSupport :pointer)
  (i :int))

(defcfun ("_wrap_btBU_Simplex1to4_getIndex"
               BU/SIMPLEX-1TO-4/GET-INDEX) :int
  (self :pointer)
  (i :int))

(defcfun ("_wrap_btBU_Simplex1to4_isInside"
               BU/SIMPLEX-1TO-4/IS-INSIDE) :pointer
  (self :pointer)
  (pt :pointer)
  (tolerance :float))

(defcfun ("_wrap_btBU_Simplex1to4_getName"
               BU/SIMPLEX-1TO-4/GET-NAME) :string
  (self :pointer))

(defcfun ("_wrap_delete_btBU_Simplex1to4"
               DELETE/BT-BU/SIMPLEX-1TO-4) :void
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusPlusInstance__SWIG_0"
               EMPTY-SHAPE/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusPlusInstance__SWIG_0"
               EMPTY-SHAPE/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusPlusInstance__SWIG_1"
               EMPTY-SHAPE/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusPlusInstance__SWIG_1"
               EMPTY-SHAPE/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusArray__SWIG_0"
               EMPTY-SHAPE/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusArray__SWIG_0"
               EMPTY-SHAPE/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_makeCPlusArray__SWIG_1"
               EMPTY-SHAPE/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btEmptyShape_deleteCPlusArray__SWIG_1"
               EMPTY-SHAPE/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btEmptyShape"
               MAKE-EMPTY-SHAPE) :pointer)

(defcfun ("_wrap_delete_btEmptyShape"
               DELETE/BT-EMPTY-SHAPE) :void
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_getAabb"
               EMPTY-SHAPE/GET-AABB) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btEmptyShape_setLocalScaling"
               EMPTY-SHAPE/SET-LOCAL-SCALING) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btEmptyShape_getLocalScaling"
               EMPTY-SHAPE/GET-LOCAL-SCALING) :pointer
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_calculateLocalInertia"
               EMPTY-SHAPE/CALCULATE-LOCAL-INERTIA) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btEmptyShape_getName"
               EMPTY-SHAPE/GET-NAME) :string
  (self :pointer))

(defcfun ("_wrap_btEmptyShape_processAllTriangles"
               EMPTY-SHAPE/PROCESS-ALL-TRIANGLES) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer)
  (arg3 :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusPlusInstance__SWIG_0"
               MULTI-SPHERE-SHAPE/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusPlusInstance__SWIG_0"
               MULTI-SPHERE-SHAPE/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusPlusInstance__SWIG_1"
               MULTI-SPHERE-SHAPE/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusPlusInstance__SWIG_1"
               MULTI-SPHERE-SHAPE/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusArray__SWIG_0"
               MULTI-SPHERE-SHAPE/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusArray__SWIG_0"
               MULTI-SPHERE-SHAPE/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_makeCPlusArray__SWIG_1"
               MULTI-SPHERE-SHAPE/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btMultiSphereShape_deleteCPlusArray__SWIG_1"
               MULTI-SPHERE-SHAPE/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btMultiSphereShape"
               MAKE-MULTI-SPHERE-SHAPE) :pointer
  (positions :pointer)
  (radi :pointer)
  (numSpheres :int))

(defcfun ("_wrap_btMultiSphereShape_calculateLocalInertia"
               MULTI-SPHERE-SHAPE/CALCULATE-LOCAL-INERTIA) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btMultiSphereShape_localGetSupportingVertexWithoutMargin"
               MULTI-SPHERE-SHAPE/LOCAL-GET-SUPPORTING-VERTEX-WITHOUT-MARGIN) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btMultiSphereShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
               MULTI-SPHERE-SHAPE/BATCHED-UNIT-VECTOR-GET-SUPPORTING-VERTEX-WITHOUT-MARGIN) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btMultiSphereShape_getSphereCount"
               MULTI-SPHERE-SHAPE/GET-SPHERE-COUNT) :int
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_getSpherePosition"
               MULTI-SPHERE-SHAPE/GET-SPHERE-POSITION) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btMultiSphereShape_getSphereRadius"
               MULTI-SPHERE-SHAPE/GET-SPHERE-RADIUS) :float
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btMultiSphereShape_getName"
               MULTI-SPHERE-SHAPE/GET-NAME) :string
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_calculateSerializeBufferSize"
               MULTI-SPHERE-SHAPE/CALCULATE-SERIALIZE-BUFFER-SIZE) :int
  (self :pointer))

(defcfun ("_wrap_btMultiSphereShape_serialize"
               MULTI-SPHERE-SHAPE/SERIALIZE) :string
  (self :pointer)
  (dataBuffer :pointer)
  (serializer :pointer))

(defcfun ("_wrap_delete_btMultiSphereShape"
               DELETE/BT-MULTI-SPHERE-SHAPE) :void
  (self :pointer))


(defcfun ("_wrap_btUniformScalingShape_makeCPlusPlusInstance__SWIG_0"
               UNIFORM-SCALING-SHAPE/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusPlusInstance__SWIG_0"
               UNIFORM-SCALING-SHAPE/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusPlusInstance__SWIG_1"
               UNIFORM-SCALING-SHAPE/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusPlusInstance__SWIG_1"
               UNIFORM-SCALING-SHAPE/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusArray__SWIG_0"
               UNIFORM-SCALING-SHAPE/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusArray__SWIG_0"
               UNIFORM-SCALING-SHAPE/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_makeCPlusArray__SWIG_1"
               UNIFORM-SCALING-SHAPE/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btUniformScalingShape_deleteCPlusArray__SWIG_1"
               UNIFORM-SCALING-SHAPE/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btUniformScalingShape"
               MAKE-UNIFORM-SCALING-SHAPE) :pointer
  (convexChildShape :pointer)
  (uniformScalingFactor :float))

(defcfun ("_wrap_delete_btUniformScalingShape"
               DELETE/BT-UNIFORM-SCALING-SHAPE) :void
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_localGetSupportingVertexWithoutMargin"
               UNIFORM-SCALING-SHAPE/LOCAL-GET-SUPPORTING-VERTEX-WITHOUT-MARGIN) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btUniformScalingShape_localGetSupportingVertex"
               UNIFORM-SCALING-SHAPE/LOCAL-GET-SUPPORTING-VERTEX) :pointer
  (self :pointer)
  (vec :pointer))

(defcfun ("_wrap_btUniformScalingShape_batchedUnitVectorGetSupportingVertexWithoutMargin"
               UNIFORM-SCALING-SHAPE/BATCHED-UNIT-VECTOR-GET-SUPPORTING-VERTEX-WITHOUT-MARGIN) :void
  (self :pointer)
  (vectors :pointer)
  (supportVerticesOut :pointer)
  (numVectors :int))

(defcfun ("_wrap_btUniformScalingShape_calculateLocalInertia"
               UNIFORM-SCALING-SHAPE/CALCULATE-LOCAL-INERTIA) :void
  (self :pointer)
  (mass :float)
  (inertia :pointer))

(defcfun ("_wrap_btUniformScalingShape_getUniformScalingFactor"
               UNIFORM-SCALING-SHAPE/GET-UNIFORM-SCALING-FACTOR) :float
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getChildShape__SWIG_0"
               UNIFORM-SCALING-SHAPE/GET-CHILD-SHAPE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btUniformScalingShape_getChildShape__SWIG_1"
               UNIFORM-SCALING-SHAPE/GET-CHILD-SHAPE) :pointer
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getName"
               UNIFORM-SCALING-SHAPE/GET-NAME) :string
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getAabb"
               UNIFORM-SCALING-SHAPE/GET-AABB) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btUniformScalingShape_getAabbSlow"
               UNIFORM-SCALING-SHAPE/GET-AABB-SLOW) :void
  (self :pointer)
  (t_arg1 :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btUniformScalingShape_setLocalScaling"
               UNIFORM-SCALING-SHAPE/SET-LOCAL-SCALING) :void
  (self :pointer)
  (scaling :pointer))

(defcfun ("_wrap_btUniformScalingShape_getLocalScaling"
               UNIFORM-SCALING-SHAPE/GET-LOCAL-SCALING) :pointer
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_setMargin"
               UNIFORM-SCALING-SHAPE/SET-MARGIN) :void
  (self :pointer)
  (margin :float))

(defcfun ("_wrap_btUniformScalingShape_getMargin"
               UNIFORM-SCALING-SHAPE/GET-MARGIN) :float
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getNumPreferredPenetrationDirections"
               UNIFORM-SCALING-SHAPE/GET-NUM-PREFERRED-PENETRATION-DIRECTIONS) :int
  (self :pointer))

(defcfun ("_wrap_btUniformScalingShape_getPreferredPenetrationDirection"
               UNIFORM-SCALING-SHAPE/GET-PREFERRED-PENETRATION-DIRECTION) :void
  (self :pointer)
  (index :int)
  (penetrationVector :pointer))

(defcfun ("_wrap_new_btSphereSphereCollisionAlgorithm__SWIG_0"
               MAKE-SPHERE-SPHERE-COLLISION-ALGORITHM/with-mf&ci&cal0&1wrap) :pointer
  (mf :pointer)
  (ci :pointer)
  (col0Wrap :pointer)
  (col1Wrap :pointer))

(defcfun ("_wrap_new_btSphereSphereCollisionAlgorithm__SWIG_1"
               MAKE-SPHERE-SPHERE-COLLISION-ALGORITHM/with-ci) :pointer
  (ci :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_processCollision"
               SPHERE-SPHERE-COLLISION-ALGORITHM/PROCESS-COLLISION) :void
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer)
  (dispatchInfo :pointer)
  (resultOut :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_calculateTimeOfImpact"
               SPHERE-SPHERE-COLLISION-ALGORITHM/CALCULATE-TIME-OF-IMPACT) :float
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer)
  (dispatchInfo :pointer)
  (resultOut :pointer))

(defcfun ("_wrap_btSphereSphereCollisionAlgorithm_getAllContactManifolds"
               SPHERE-SPHERE-COLLISION-ALGORITHM/GET-ALL-CONTACT-MANIFOLDS) :void
  (self :pointer)
  (manifoldArray :pointer))

(defcfun ("_wrap_delete_btSphereSphereCollisionAlgorithm"
               DELETE/BT-SPHERE-SPHERE-COLLISION-ALGORITHM) :void
  (self :pointer))


(defcfun ("_wrap_new_btDefaultCollisionConfiguration__SWIG_0"
               MAKE-DEFAULT-COLLISION-CONFIGURATION/with-construction-info) :pointer
  (constructionInfo :pointer))

(defcfun ("_wrap_new_btDefaultCollisionConfiguration__SWIG_1"
               MAKE-DEFAULT-COLLISION-CONFIGURATION) :pointer)

(defcfun ("_wrap_delete_btDefaultCollisionConfiguration"
               DELETE/BT-DEFAULT-COLLISION-CONFIGURATION) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getPersistentManifoldPool"
               DEFAULT-COLLISION-CONFIGURATION/GET-PERSISTENT-MANIFOLD-POOL) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getCollisionAlgorithmPool"
               DEFAULT-COLLISION-CONFIGURATION/GET-COLLISION-ALGORITHM-POOL) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getSimplexSolver"
               DEFAULT-COLLISION-CONFIGURATION/GET-SIMPLEX-SOLVER) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc"
               DEFAULT-COLLISION-CONFIGURATION/GET-COLLISION-ALGORITHM-CREATE-FUNC) :pointer
  (self :pointer)
  (proxyType0 :int)
  (proxyType1 :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_0"
               DEFAULT-COLLISION-CONFIGURATION/SET-CONVEX-CONVEX-MULTIPOINT-ITERATIONS/with-num&max)
    :void
  (self :pointer)
  (numPerturbationIterations :int)
  (minimumPointsPerturbationThreshold :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_1"
               DEFAULT-COLLISION-CONFIGURATION/SET-CONVEX-CONVEX-MULTIPOINT-ITERATIONS/with-num)
    :void
  (self :pointer)
  (numPerturbationIterations :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setConvexConvexMultipointIterations__SWIG_2"
               DEFAULT-COLLISION-CONFIGURATION/SET-CONVEX-CONVEX-MULTIPOINT-ITERATIONS) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_0"
               DEFAULT-COLLISION-CONFIGURATION/SET-PLANE-CONVEX-MULTIPOINT-ITERATIONS/with-num&min)
    :void
  (self :pointer)
  (numPerturbationIterations :int)
  (minimumPointsPerturbationThreshold :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_1"
               DEFAULT-COLLISION-CONFIGURATION/SET-PLANE-CONVEX-MULTIPOINT-ITERATIONS/with-num)
    :void
  (self :pointer)
  (numPerturbationIterations :int))

(defcfun ("_wrap_btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations__SWIG_2"
               DEFAULT-COLLISION-CONFIGURATION/SET-PLANE-CONVEX-MULTIPOINT-ITERATIONS) :void
  (self :pointer))
(define-constant +USE-DISPATCH-REGISTRY-ARRAY+ 1)
(cffi:defcenum DISPATCHER-FLAGS
  (:CD-STATIC-STATIC-REPORTED 1)
  (:CD-USE-RELATIVE-CONTACT-BREAKING-THRESHOLD 2)
  (:CD-DISABLE-CONTACTPOOL-DYNAMIC-ALLOCATION 4))

(defcfun ("_wrap_btCollisionDispatcher_getDispatcherFlags"
               COLLISION-DISPATCHER/GET-DISPATCHER-FLAGS) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setDispatcherFlags"
               COLLISION-DISPATCHER/SET-DISPATCHER-FLAGS) :void
  (self :pointer)
  (flags :int))

(defcfun ("_wrap_btCollisionDispatcher_registerCollisionCreateFunc"
               COLLISION-DISPATCHER/REGISTER-COLLISION-CREATE-FUNC) :void
  (self :pointer)
  (proxyType0 :int)
  (proxyType1 :int)
  (createFunc :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNumManifolds"
               COLLISION-DISPATCHER/GET-NUM-MANIFOLDS) :int
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPointer"
               COLLISION-DISPATCHER/GET-INTERNAL-MANIFOLD-POINTER) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getManifoldByIndexInternal__SWIG_0"
               COLLISION-DISPATCHER/GET-MANIFOLD-BY-INDEX-INTERNAL) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getManifoldByIndexInternal__SWIG_1"
               COLLISION-DISPATCHER/GET-MANIFOLD-BY-INDEX-INTERNAL) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_new_btCollisionDispatcher"
               MAKE-COLLISION-DISPATCHER) :pointer
  (collisionConfiguration :pointer))

(defcfun ("_wrap_delete_btCollisionDispatcher"
               DELETE/BT-COLLISION-DISPATCHER) :void
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNewManifold"
               COLLISION-DISPATCHER/GET-NEW-MANIFOLD) :pointer
  (self :pointer)
  (b0 :pointer)
  (b1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_releaseManifold"
               COLLISION-DISPATCHER/RELEASE-MANIFOLD) :void
  (self :pointer)
  (manifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_clearManifold"
               COLLISION-DISPATCHER/CLEAR-MANIFOLD) :void
  (self :pointer)
  (manifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_findAlgorithm__SWIG_0"
               COLLISION-DISPATCHER/FIND-ALGORITHM/with-body0&1wrap&shared-manifold) :pointer
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer)
  (sharedManifold :pointer))

(defcfun ("_wrap_btCollisionDispatcher_findAlgorithm__SWIG_1"
               COLLISION-DISPATCHER/FIND-ALGORITHM/with-body0&1wrap) :pointer
  (self :pointer)
  (body0Wrap :pointer)
  (body1Wrap :pointer))

(defcfun ("_wrap_btCollisionDispatcher_needsCollision"
               COLLISION-DISPATCHER/NEEDS-COLLISION) :pointer
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_needsResponse"
               COLLISION-DISPATCHER/NEEDS-RESPONSE) :pointer
  (self :pointer)
  (body0 :pointer)
  (body1 :pointer))

(defcfun ("_wrap_btCollisionDispatcher_dispatchAllCollisionPairs"
               COLLISION-DISPATCHER/DISPATCH-ALL-COLLISION-PAIRS) :void
  (self :pointer)
  (pairCache :pointer)
  (dispatchInfo :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setNearCallback"
               COLLISION-DISPATCHER/SET-NEAR-CALLBACK) :void
  (self :pointer)
  (nearCallback :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getNearCallback"
               COLLISION-DISPATCHER/GET-NEAR-CALLBACK) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_defaultNearCallback"
               COLLISION-DISPATCHER/DEFAULT-NEAR-CALLBACK) :void
  (collisionPair :pointer)
  (dispatcher :pointer)
  (dispatchInfo :pointer))

(defcfun ("_wrap_btCollisionDispatcher_allocateCollisionAlgorithm"
               COLLISION-DISPATCHER/ALLOCATE-COLLISION-ALGORITHM) :pointer
  (self :pointer)
  (size :int))

(defcfun ("_wrap_btCollisionDispatcher_freeCollisionAlgorithm"
               COLLISION-DISPATCHER/FREE-COLLISION-ALGORITHM) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getCollisionConfiguration__SWIG_0"
               COLLISION-DISPATCHER/GET-COLLISION-CONFIGURATION) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getCollisionConfiguration__SWIG_1"
               COLLISION-DISPATCHER/GET-COLLISION-CONFIGURATION) :pointer
  (self :pointer))

(defcfun ("_wrap_btCollisionDispatcher_setCollisionConfiguration"
               COLLISION-DISPATCHER/SET-COLLISION-CONFIGURATION) :void
  (self :pointer)
  (config :pointer))

(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPool__SWIG_0"
               COLLISION-DISPATCHER/GET-INTERNAL-MANIFOLD-POOL) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btCollisionDispatcher_getInternalManifoldPool__SWIG_1"
               COLLISION-DISPATCHER/GET-INTERNAL-MANIFOLD-POOL) :pointer
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
               DELETE/BT-SIMPLE-BROADPHASE) :void
  (self :pointer))

(defcfun ("_wrap_btSimpleBroadphase_aabbOverlap"
               SIMPLE-BROADPHASE/AABB-OVERLAP) :pointer
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btSimpleBroadphase_createProxy"
               SIMPLE-BROADPHASE/CREATE-PROXY) :pointer
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
               SIMPLE-BROADPHASE/CALCULATE-OVERLAPPING-PAIRS) :void
  (self :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_destroyProxy"
               SIMPLE-BROADPHASE/DESTROY-PROXY) :void
  (self :pointer)
  (proxy :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_setAabb"
               SIMPLE-BROADPHASE/SET-AABB) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getAabb"
               SIMPLE-BROADPHASE/GET-AABB) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_0"
               SIMPLE-BROADPHASE/RAY-TEST/with-ray-from&to&callback&aabb-min&max) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_1"
               SIMPLE-BROADPHASE/RAY-TEST/with-ray-from&to&callback&aabb-min) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer))

(defcfun ("_wrap_btSimpleBroadphase_rayTest__SWIG_2"
               SIMPLE-BROADPHASE/RAY-TEST/with-ray-from&to&callback) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer))

(defcfun ("_wrap_btSimpleBroadphase_aabbTest"
               SIMPLE-BROADPHASE/AABB-TEST/with-aabb-min&max&callback) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (callback :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getOverlappingPairCache__SWIG_0"
               SIMPLE-BROADPHASE/GET-OVERLAPPING-PAIR-CACHE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btSimpleBroadphase_getOverlappingPairCache__SWIG_1"
               SIMPLE-BROADPHASE/GET-OVERLAPPING-PAIR-CACHE) :pointer
  (self :pointer))

(defcfun ("_wrap_btSimpleBroadphase_testAabbOverlap"
               SIMPLE-BROADPHASE/TEST-AABB-OVERLAP) :pointer
  (self :pointer)
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btSimpleBroadphase_getBroadphaseAabb"
               SIMPLE-BROADPHASE/GET-BROADPHASE-AABB) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btSimpleBroadphase_printStats"
               SIMPLE-BROADPHASE/PRINT-STATS) :void
  (self :pointer))
(define-constant +USE-OVERLAP-TEST-ON-REMOVES+ 1)
(cffi:defcvar ("gOverlappingPairs"
               *OVERLAPPING-PAIRS*)
    :int)

(defcfun ("_wrap_new_btAxisSweep3__SWIG_0"
               MAKE-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles&pair-cache&d.r.a.) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short)
  (pairCache :pointer)
  (disableRaycastAccelerator :pointer))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_1"
               MAKE-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles&pair-cache) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short)
  (pairCache :pointer))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_2"
               MAKE-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-short))

(defcfun ("_wrap_new_btAxisSweep3__SWIG_3"
               MAKE-AXIS-SWEEP-3/with-world-aabb-min&max) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer))

(defcfun ("_wrap_delete_btAxisSweep3"
               DELETE/BT-AXIS-SWEEP-3) :void
  (self :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_0"
               MAKE-32-BIT-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles&pair-cache&d.r.a.)
    :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int)
  (pairCache :pointer)
  (disableRaycastAccelerator :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_1"
               MAKE-32-BIT-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles&pair-cache)
    :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int)
  (pairCache :pointer))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_2"
               MAKE-32-BIT-AXIS-SWEEP-3/with-world-aabb-min&max&max-handles) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer)
  (maxHandles :unsigned-int))

(defcfun ("_wrap_new_bt32BitAxisSweep3__SWIG_3"
               MAKE-32-BIT-AXIS-SWEEP-3/with-world-aabb-min&max) :pointer
  (worldAabbMin :pointer)
  (worldAabbMax :pointer))

(defcfun ("_wrap_delete_bt32BitAxisSweep3"
               DELETE/BT-32-BIT-AXIS-SWEEP-3) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseArray__SWIG_0"
               MULTI-SAP-BROADPHASE/GET-BROADPHASE-ARRAY) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseArray__SWIG_1"
               MULTI-SAP-BROADPHASE/GET-BROADPHASE-ARRAY) :pointer
  (self :pointer))

(defcfun ("_wrap_delete_btMultiSapBroadphase"
               DELETE/BT-MULTI-SAP-BROADPHASE) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_createProxy"
               MULTI-SAP-BROADPHASE/CREATE-PROXY) :pointer
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
               MULTI-SAP-BROADPHASE/DESTROY-PROXY) :void
  (self :pointer)
  (proxy :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_setAabb"
               MULTI-SAP-BROADPHASE/SET-AABB) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getAabb"
               MULTI-SAP-BROADPHASE/GET-AABB) :void
  (self :pointer)
  (proxy :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_0"
               MULTI-SAP-BROADPHASE/RAY-TEST/with-ray-from&to&callback&aabb-min&max) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_1"
               MULTI-SAP-BROADPHASE/RAY-TEST/with-ray-from&to&callback&aabb-min) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer)
  (aabbMin :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_rayTest__SWIG_2"
               MULTI-SAP-BROADPHASE/RAY-TEST/with-ray-from&to&callback) :void
  (self :pointer)
  (rayFrom :pointer)
  (rayTo :pointer)
  (rayCallback :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_addToChildBroadphase"
               MULTI-SAP-BROADPHASE/ADD-TO-CHILD-BROADPHASE) :void
  (self :pointer)
  (parentMultiSapProxy :pointer)
  (childProxy :pointer)
  (childBroadphase :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_calculateOverlappingPairs"
               MULTI-SAP-BROADPHASE/CALCULATE-OVERLAPPING-PAIRS) :void
  (self :pointer)
  (dispatcher :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_testAabbOverlap"
               MULTI-SAP-BROADPHASE/TEST-AABB-OVERLAP) :pointer
  (self :pointer)
  (proxy0 :pointer)
  (proxy1 :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getOverlappingPairCache__SWIG_0"
               MULTI-SAP-BROADPHASE/GET-OVERLAPPING-PAIR-CACHE) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btMultiSapBroadphase_getOverlappingPairCache__SWIG_1"
               MULTI-SAP-BROADPHASE/GET-OVERLAPPING-PAIR-CACHE) :pointer
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_getBroadphaseAabb"
               MULTI-SAP-BROADPHASE/GET-BROADPHASE-AABB) :void
  (self :pointer)
  (aabbMin :pointer)
  (aabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_buildTree"
               MULTI-SAP-BROADPHASE/BUILD-TREE) :void
  (self :pointer)
  (bvhAabbMin :pointer)
  (bvhAabbMax :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_printStats"
               MULTI-SAP-BROADPHASE/PRINT-STATS) :void
  (self :pointer))

(defcfun ("_wrap_btMultiSapBroadphase_quicksort"
               MULTI-SAP-BROADPHASE/QUICKSORT) :void
  (self :pointer)
  (a :pointer)
  (lo :int)
  (hi :int))

(defcfun ("_wrap_btMultiSapBroadphase_resetPool"
               MULTI-SAP-BROADPHASE/RESET-POOL) :void
  (self :pointer)
  (dispatcher :pointer))
(define-constant +DBVT-BP-PROFILE+ 0)
(define-constant +DBVT-BP-PREVENTFALSEUPDATE+ 0)
(define-constant +DBVT-BP-ACCURATESLEEPING+ 0)
(define-constant +DBVT-BP-ENABLE-BENCHMARK+ 0)


(define-constant +USE-BT-CLOCK+ 1)

(defcfun ("_wrap_new_btClock__SWIG_0"
               MAKE-CLOCK) :pointer)

(defcfun ("_wrap_new_btClock__SWIG_1"
               MAKE-CLOCK/with-other) :pointer
  (other :pointer))

(defcfun ("_wrap_btClock_assignValue"
               cLOCK/ASSIGN-VALUE) :pointer
  (self :pointer)
  (other :pointer))

(defcfun ("_wrap_delete_btClock"
               DELETE/BT-CLOCK) :void
  (self :pointer))

(defcfun ("_wrap_btClock_reset"
               cLOCK/RESET) :void
  (self :pointer))

(defcfun ("_wrap_btClock_getTimeMilliseconds"
               cLOCK/GET-TIME-MILLISECONDS) :unsigned-long
  (self :pointer))

(defcfun ("_wrap_btClock_getTimeMicroseconds"
               cLOCK/GET-TIME-MICROSECONDS) :unsigned-long
  (self :pointer))

(defcfun ("_wrap_new_CProfileNode"
               MAKE-CPROFILE-NODE) :pointer
  (name :string)
  (parent :pointer))

(defcfun ("_wrap_delete_CProfileNode"
               DELETE/CPROFILE-NODE) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Sub_Node"
               cPROFILE-NODE/GET/SUB/NODE) :pointer
  (self :pointer)
  (name :string))

(defcfun ("_wrap_CProfileNode_Get_Parent"
               cPROFILE-NODE/GET/PARENT) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Sibling"
               cPROFILE-NODE/GET/SIBLING) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Child"
               cPROFILE-NODE/GET/CHILD) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_CleanupMemory"
               cPROFILE-NODE/CLEANUP-MEMORY) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Reset"
               cPROFILE-NODE/RESET) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Call"
               cPROFILE-NODE/CALL) :void
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Return"
               cPROFILE-NODE/RETURN) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Name"
               cPROFILE-NODE/GET/NAME) :string
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Total_Calls"
               cPROFILE-NODE/GET/TOTAL/CALLS) :int
  (self :pointer))

(defcfun ("_wrap_CProfileNode_Get_Total_Time"
               cPROFILE-NODE/GET/TOTAL/TIME) :float
  (self :pointer))

(defcfun ("_wrap_CProfileNode_GetUserPointer"
               cPROFILE-NODE/GET-USER-POINTER) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileNode_SetUserPointer"
               cPROFILE-NODE/SET-USER-POINTER) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_CProfileIterator_First"
               cPROFILE-ITERATOR/FIRST) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Next"
               cPROFILE-ITERATOR/NEXT) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Is_Done"
               cPROFILE-ITERATOR/IS/DONE) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Is_Root"
               cPROFILE-ITERATOR/IS/ROOT) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Enter_Child"
               cPROFILE-ITERATOR/ENTER/CHILD) :void
  (self :pointer)
  (index :int))

(defcfun ("_wrap_CProfileIterator_Enter_Largest_Child"
               cPROFILE-ITERATOR/ENTER/LARGEST/CHILD) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Enter_Parent"
               cPROFILE-ITERATOR/ENTER/PARENT) :void
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Name"
               cPROFILE-ITERATOR/GET/CURRENT/NAME) :string
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Total_Calls"
               cPROFILE-ITERATOR/GET/CURRENT/TOTAL/CALLS) :int
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Total_Time"
               cPROFILE-ITERATOR/GET/CURRENT/TOTAL/TIME) :float
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_UserPointer"
               cPROFILE-ITERATOR/GET/CURRENT/USER-POINTER) :pointer
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Set_Current_UserPointer"
               cPROFILE-ITERATOR/SET/CURRENT/USER-POINTER) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Name"
               cPROFILE-ITERATOR/GET/CURRENT/PARENT/NAME) :string
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Total_Calls"
               cPROFILE-ITERATOR/GET/CURRENT/PARENT/TOTAL/CALLS) :int
  (self :pointer))

(defcfun ("_wrap_CProfileIterator_Get_Current_Parent_Total_Time"
               cPROFILE-ITERATOR/GET/CURRENT/PARENT/TOTAL/TIME) :float
  (self :pointer))

(defcfun ("_wrap_delete_CProfileIterator"
               DELETE/CPROFILE-ITERATOR) :void
  (self :pointer))

(defcfun ("_wrap_CProfileManager_Start_Profile"
               cPROFILE-MANAGER/START/PROFILE) :void
  (name :string))

(defcfun ("_wrap_CProfileManager_Stop_Profile"
               cPROFILE-MANAGER/STOP/PROFILE) :void)

(defcfun ("_wrap_CProfileManager_CleanupMemory"
               cPROFILE-MANAGER/CLEANUP-MEMORY) :void)

(defcfun ("_wrap_CProfileManager_Reset"
               cPROFILE-MANAGER/RESET) :void)

(defcfun ("_wrap_CProfileManager_Increment_Frame_Counter"
               cPROFILE-MANAGER/INCREMENT/FRAME/COUNTER) :void)

(defcfun ("_wrap_CProfileManager_Get_Frame_Count_Since_Reset"
               cPROFILE-MANAGER/GET/FRAME/COUNT/SINCE/RESET) :int)

(defcfun ("_wrap_CProfileManager_Get_Time_Since_Reset"
               cPROFILE-MANAGER/GET/TIME/SINCE/RESET) :float)

(defcfun ("_wrap_CProfileManager_Get_Iterator"
               cPROFILE-MANAGER/GET/ITERATOR) :pointer)

(defcfun ("_wrap_CProfileManager_Release_Iterator"
               cPROFILE-MANAGER/RELEASE/ITERATOR) :void
  (iterator :pointer))

(defcfun ("_wrap_CProfileManager_dumpRecursive"
               cPROFILE-MANAGER/DUMP-RECURSIVE) :void
  (profileIterator :pointer)
  (spacing :int))

(defcfun ("_wrap_CProfileManager_dumpAll"
               cPROFILE-MANAGER/DUMP-ALL) :void)

(defcfun ("_wrap_new_CProfileManager"
               MAKE-CPROFILE-MANAGER) :pointer)

(defcfun ("_wrap_delete_CProfileManager"
               DELETE/CPROFILE-MANAGER) :void
  (self :pointer))

(defcfun ("_wrap_new_CProfileSample"
               MAKE-CPROFILE-SAMPLE) :pointer
  (name :string))

(defcfun ("_wrap_delete_CProfileSample"
               DELETE/CPROFILE-SAMPLE) :void
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
               DELETE/BT-IDEBUG-DRAW) :void
  (self :pointer))

(defcfun ("_wrap_btIDebugDraw_drawLine__SWIG_0"
               IDEBUG-DRAW/DRAW-LINE/with-from&to&color) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawLine__SWIG_1"
               IDEBUG-DRAW/DRAW-LINE/with-from&to&from-&to-color) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (fromColor :pointer)
  (toColor :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSphere__SWIG_0"
               IDEBUG-DRAW/DRAW-SPHERE/with-radius&transform&color) :void
  (self :pointer)
  (radius :float)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawSphere__SWIG_1"
               IDEBUG-DRAW/DRAW-SPHERE/with-p&radius&color) :void
  (self :pointer)
  (p :pointer)
  (radius :float)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawTriangle__SWIG_0"
               IDEBUG-DRAW/DRAW-TRIANGLE/with-v0&1&2&arg4&5&6&color&alpha) :void
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
               IDEBUG-DRAW/DRAW-TRIANGLE/with-v0&1&2&color&arg5) :void
  (self :pointer)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer)
  (color :pointer)
  (arg5 :float))

(defcfun ("_wrap_btIDebugDraw_drawContactPoint"
               IDEBUG-DRAW/DRAW-CONTACT-POINT) :void
  (self :pointer)
  (PointOnB :pointer)
  (normalOnB :pointer)
  (distance :float)
  (lifeTime :int)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_reportErrorWarning"
               IDEBUG-DRAW/REPORT-ERROR-WARNING) :void
  (self :pointer)
  (warningString :string))

(defcfun ("_wrap_btIDebugDraw_draw3dText"
               IDEBUG-DRAW/DRAW-3D-TEXT) :void
  (self :pointer)
  (location :pointer)
  (textString :string))

(defcfun ("_wrap_btIDebugDraw_setDebugMode"
               IDEBUG-DRAW/SET-DEBUG-MODE) :void
  (self :pointer)
  (debugMode :int))

(defcfun ("_wrap_btIDebugDraw_getDebugMode"
               IDEBUG-DRAW/GET-DEBUG-MODE) :int
  (self :pointer))

(defcfun ("_wrap_btIDebugDraw_drawAabb"
               IDEBUG-DRAW/DRAW-AABB) :void
  (self :pointer)
  (from :pointer)
  (to :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawTransform"
               IDEBUG-DRAW/DRAW-TRANSFORM) :void
  (self :pointer)
  (transform :pointer)
  (orthoLen :float))

(defcfun ("_wrap_btIDebugDraw_drawArc__SWIG_0"
               IDEBUG-DRAW/DRAW-ARC) :void
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
               IDEBUG-DRAW/DRAW-ARC/with-center&normal&axis&radius-a&&b&&min-&max-angle&color&draw-sect)
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
               IDEBUG-DRAW/DRAW-SPHERE-PATCH/with-c&u&a&r&m&m&m&m&c&s&d) :void
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
               IDEBUG-DRAW/DRAW-SPHERE-PATCH/with-c&u&a&r&m&m&m&m&c&s) :void
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
               IDEBUG-DRAW/DRAW-SPHERE-PATCH/with-c&u&a&r&m&m&m&m&c) :void
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
               IDEBUG-DRAW/DRAW-BOX/with-bb-min&max&color) :void
  (self :pointer)
  (bbMin :pointer)
  (bbMax :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawBox__SWIG_1"
               IDEBUG-DRAW/DRAW-BOX/with-bb-min&max&trans&color) :void
  (self :pointer)
  (bbMin :pointer)
  (bbMax :pointer)
  (trans :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCapsule"
               IDEBUG-DRAW/DRAW-CAPSULE) :void
  (self :pointer)
  (radius :float)
  (halfHeight :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCylinder"
               IDEBUG-DRAW/DRAW-CYLINDER) :void
  (self :pointer)
  (radius :float)
  (halfHeight :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawCone"
               IDEBUG-DRAW/DRAW-CONE) :void
  (self :pointer)
  (radius :float)
  (height :float)
  (upAxis :int)
  (transform :pointer)
  (color :pointer))

(defcfun ("_wrap_btIDebugDraw_drawPlane"
               IDEBUG-DRAW/DRAW-PLANE) :void
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
               STR-LEN) :int
  (str :string))

(defcfun ("_wrap_btChunk_m_chunkCode_set"
               cHUNK/CHUNK-CODE/SET) :void
  (self :pointer)
  (m_chunkCode :int))

(defcfun ("_wrap_btChunk_m_chunkCode_get"
               cHUNK/CHUNK-CODE/GET) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_length_set"
               cHUNK/LENGTH/SET) :void
  (self :pointer)
  (m_length :int))

(defcfun ("_wrap_btChunk_m_length_get"
               cHUNK/LENGTH/GET) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_oldPtr_set"
               cHUNK/OLD-PTR/SET) :void
  (self :pointer)
  (m_oldPtr :pointer))

(defcfun ("_wrap_btChunk_m_oldPtr_get"
               cHUNK/OLD-PTR/GET) :pointer
  (self :pointer))

(defcfun ("_wrap_btChunk_m_dna_nr_set"
               cHUNK/DNA/NR/SET) :void
  (self :pointer)
  (m_dna_nr :int))

(defcfun ("_wrap_btChunk_m_dna_nr_get"
               cHUNK/DNA/NR/GET) :int
  (self :pointer))

(defcfun ("_wrap_btChunk_m_number_set"
               cHUNK/NUMBER/SET) :void
  (self :pointer)
  (m_number :int))

(defcfun ("_wrap_btChunk_m_number_get"
               cHUNK/NUMBER/GET) :int
  (self :pointer))

(defcfun ("_wrap_new_btChunk"
               MAKE-CHUNK) :pointer)

(defcfun ("_wrap_delete_btChunk"
               DELETE/BT-CHUNK) :void
  (self :pointer))
(cffi:defcenum SERIALIZATION-FLAGS
  (:SERIALIZE-NO-BVH 1)
  (:SERIALIZE-NO-TRIANGLEINFOMAP 2)
  (:SERIALIZE-NO-DUPLICATE-ASSERT 4))

(defcfun ("_wrap_delete_btSerializer"
               DELETE/BT-SERIALIZER) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_getBufferPointer"
               SERIALIZER/GET-BUFFER-POINTER) :pointer
  (self :pointer))

(defcfun ("_wrap_btSerializer_getCurrentBufferSize"
               SERIALIZER/GET-CURRENT-BUFFER-SIZE) :int
  (self :pointer))

(defcfun ("_wrap_btSerializer_allocate"
               SERIALIZER/ALLOCATE) :pointer
  (self :pointer)
  (size :pointer)
  (numElements :int))

(defcfun ("_wrap_btSerializer_finalizeChunk"
               SERIALIZER/FINALIZE-CHUNK) :void
  (self :pointer)
  (chunk :pointer)
  (structType :string)
  (chunkCode :int)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_findPointer"
               SERIALIZER/FIND-POINTER) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_getUniquePointer"
               SERIALIZER/GET-UNIQUE-POINTER) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btSerializer_startSerialization"
               SERIALIZER/START-SERIALIZATION) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_finishSerialization"
               SERIALIZER/FINISH-SERIALIZATION) :void
  (self :pointer))

(defcfun ("_wrap_btSerializer_findNameForPointer"
               SERIALIZER/FIND-NAME-FOR-POINTER) :string
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btSerializer_registerNameForPointer"
               SERIALIZER/REGISTER-NAME-FOR-POINTER) :void
  (self :pointer)
  (ptr :pointer)
  (name :string))

(defcfun ("_wrap_btSerializer_serializeName"
               SERIALIZER/SERIALIZE-NAME) :void
  (self :pointer)
  (ptr :string))

(defcfun ("_wrap_btSerializer_getSerializationFlags"
               SERIALIZER/GET-SERIALIZATION-FLAGS) :int
  (self :pointer))

(defcfun ("_wrap_btSerializer_setSerializationFlags"
               SERIALIZER/SET-SERIALIZATION-FLAGS) :void
  (self :pointer)
  (flags :int))
(define-constant +HEADER-LENGTH+ 12)


(defcfun ("_wrap_new_btDefaultSerializer__SWIG_0"
               MAKE-DEFAULT-SERIALIZER/with-total-size) :pointer
  (totalSize :int))

(defcfun ("_wrap_new_btDefaultSerializer__SWIG_1"
               MAKE-DEFAULT-SERIALIZER) :pointer)

(defcfun ("_wrap_delete_btDefaultSerializer"
               DELETE/BT-DEFAULT-SERIALIZER) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_writeHeader"
               DEFAULT-SERIALIZER/WRITE-HEADER) :void
  (self :pointer)
  (buffer :pointer))

(defcfun ("_wrap_btDefaultSerializer_startSerialization"
               DEFAULT-SERIALIZER/START-SERIALIZATION) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_finishSerialization"
               DEFAULT-SERIALIZER/FINISH-SERIALIZATION) :void
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_getUniquePointer"
               DEFAULT-SERIALIZER/GET-UNIQUE-POINTER) :pointer
  (self :pointer)
  (oldPtr :pointer))

(defcfun ("_wrap_btDefaultSerializer_getBufferPointer"
               DEFAULT-SERIALIZER/GET-BUFFER-POINTER) :pointer
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_getCurrentBufferSize"
               DEFAULT-SERIALIZER/GET-CURRENT-BUFFER-SIZE) :int
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_finalizeChunk"
               DEFAULT-SERIALIZER/FINALIZE-CHUNK) :void
  (self :pointer)
  (chunk :pointer)
  (structType :string)
  (chunkCode :int)
  (oldPtr :pointer))

(defcfun ("_wrap_btDefaultSerializer_internalAlloc"
               DEFAULT-SERIALIZER/INTERNAL-ALLOC) :pointer
  (self :pointer)
  (size :pointer))

(defcfun ("_wrap_btDefaultSerializer_allocate"
               DEFAULT-SERIALIZER/ALLOCATE) :pointer
  (self :pointer)
  (size :pointer)
  (numElements :int))

(defcfun ("_wrap_btDefaultSerializer_findNameForPointer"
               DEFAULT-SERIALIZER/FIND-NAME-FOR-POINTER) :string
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDefaultSerializer_registerNameForPointer"
               DEFAULT-SERIALIZER/REGISTER-NAME-FOR-POINTER) :void
  (self :pointer)
  (ptr :pointer)
  (name :string))

(defcfun ("_wrap_btDefaultSerializer_serializeName"
               DEFAULT-SERIALIZER/SERIALIZE-NAME) :void
  (self :pointer)
  (name :string))

(defcfun ("_wrap_btDefaultSerializer_getSerializationFlags"
               DEFAULT-SERIALIZER/GET-SERIALIZATION-FLAGS) :int
  (self :pointer))

(defcfun ("_wrap_btDefaultSerializer_setSerializationFlags"
               DEFAULT-SERIALIZER/SET-SERIALIZATION-FLAGS) :void
  (self :pointer)
  (flags :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusPlusInstance__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/MAKE-c++-INSTANCE) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusPlusInstance__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/DELETE-c++-INSTANCE) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusPlusInstance__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/MAKE-c++-INSTANCE/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusPlusInstance__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/DELETE-c++-INSTANCE/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusArray__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/MAKE-c++-ARRAY) :pointer
  (self :pointer)
  (sizeInBytes :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusArray__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/DELETE-c++-ARRAY) :void
  (self :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_makeCPlusArray__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/MAKE-c++-ARRAY/with-arg1&ptr) :pointer
  (self :pointer)
  (arg1 :pointer)
  (ptr :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_deleteCPlusArray__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/DELETE-c++-ARRAY/with-arg1&2) :void
  (self :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(defcfun ("_wrap_new_btDiscreteDynamicsWorld"
               MAKE-DISCRETE-DYNAMICS-WORLD) :pointer
  (dispatcher :pointer)
  (pairCache :pointer)
  (constraintSolver :pointer)
  (collisionConfiguration :pointer))

(defcfun ("_wrap_delete_btDiscreteDynamicsWorld"
               DELETE/BT-DISCRETE-DYNAMICS-WORLD) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/STEP-SIMULATION/with-time-step&max-sub-steps&fixed-time-step)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int)
  (fixedTimeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/STEP-SIMULATION/with-time-step&max-sub-steps)
    :int
  (self :pointer)
  (timeStep :float)
  (maxSubSteps :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_stepSimulation__SWIG_2"
               DISCRETE-DYNAMICS-WORLD/STEP-SIMULATION/with-time-step) :int
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_synchronizeMotionStates"
               DISCRETE-DYNAMICS-WORLD/SYNCHRONIZE-MOTION-STATES) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_synchronizeSingleMotionState"
               DISCRETE-DYNAMICS-WORLD/SYNCHRONIZE-SINGLE-MOTION-STATE) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addConstraint__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/ADD-CONSTRAINT/with-disable-collision-between-linked-bodies) 
    :void
  (self :pointer)
  (constraint :pointer)
  (disableCollisionsBetweenLinkedBodies :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addConstraint__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/ADD-CONSTRAINT) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeConstraint"
               DISCRETE-DYNAMICS-WORLD/REMOVE-CONSTRAINT) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addAction"
               DISCRETE-DYNAMICS-WORLD/ADD-ACTION) :void
  (self :pointer)
  (arg1 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeAction"
               DISCRETE-DYNAMICS-WORLD/REMOVE-ACTION) :void
  (self :pointer)
  (arg1 :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getSimulationIslandManager__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/GET-SIMULATION-ISLAND-MANAGER) :pointer
  (self :pointer))
#+ (or)
(defcfun ("_wrap_btDiscreteDynamicsWorld_getSimulationIslandManager__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/GET-SIMULATION-ISLAND-MANAGER) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getCollisionWorld"
               DISCRETE-DYNAMICS-WORLD/GET-COLLISION-WORLD) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setGravity"
               DISCRETE-DYNAMICS-WORLD/SET-GRAVITY) :void
  (self :pointer)
  (gravity :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getGravity"
               DISCRETE-DYNAMICS-WORLD/GET-GRAVITY) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/ADD-COLLISION-OBJECT/with-filter-group&mask) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short)
  (collisionFilterMask :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/ADD-COLLISION-OBJECT/with-filter-group) :void
  (self :pointer)
  (collisionObject :pointer)
  (collisionFilterGroup :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCollisionObject__SWIG_2"
               DISCRETE-DYNAMICS-WORLD/ADD-COLLISION-OBJECT) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addRigidBody__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/ADD-RIGID-BODY) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addRigidBody__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/ADD-RIGID-BODY/with-group&mask) :void
  (self :pointer)
  (body :pointer)
  (group :short)
  (mask :short))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeRigidBody"
               DISCRETE-DYNAMICS-WORLD/REMOVE-RIGID-BODY) :void
  (self :pointer)
  (body :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeCollisionObject"
               DISCRETE-DYNAMICS-WORLD/REMOVE-COLLISION-OBJECT) :void
  (self :pointer)
  (collisionObject :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_debugDrawConstraint"
               DISCRETE-DYNAMICS-WORLD/DEBUG-DRAW-CONSTRAINT) :void
  (self :pointer)
  (constraint :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_debugDrawWorld"
               DISCRETE-DYNAMICS-WORLD/DEBUG-DRAW-WORLD) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setConstraintSolver"
               DISCRETE-DYNAMICS-WORLD/SET-CONSTRAINT-SOLVER) :void
  (self :pointer)
  (solver :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraintSolver"
               DISCRETE-DYNAMICS-WORLD/GET-CONSTRAINT-SOLVER) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getNumConstraints"
               DISCRETE-DYNAMICS-WORLD/GET-NUM-CONSTRAINTS) :int
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraint__SWIG_0"
               DISCRETE-DYNAMICS-WORLD/GET-CONSTRAINT) :pointer
  (self :pointer)
  (index :int))
#+ (or)
(defcfun ("_wrap_btDiscreteDynamicsWorld_getConstraint__SWIG_1"
               DISCRETE-DYNAMICS-WORLD/GET-CONSTRAINT) :pointer
  (self :pointer)
  (index :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_getWorldType"
               DISCRETE-DYNAMICS-WORLD/GET-WORLD-TYPE) :pointer
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_clearForces"
               DISCRETE-DYNAMICS-WORLD/CLEAR-FORCES) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_applyGravity"
               DISCRETE-DYNAMICS-WORLD/APPLY-GRAVITY) :void
  (self :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_setNumTasks"
               DISCRETE-DYNAMICS-WORLD/SET-NUM-TASKS) :void
  (self :pointer)
  (numTasks :int))

(defcfun ("_wrap_btDiscreteDynamicsWorld_updateVehicles"
               DISCRETE-DYNAMICS-WORLD/UPDATE-VEHICLES) :void
  (self :pointer)
  (timeStep :float))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addVehicle"
               DISCRETE-DYNAMICS-WORLD/ADD-VEHICLE) :void
  (self :pointer)
  (vehicle :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_removeVehicle"
               DISCRETE-DYNAMICS-WORLD/REMOVE-VEHICLE) :void
  (self :pointer)
  (vehicle :pointer))

(defcfun ("_wrap_btDiscreteDynamicsWorld_addCharacter"
               DISCRETE-DYNAMICS-WORLD/ADD-CHARACTER) :void
  (self :pointer)
  (character :pointer))


