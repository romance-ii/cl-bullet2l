(in-package #:bullet-physics)

(defmethod initialize-instance :after ((obj triangle-index-vertex-array)
                                       &key
                                         num-triangles
                                         triangle-index-base
                                         triangle-index-stride
                                         num-vertices 
                                         vertex-base
                                         vertex-stride)
  (setf (slot-value obj 'ff-pointer)
        (cond
          ((and num-triangles num-vertices
                triangle-index-base triangle-index-stride
                vertex-base vertex-stride)
           (check-type num-triangles integer)
           (check-type triangle-index-stride integer)
           (check-type num-vertices integer)
           (check-type vertex-stride integer)
           (make-triangle-index-vertex-array/with-triangle-index-base&stride&num-vertices&vertex-base&stride
            num-triangles triangle-index-base triangle-index-stride
            num-vertices vertex-base vertex-stride))
         (t (make-triangle-index-vertex-array)))))

(defmethod add-indexed-mesh ((self triangle-index-vertex-array) mesh 
                             &optional (index-type nil type?))
  (cond
    (type? (triangle-index-vertex-array/add-indexed-mesh/with-index-type
            (ff-pointer self) mesh index-type))
    (t (triangle-index-vertex-array/add-indexed-mesh (ff-pointer self) mesh))))

(defmethod locked-vertex-index-base ((self triangle-index-vertex-array)
                                     vertex-base num-vertices type vertex-stride
                                     index-base index-stride
                                     num-faces
                                     indices-type 
                                     &key subpart read-only-p)
  (cond 
    
    ((and read-only-p subpart)
     (check-type subpart integer) 
     (triangle-index-vertex-array/get-locked-read-only-vertex-index-base/with-subpart
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type subpart))

    ((and read-only-p (not subpart)) 
     (triangle-index-vertex-array/get-locked-read-only-vertex-index-base
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type))
    
    (subpart
     (check-type subpart integer)
     (triangle-index-vertex-array/get-locked-vertex-index-base/with-subpart
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type subpart))
    
    (t (triangle-index-vertex-array/get-locked-vertex-index-base
        (ff-pointer self) vertex-base num-vertices type vertex-stride
        index-base index-stride num-faces indices-type))))

(defmethod un-lock-vertex-base ((self triangle-index-vertex-array) (subpart integer))
  (triangle-index-vertex-array/un-lock-vertex-base (ff-pointer self) subpart))

(defmethod un-lock-read-only-vertex-base
    ((self triangle-index-vertex-array) (subpart integer))
  (triangle-index-vertex-array/un-lock-read-only-vertex-base (ff-pointer self) subpart))

(defmethod num-sub-parts ((self triangle-index-vertex-array))
  (triangle-index-vertex-array/get-num-sub-parts (ff-pointer self)))

(defmethod indexed-mesh-array ((self triangle-index-vertex-array))
  (triangle-index-vertex-array/get-indexed-mesh-array (ff-pointer self)))

(defmethod indexed-mesh-array ((self triangle-index-vertex-array))
  (triangle-index-vertex-array/get-indexed-mesh-array (ff-pointer self)))

(defmethod preallocate-vertices ((self triangle-index-vertex-array) (numverts integer))
  (triangle-index-vertex-array/preallocate-vertices (ff-pointer self) numverts))

(defmethod preallocate-indices
    ((self triangle-index-vertex-array) (numindices integer))
  (triangle-index-vertex-array/preallocate-indices (ff-pointer self) numindices))

(defmethod has-premade-aabb-p ((self triangle-index-vertex-array))
  (triangle-index-vertex-array/has-premade-aabb (ff-pointer self)))

(defmethod (setf premade-aabb)
    ( (aabbmin vector3) (self triangle-index-vertex-array) (aabbmax vector3))
  (triangle-index-vertex-array/set-premade-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod premade-aabb
    ((self triangle-index-vertex-array) (aabbmin vector3) (aabbmax vector3))
  (triangle-index-vertex-array/get-premade-aabb (ff-pointer self) aabbmin aabbmax))
#+(or) (defmethod new ((self compound-shape) sizeinbytes)
  (compound-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self compound-shape) ptr)
  (compound-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self compound-shape) arg1 ptr)
  (compound-shape/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self compound-shape) arg1 arg2)
  (compound-shape/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self compound-shape) sizeinbytes)
  (compound-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self compound-shape) ptr)
  (compound-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self compound-shape) arg1 ptr)
  (compound-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self compound-shape) arg1 arg2)
  (compound-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj compound-shape) 
                                       &key (enable-dynamic-aabb-tree-p t aabb?))
  (setf (slot-value obj 'ff-pointer)
        (if aabb?
            (make-compound-shape/with-enable-dynamic-aabb-tree enable-dynamic-aabb-tree-p)
            (make-compound-shape))))

(defmethod add-child-shape ((self compound-shape) (localtransform transform) shape)
  (compound-shape/add-child-shape (ff-pointer self) localtransform shape))

(defmethod remove-child-shape ((self compound-shape) shape)
  (compound-shape/remove-child-shape (ff-pointer self) shape))

(defmethod remove-child-shape-by-index ((self compound-shape) (childshapeindex integer))
  (compound-shape/remove-child-shape-by-index (ff-pointer self) childshapeindex))

(defmethod num-child-shapes ((self compound-shape))
  (compound-shape/get-num-child-shapes (ff-pointer self)))

(defmethod child-shape-elt ((self compound-shape) (index integer))
  (compound-shape/get-child-shape (ff-pointer self) index))

(defmethod child-shape-elt ((self compound-shape) (index integer))
  (compound-shape/get-child-shape (ff-pointer self) index))

(defmethod child-transform ((self compound-shape) (index integer))
  (compound-shape/get-child-transform (ff-pointer self) index))

(defmethod child-transform ((self compound-shape) (index integer))
  (compound-shape/get-child-transform (ff-pointer self) index))

(defmethod update-child-transform ((self compound-shape) (child-index integer)
                                   (new-child-transform transform) &optional (should-recalculate-local-aabb-p t aabb?))
  (if aabb?
      (compound-shape/update-child-transform/with-recalc
       (ff-pointer self) child-index new-child-transform
       should-recalculate-local-aabb-p)
      (compound-shape/update-child-transform
       (ff-pointer self) child-index new-child-transform)))

(defmethod child-list ((self compound-shape))
  (compound-shape/get-child-list (ff-pointer self)))

(defmethod aabb+ ((self compound-shape) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (compound-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod recalculate-local-aabb ((self compound-shape))
  (compound-shape/recalculate-local-aabb (ff-pointer self)))

(defmethod (setf local-scaling) ( (scaling vector3) (self compound-shape))
  (compound-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self compound-shape))
  (compound-shape/get-local-scaling (ff-pointer self)))

(defmethod calculate-local-inertia ((self compound-shape) (mass number) (inertia vector3))
  (compound-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod (setf margin) ( (margin number) (self compound-shape))
  (compound-shape/set-margin (ff-pointer self) margin))

(defmethod margin ((self compound-shape))
  (compound-shape/get-margin (ff-pointer self)))

(defmethod name ((self compound-shape))
  (compound-shape/get-name (ff-pointer self)))

(defmethod dynamic-aabb-tree ((self compound-shape))
  (compound-shape/get-dynamic-aabb-tree (ff-pointer self)))

(defmethod dynamic-aabb-tree ((self compound-shape))
  (compound-shape/get-dynamic-aabb-tree (ff-pointer self)))

(defmethod create-aabb-tree-from-children ((self compound-shape))
  (compound-shape/create-aabb-tree-from-children (ff-pointer self)))

(defmethod calculate-principal-axis-transform ((self compound-shape) masses (principal transform) (inertia vector3))
  (compound-shape/calculate-principal-axis-transform (ff-pointer self) masses principal inertia))

(defmethod update-revision ((self compound-shape))
  (compound-shape/get-update-revision (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self compound-shape))
  (compound-shape/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self compound-shape) &key data-buffer serializer &allow-other-keys)
  (compound-shape/serialize (ff-pointer self) data-buffer serializer))
#+(or) (defmethod new ((self bu-simplex1to4) sizeinbytes)
  (bu/simplex1to4/make-c++-instance/with-size (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self bu-simplex1to4) ptr)
  (bu/simplex1to4/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self bu-simplex1to4) arg1 ptr)
  (bu/simplex1to4/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self bu-simplex1to4) arg1 arg2)
  (bu/simplex1to4/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self bu-simplex1to4) sizeinbytes)
  (bu/simplex1to4/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self bu-simplex1to4) ptr)
  (bu/simplex1to4/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self bu-simplex1to4) arg1 ptr)
  (bu/simplex1to4/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self bu-simplex1to4) arg1 arg2)
  (bu/simplex1to4/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj bu-simplex1to4) 
                                       &key
                                         (pt0 nil pt0?)
                                         (pt1 nil pt1?)
                                         (pt2 nil pt2?)
                                         (pt3 nil pt3?))
  (check-type pt0 (or null vector3))
  (check-type pt1 (or null vector3))
  (check-type pt2 (or null vector3))
  (check-type pt3 (or null vector3))
  (setf (slot-value obj 'ff-pointer) 
        (cond
          ((and pt3? pt2? pt1? pt0?)
           (make-bu/simplex1to4/with-pt0&1&2&3  pt0 pt1 pt2 pt3))
          ((and (not pt3?) pt2? pt1? pt0? )
           (make-bu/simplex1to4/with-pt0&1&2    pt0 pt1 pt2))
          ((and (not pt2?) (not pt3?) pt1? pt0?)
           (make-bu/simplex1to4/with-pt0&1      pt0 pt1))
          ((and pt0? (not pt1?) (not pt2?) (not pt3?))
           (make-bu/simplex1to4/with-pt0        pt0))
          ((and (not pt0?) (not pt1?) (not pt2?) (not pt3?))
           (make-bu/simplex1to4))
          (t (error 'foo)))))

(defmethod reset ((self bu-simplex1to4))
  (bu/simplex1to4/reset (ff-pointer self)))

(defmethod aabb+ ((self bu-simplex1to4) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (bu/simplex1to4/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod add-vertex ((self bu-simplex1to4) (pt vector3))
  (bu/simplex1to4/add-vertex (ff-pointer self) pt))

(defmethod num-vertices ((self bu-simplex1to4))
  (bu/simplex1to4/get-num-vertices (ff-pointer self)))

(defmethod num-edges ((self bu-simplex1to4))
  (bu/simplex1to4/get-num-edges (ff-pointer self)))

(defmethod edge ((self bu-simplex1to4) (i integer) (pa vector3) (pb vector3))
  (bu/simplex1to4/get-edge (ff-pointer self) i pa pb))

(defmethod vertex ((self bu-simplex1to4) (i integer) (vtx vector3))
  (bu/simplex1to4/get-vertex (ff-pointer self) i vtx))

(defmethod num-planes ((self bu-simplex1to4))
  (bu/simplex1to4/get-num-planes (ff-pointer self)))

(defmethod plane ((self bu-simplex1to4) (planenormal vector3) (planesupport vector3) (i integer))
  (bu/simplex1to4/get-plane (ff-pointer self) planenormal planesupport i))

(defmethod index ((self bu-simplex1to4) (i integer))
  (bu/simplex1to4/get-index (ff-pointer self) i))

(defmethod insidep ((self bu-simplex1to4) (pt vector3) (tolerance number))
  (bu/simplex1to4/is-inside (ff-pointer self) pt tolerance))

(defmethod name ((self bu-simplex1to4))
  (bu/simplex1to4/get-name (ff-pointer self)))
#+(or) (defmethod new ((self empty-shape) sizeinbytes)
  (empty-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self empty-shape) ptr)
  (empty-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self empty-shape) arg1 ptr)
  (empty-shape/make-c++-instance (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self empty-shape) arg1 arg2)
  (empty-shape/delete-c++-instance (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self empty-shape) sizeinbytes)
  (empty-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self empty-shape) ptr)
  (empty-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self empty-shape) arg1 ptr)
  (empty-shape/make-c++-array (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self empty-shape) arg1 arg2)
  (empty-shape/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj empty-shape) &key)
  (setf (slot-value obj 'ff-pointer) (make-empty-shape)))

(defmethod aabb+ ((self empty-shape) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (empty-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod (setf local-scaling) ( (scaling vector3) (self empty-shape))
  (empty-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self empty-shape))
  (empty-shape/get-local-scaling (ff-pointer self)))

(defmethod calculate-local-inertia ((self empty-shape) (mass number) (inertia vector3))
  (empty-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod name ((self empty-shape))
  (empty-shape/get-name (ff-pointer self)))

(defmethod process-all-triangles ((self empty-shape) arg1 (arg2 vector3) (arg3 vector3))
  (empty-shape/process-all-triangles (ff-pointer self) arg1 arg2 arg3))
#+(or) (defmethod new ((self multi-sphere-shape) sizeinbytes)
  (multi-sphere-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self multi-sphere-shape) ptr)
  (multi-sphere-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self multi-sphere-shape) arg1 ptr)
  (multi-sphere-shape/make-c++-instance (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self multi-sphere-shape) arg1 arg2)
  (multi-sphere-shape/delete-c++-instance (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self multi-sphere-shape) sizeinbytes)
  (multi-sphere-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self multi-sphere-shape) ptr)
  (multi-sphere-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self multi-sphere-shape) arg1 ptr)
  (multi-sphere-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self multi-sphere-shape) arg1 arg2)
  (multi-sphere-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj multi-sphere-shape) 
                                       &key positions radi num-spheres)
  (check-type num-spheres integer)
  (check-type positions vector3)
  (setf (slot-value obj 'ff-pointer)
        (make-multi-sphere-shape (ff-pointer positions) radi num-spheres)))

(defmethod calculate-local-inertia ((self multi-sphere-shape) (mass number) (inertia vector3))
  (multi-sphere-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod local-supporting-vertex-without-margin ((self multi-sphere-shape) (vec vector3))
  (multi-sphere-shape/local-get-supporting-vertex-without-margin (ff-pointer self) vec))

(defmethod batched-unit-vector-supporting-vertex-without-margin ((self multi-sphere-shape) (vectors vector3) (supportverticesout vector3) (numvectors integer))
  (multi-sphere-shape/batched-unit-vector-get-supporting-vertex-without-margin (ff-pointer self) vectors supportverticesout numvectors))

(defmethod sphere-count ((self multi-sphere-shape))
  (multi-sphere-shape/get-sphere-count (ff-pointer self)))

(defmethod sphere-position ((self multi-sphere-shape) (index integer))
  (multi-sphere-shape/get-sphere-position (ff-pointer self) index))

(defmethod sphere-radius ((self multi-sphere-shape) (index integer))
  (multi-sphere-shape/get-sphere-radius (ff-pointer self) index))

(defmethod name ((self multi-sphere-shape))
  (multi-sphere-shape/get-name (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self multi-sphere-shape))
  (multi-sphere-shape/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self multi-sphere-shape) &key data-buffer serializer &allow-other-keys)
  (multi-sphere-shape/serialize (ff-pointer self) data-buffer serializer))
#+(or) (defmethod new ((self uniform-scaling-shape) sizeinbytes)
  (uniform-scaling-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self uniform-scaling-shape) ptr)
  (uniform-scaling-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self uniform-scaling-shape) arg1 ptr)
  (uniform-scaling-shape/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self uniform-scaling-shape) arg1 arg2)
  (uniform-scaling-shape/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self uniform-scaling-shape) sizeinbytes)
  (uniform-scaling-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self uniform-scaling-shape) ptr)
  (uniform-scaling-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self uniform-scaling-shape) arg1 ptr)
  (uniform-scaling-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self uniform-scaling-shape) arg1 arg2)
  (uniform-scaling-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj uniform-scaling-shape)
                                       &key convex-child-shape uniform-scaling-factor)
  (check-type uniform-scaling-factor number)
  (setf (slot-value obj 'ff-pointer)
        (make-uniform-scaling-shape convex-child-shape uniform-scaling-factor)))

(defmethod local-supporting-vertex-without-margin
    ((self uniform-scaling-shape) (vec vector3))
  (uniform-scaling-shape/local-get-supporting-vertex-without-margin (ff-pointer self) vec))

(defmethod local-supporting-vertex ((self uniform-scaling-shape) (vec vector3))
  (uniform-scaling-shape/local-get-supporting-vertex (ff-pointer self) vec))

(defmethod batched-unit-vector-supporting-vertex-without-margin 
    ((self uniform-scaling-shape) (vectors vector3)
     (supportverticesout vector3) (numvectors integer))
  (uniform-scaling-shape/batched-unit-vector-get-supporting-vertex-without-margin (ff-pointer self) vectors supportverticesout numvectors))

(defmethod calculate-local-inertia ((self uniform-scaling-shape)
                                    (mass number) (inertia vector3))
  (uniform-scaling-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod uniform-scaling-factor ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-uniform-scaling-factor (ff-pointer self)))

(defmethod child-shape ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-child-shape (ff-pointer self)))

(defmethod child-shape ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-child-shape (ff-pointer self)))

(defmethod name ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-name (ff-pointer self)))

(defmethod aabb+ ((self uniform-scaling-shape) (t-arg1 transform)
                 (aabbmin vector3) (aabbmax vector3))
  (uniform-scaling-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod aabb+-slow ((self uniform-scaling-shape) (t-arg1 transform)
                      (aabbmin vector3) (aabbmax vector3))
  (uniform-scaling-shape/get-aabb-slow (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod (setf local-scaling) ( (scaling vector3) (self uniform-scaling-shape))
  (uniform-scaling-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-local-scaling (ff-pointer self)))

(defmethod (setf margin) ( (margin number) (self uniform-scaling-shape))
  (uniform-scaling-shape/set-margin (ff-pointer self) margin))

(defmethod margin ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-margin (ff-pointer self)))

(defmethod num-preferred-penetration-directions ((self uniform-scaling-shape))
  (uniform-scaling-shape/get-num-preferred-penetration-directions (ff-pointer self)))

(defmethod preferred-penetration-direction ((self uniform-scaling-shape)
                                            (index integer) (penetrationvector vector3))
  (uniform-scaling-shape/get-preferred-penetration-direction (ff-pointer self) index penetrationvector))

(defmethod initialize-instance :after ((obj sphere-sphere-collision-algorithm) &key mf ci col0wrap col1wrap)
  (setf (slot-value obj 'ff-pointer)
        (make-sphere-sphere-collision-algorithm mf ci col0wrap col1wrap)))

(defmethod initialize-instance :after ((obj sphere-sphere-collision-algorithm) &key ci)
  (setf (slot-value obj 'ff-pointer) (make-sphere-sphere-collision-algorithm ci)))

(defmethod process-collision ((self sphere-sphere-collision-algorithm) body0wrap body1wrap dispatchinfo resultout)
  (sphere-sphere-collision-algorithm/process-collision (ff-pointer self) body0wrap body1wrap dispatchinfo resultout))

(defmethod calculate-time-of-impact ((self sphere-sphere-collision-algorithm) (body0 collision-object) (body1 collision-object) dispatchinfo resultout)
  (sphere-sphere-collision-algorithm/calculate-time-of-impact (ff-pointer self) body0 body1 dispatchinfo resultout))

(defmethod all-contact-manifolds ((self sphere-sphere-collision-algorithm) manifoldarray)
  (sphere-sphere-collision-algorithm/get-all-contact-manifolds (ff-pointer self) manifoldarray))


(defmethod initialize-instance 
    :after ((obj default-collision-configuration) &key
                                                    construction-info)
  (setf (slot-value obj 'ff-pointer) 
        (make-default-collision-configuration/with-construction-info construction-info)))

(defmethod initialize-instance :after ((obj default-collision-configuration) &key)
  (setf (slot-value obj 'ff-pointer) (make-default-collision-configuration)))

(defmethod persistent-manifold-pool ((self default-collision-configuration))
  (default-collision-configuration/get-persistent-manifold-pool (ff-pointer self)))

(defmethod collision-algorithm-pool ((self default-collision-configuration))
  (default-collision-configuration/get-collision-algorithm-pool (ff-pointer self)))

(defmethod simplex-solver ((self default-collision-configuration))
  (default-collision-configuration/get-simplex-solver (ff-pointer self)))

(defmethod collision-algorithm-create-func ((self default-collision-configuration) (proxytype0 integer) (proxytype1 integer))
  (default-collision-configuration/get-collision-algorithm-create-func (ff-pointer self) proxytype0 proxytype1))

(defmethod (setf convex-convex-multipoint-iterations)
    ((num&min cons)
     (self default-collision-configuration))
  (destructuring-bind 
        (numperturbationiterations minimumpointsperturbationthreshold) num&min
    (check-type numperturbationiterations integer) 
    (check-type minimumpointsperturbationthreshold integer)
    (default-collision-configuration/set-convex-convex-multipoint-iterations/with-num&min
       (ff-pointer self) numperturbationiterations minimumpointsperturbationthreshold)))

(defmethod (setf convex-convex-multipoint-iterations)
    ((numperturbationiterations integer) (self default-collision-configuration))
  (default-collision-configuration/set-convex-convex-multipoint-iterations/with-num
      (ff-pointer self) numperturbationiterations))

(defmethod (setf convex-convex-multipoint-iterations) 
    ((_ null) (self default-collision-configuration))
  (declare (ignore _))
  (default-collision-configuration/set-convex-convex-multipoint-iterations
      (ff-pointer self)))

(defmethod (setf plane-convex-multipoint-iterations) ((num&min cons)
                                                      (self default-collision-configuration))
  
  (destructuring-bind 
        (numperturbationiterations minimumpointsperturbationthreshold) num&min
    (check-type numperturbationiterations integer) 
    (check-type minimumpointsperturbationthreshold integer)
    (default-collision-configuration/set-plane-convex-multipoint-iterations/with-num&min
        (ff-pointer self) numperturbationiterations minimumpointsperturbationthreshold)))

(defmethod (setf plane-convex-multipoint-iterations) ( (numperturbationiterations integer) (self default-collision-configuration))
  (default-collision-configuration/set-plane-convex-multipoint-iterations/with-num
      (ff-pointer self) numperturbationiterations))

(defmethod (setf plane-convex-multipoint-iterations) ((_ null)
                                                      (self default-collision-configuration))
  (default-collision-configuration/set-plane-convex-multipoint-iterations
      (ff-pointer self)))

(defmethod dispatcher-flags ((self collision-dispatcher))
  (collision-dispatcher/get-dispatcher-flags (ff-pointer self)))

(defmethod (setf dispatcher-flags) ( (flags integer) (self collision-dispatcher))
  (collision-dispatcher/set-dispatcher-flags (ff-pointer self) flags))

(defmethod register-collision-create-func ((self collision-dispatcher) (proxytype0 integer) (proxytype1 integer) createfunc)
  (collision-dispatcher/register-collision-create-func (ff-pointer self) proxytype0 proxytype1 createfunc))

(defmethod num-manifolds ((self collision-dispatcher))
  (collision-dispatcher/get-num-manifolds (ff-pointer self)))

(defmethod internal-manifold-pointer ((self collision-dispatcher))
  (collision-dispatcher/get-internal-manifold-pointer (ff-pointer self)))

(defmethod manifold-by-index-internal ((self collision-dispatcher) (index integer))
  (collision-dispatcher/get-manifold-by-index-internal (ff-pointer self) index))

(defmethod manifold-by-index-internal ((self collision-dispatcher) (index integer))
  (collision-dispatcher/get-manifold-by-index-internal (ff-pointer self) index))

(defmethod initialize-instance :after ((obj collision-dispatcher) &key collisionconfiguration)
  (setf (slot-value obj 'ff-pointer) (make-collision-dispatcher collisionconfiguration)))
#+(or) (defmethod new-manifold ((self collision-dispatcher) (b0 collision-object) (b1 collision-object))
  (collision-dispatcher/get-new-manifold (ff-pointer self) b0 b1))

(defmethod release-manifold ((self collision-dispatcher) manifold)
  (collision-dispatcher/release-manifold (ff-pointer self) manifold))

(defmethod clear-manifold ((self collision-dispatcher) manifold)
  (collision-dispatcher/clear-manifold (ff-pointer self) manifold))

(defmethod find-algorithm ((self collision-dispatcher) body0wrap body1wrap &optional sharedmanifold)
  (if sharedmanifold
      (collision-dispatcher/find-algorithm (ff-pointer self) body0wrap body1wrap sharedmanifold)
   (collision-dispatcher/find-algorithm (ff-pointer self) body0wrap body1wrap)))


(defmethod needs-collision ((self collision-dispatcher) (body0 collision-object) (body1 collision-object))
  (collision-dispatcher/needs-collision (ff-pointer self) body0 body1))

(defmethod needs-response ((self collision-dispatcher) (body0 collision-object) (body1 collision-object))
  (collision-dispatcher/needs-response (ff-pointer self) body0 body1))

(defmethod dispatch-all-collision-pairs ((self collision-dispatcher) paircache dispatchinfo dispatcher)
  (collision-dispatcher/dispatch-all-collision-pairs (ff-pointer self) paircache dispatchinfo dispatcher))

(defmethod (setf near-callback) ( nearcallback (self collision-dispatcher))
  (collision-dispatcher/set-near-callback (ff-pointer self) nearcallback))

(defmethod near-callback ((self collision-dispatcher))
  (collision-dispatcher/get-near-callback (ff-pointer self)))

(defmethod allocate-collision-algorithm ((self collision-dispatcher) (size integer))
  (collision-dispatcher/allocate-collision-algorithm (ff-pointer self) size))

(defmethod free-collision-algorithm ((self collision-dispatcher) ptr)
  (collision-dispatcher/free-collision-algorithm (ff-pointer self) ptr))

(defmethod collision-configuration ((self collision-dispatcher))
  (collision-dispatcher/get-collision-configuration (ff-pointer self)))

(defmethod collision-configuration ((self collision-dispatcher))
  (collision-dispatcher/get-collision-configuration (ff-pointer self)))

(defmethod (setf collision-configuration) ( config (self collision-dispatcher))
  (collision-dispatcher/set-collision-configuration (ff-pointer self) config))

(defmethod internal-manifold-pool ((self collision-dispatcher))
  (collision-dispatcher/get-internal-manifold-pool (ff-pointer self)))

(defmethod internal-manifold-pool ((self collision-dispatcher))
  (collision-dispatcher/get-internal-manifold-pool (ff-pointer self)))

(defmethod initialize-instance :after ((obj simple-broadphase)
                                       &key (max-proxies nil max?)
                                         (overlapping-pair-cache nil cache?))
  (setf (slot-value obj 'ff-pointer) 
        (cond ((and max? cache?)
               (make-simple-broadphase/with-max-proxies&overlapping-pair-cache
                max-proxies overlapping-pair-cache))
              (max?
               (make-simple-broadphase/with-max-proxies max-proxies))
              (t
               (make-simple-broadphase)))))

(defmethod create-proxy ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3)
                         (shapetype integer) userptr (collisionfiltergroup integer)
                         (collisionfiltermask integer) dispatcher multisapproxy)
  (simple-broadphase/create-proxy (ff-pointer self) aabbmin aabbmax shapetype userptr collisionfiltergroup collisionfiltermask dispatcher multisapproxy))

(defmethod calculate-overlapping-pairs ((self simple-broadphase) dispatcher)
  (simple-broadphase/calculate-overlapping-pairs (ff-pointer self) dispatcher))

(defmethod destroy-proxy ((self simple-broadphase) proxy dispatcher)
  (simple-broadphase/destroy-proxy (ff-pointer self) proxy dispatcher))

(defmethod (setf aabb) ( proxy (self simple-broadphase)
                        (aabbmin vector3) (aabbmax vector3) dispatcher)
  (simple-broadphase/set-aabb (ff-pointer self) proxy aabbmin aabbmax dispatcher))

(defmethod aabb+ ((self simple-broadphase) proxy (aabbmin vector3) (aabbmax vector3))
  (simple-broadphase/get-aabb (ff-pointer self) proxy aabbmin aabbmax))

(defmethod ray-test ((self simple-broadphase) (ray-from vector3) (ray-to vector3)
                     ray-callback &optional aabb-min aabb-max)
  (cond ((and aabb-min aabb-max) (check-type aabb-min vector3)
         (check-type aabb-max vector3)
         (simple-broadphase/ray-test/with-aabb-min&max (ff-pointer self)
                                     ray-from ray-to ray-callback aabb-min aabb-max))
        (aabb-min (check-type aabb-min vector3)
                  (simple-broadphase/ray-test/with-aabb-min (ff-pointer self)
                                              ray-from ray-to ray-callback aabb-min))
        (t (simple-broadphase/ray-test (ff-pointer self)
                                       ray-from ray-to ray-callback))))

(defmethod aabb-test ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3) callback)
  (simple-broadphase/aabb-test (ff-pointer self) aabbmin aabbmax callback))

(defmethod overlapping-pair-cache ((self simple-broadphase))
  (simple-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod overlapping-pair-cache ((self simple-broadphase))
  (simple-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod test-aabb-overlap ((self simple-broadphase) proxy0 proxy1)
  (simple-broadphase/test-aabb-overlap (ff-pointer self) proxy0 proxy1))

(defmethod broadphase-aabb ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3))
  (simple-broadphase/get-broadphase-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod print-stats ((self simple-broadphase))
  (simple-broadphase/print-stats (ff-pointer self)))

(defmethod broadphase-array ((self multi-sap-broadphase))
  (multi-sap-broadphase/get-broadphase-array (ff-pointer self)))

(defmethod broadphase-array ((self multi-sap-broadphase))
  (multi-sap-broadphase/get-broadphase-array (ff-pointer self)))

(defmethod create-proxy ((self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3) (shapetype integer) userptr (collisionfiltergroup integer) (collisionfiltermask integer) dispatcher multisapproxy)
  (multi-sap-broadphase/create-proxy (ff-pointer self) aabbmin aabbmax shapetype userptr collisionfiltergroup collisionfiltermask dispatcher multisapproxy))

(defmethod destroy-proxy ((self multi-sap-broadphase) proxy dispatcher)
  (multi-sap-broadphase/destroy-proxy (ff-pointer self) proxy dispatcher))

(defmethod (setf aabb) ( proxy (self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3) dispatcher)
  (multi-sap-broadphase/set-aabb (ff-pointer self) proxy aabbmin aabbmax dispatcher))

(defmethod aabb+ ((self multi-sap-broadphase) proxy (aabbmin vector3) (aabbmax vector3))
  (multi-sap-broadphase/get-aabb (ff-pointer self) proxy aabbmin aabbmax))

(defmethod ray-test ((self multi-sap-broadphase)
                     (ray-from vector3) (ray-to vector3) ray-callback 
                     &optional aabb-min aabb-max)
  (check-type aabb-min (or null vector3))
  (check-type aabb-max (or null vector3)) 
  (cond
    ((and aabb-max aabb-min)
     (multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min&max
      (ff-pointer self) ray-from ray-to ray-callback aabb-min aabb-max))
    (aabb-min
     (multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min
      (ff-pointer self) ray-from ray-to ray-callback aabb-min))
    (t
     (multi-sap-broadphase/ray-test/with-ray-from&to&callback
      (ff-pointer self) ray-from ray-to ray-callback))
))

(defmethod add-to-child-broadphase ((self multi-sap-broadphase) parentmultisapproxy childproxy childbroadphase)
  (multi-sap-broadphase/add-to-child-broadphase (ff-pointer self) parentmultisapproxy childproxy childbroadphase))

(defmethod calculate-overlapping-pairs ((self multi-sap-broadphase) dispatcher)
  (multi-sap-broadphase/calculate-overlapping-pairs (ff-pointer self) dispatcher))

(defmethod test-aabb-overlap ((self multi-sap-broadphase) proxy0 proxy1)
  (multi-sap-broadphase/test-aabb-overlap (ff-pointer self) proxy0 proxy1))

(defmethod overlapping-pair-cache ((self multi-sap-broadphase))
  (multi-sap-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod overlapping-pair-cache ((self multi-sap-broadphase))
  (multi-sap-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod broadphase-aabb ((self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3))
  (multi-sap-broadphase/get-broadphase-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod build-tree ((self multi-sap-broadphase) (bvhaabbmin vector3) (bvhaabbmax vector3))
  (multi-sap-broadphase/build-tree (ff-pointer self) bvhaabbmin bvhaabbmax))

(defmethod print-stats ((self multi-sap-broadphase))
  (multi-sap-broadphase/print-stats (ff-pointer self)))

(defmethod quicksort ((self multi-sap-broadphase) a (lo integer) (hi integer))
  (multi-sap-broadphase/quicksort (ff-pointer self) a lo hi))

(defmethod reset-pool ((self multi-sap-broadphase) dispatcher)
  (multi-sap-broadphase/reset-pool (ff-pointer self) dispatcher))

(defmethod initialize-instance :after ((obj clock) &key other)
  (setf (slot-value obj 'ff-pointer) 
        (etypecase other
          (null (make-clock))
          (clock (make-clock/with-other (ff-pointer other))))))

(defmethod (setf clock) ( (other clock) (self clock))
  (clock/assign-value (ff-pointer self) (ff-pointer other)))

(defmethod reset ((self clock))
  (clock/reset (ff-pointer self)))

(defmethod time-milliseconds ((self clock))
  (clock/get-time-milliseconds (ff-pointer self)))

(defmethod time-microseconds ((self clock))
  (clock/get-time-microseconds (ff-pointer self)))

(defmethod initialize-instance :after ((obj cprofile-node) &key name parent)
  (check-type name string) (check-type parent cprofile-node)
  (setf (slot-value obj 'ff-pointer) (make-cprofile-node name (ff-pointer parent))))

(defmethod sub-node ((self cprofile-node) (name string))
  (cprofile-node/get/sub/node (ff-pointer self) name))

(defmethod parent ((self cprofile-node))
  (cprofile-node/get/parent (ff-pointer self)))

(defmethod sibling ((self cprofile-node))
  (cprofile-node/get/sibling (ff-pointer self)))

(defmethod child ((self cprofile-node))
  (cprofile-node/get/child (ff-pointer self)))

(defmethod cleanup-memory ((self cprofile-node))
  (cprofile-node/cleanup-memory (ff-pointer self)))

(defmethod reset ((self cprofile-node))
  (cprofile-node/reset (ff-pointer self)))

(defmethod call ((self cprofile-node))
  (cprofile-node/call (ff-pointer self)))

(defmethod bullet/return ((self cprofile-node))
  (cprofile-node/return (ff-pointer self)))

(defmethod name ((self cprofile-node))
  (cprofile-node/get/name (ff-pointer self)))

(defmethod total-calls ((self cprofile-node))
  (cprofile-node/get/total/calls (ff-pointer self)))

(defmethod total-time ((self cprofile-node))
  (cprofile-node/get/total/time (ff-pointer self)))

(defmethod user-pointer ((self cprofile-node))
  (cprofile-node/get-user-pointer (ff-pointer self)))

(defmethod (setf user-pointer) ( ptr (self cprofile-node))
  (cprofile-node/set-user-pointer (ff-pointer self) ptr))

(defmethod bullet/first ((self cprofile-iterator))
  (cprofile-iterator/first (ff-pointer self)))

(defmethod next ((self cprofile-iterator))
  (cprofile-iterator/next (ff-pointer self)))

(defmethod donep ((self cprofile-iterator))
  (cprofile-iterator/is/done (ff-pointer self)))

(defmethod rootp ((self cprofile-iterator))
  (cprofile-iterator/is/root (ff-pointer self)))

(defmethod enter-child ((self cprofile-iterator) (index integer))
  (cprofile-iterator/enter/child (ff-pointer self) index))

(defmethod enter-largest-child ((self cprofile-iterator))
  (cprofile-iterator/enter/largest/child (ff-pointer self)))

(defmethod enter-parent ((self cprofile-iterator))
  (cprofile-iterator/enter/parent (ff-pointer self)))

(defmethod current-name ((self cprofile-iterator))
  (cprofile-iterator/get/current/name (ff-pointer self)))

(defmethod current-total-calls ((self cprofile-iterator))
  (cprofile-iterator/get/current/total/calls (ff-pointer self)))

(defmethod current-total-time ((self cprofile-iterator))
  (cprofile-iterator/get/current/total/time (ff-pointer self)))

(defmethod current-user-pointer ((self cprofile-iterator))
  (cprofile-iterator/get/current/user-pointer (ff-pointer self)))

(defmethod (setf current-user-pointer) ( ptr (self cprofile-iterator))
  (cprofile-iterator/set/current/user-pointer (ff-pointer self) ptr))

(defmethod current-parent-name ((self cprofile-iterator))
  (cprofile-iterator/get/current/parent/name (ff-pointer self)))

(defmethod current-parent-total-calls ((self cprofile-iterator))
  (cprofile-iterator/get/current/parent/total/calls (ff-pointer self)))

(defmethod current-parent-total-time ((self cprofile-iterator))
  (cprofile-iterator/get/current/parent/total/time (ff-pointer self)))

(defmethod initialize-instance :after ((obj cprofile-manager) &key)
  (setf (slot-value obj 'ff-pointer) (make-cprofile-manager)))
#+ (or)

(defmethod initialize-instance :after ((obj cprofile-sample) &key (name string))
  (setf (slot-value obj 'ff-pointer) (make-cprofile-sample name)))
#+ (or)

(defmethod draw-line ((self idebug-draw) (from vector3) (to vector3) (color vector3))
  (idebug-draw/draw-line (ff-pointer self) from to color))

(defmethod draw-line ((self idebug-draw) (from vector3) (to vector3) (fromcolor vector3) (tocolor vector3))
  (idebug-draw/draw-line (ff-pointer self) from to fromcolor tocolor))
#+ (or)

(defmethod draw-sphere ((self idebug-draw) (radius number) (transform transform) (color vector3))
  (idebug-draw/draw-sphere (ff-pointer self) radius transform color))

(defmethod draw-sphere ((self idebug-draw) (p vector3) (radius number) (color vector3))
  (idebug-draw/draw-sphere (ff-pointer self) p radius color))
#+ (or)

(defmethod draw-triangle ((self idebug-draw) (v0 vector3) (v1 vector3) (v2 vector3) (arg4 vector3) (arg5 vector3) (arg6 vector3) (color vector3) (alpha number))
  (idebug-draw/draw-triangle (ff-pointer self) v0 v1 v2 arg4 arg5 arg6 color alpha))

(defmethod draw-triangle ((self idebug-draw) (v0 vector3) (v1 vector3) (v2 vector3) (color vector3) (arg5 number))
  (idebug-draw/draw-triangle (ff-pointer self) v0 v1 v2 color arg5))

(defmethod draw-contact-point ((self idebug-draw) (pointonb vector3) (normalonb vector3) (distance number) (lifetime integer) (color vector3))
  (idebug-draw/draw-contact-point (ff-pointer self) pointonb normalonb distance lifetime color))

(defmethod report-error-warning ((self idebug-draw) (warningstring string))
  (idebug-draw/report-error-warning (ff-pointer self) warningstring))

(defmethod draw-3d-text ((self idebug-draw) (location vector3) (textstring string))
  (idebug-draw/draw-3d-text (ff-pointer self) location textstring))

(defmethod (setf debug-mode) ( (debugmode integer) (self idebug-draw))
  (idebug-draw/set-debug-mode (ff-pointer self) debugmode))

(defmethod debug-mode ((self idebug-draw))
  (idebug-draw/get-debug-mode (ff-pointer self)))

(defmethod draw-aabb ((self idebug-draw) (from vector3) (to vector3) (color vector3))
  (idebug-draw/draw-aabb (ff-pointer self) from to color))

(defmethod draw-transform ((self idebug-draw) (transform transform) (ortholen number))
  (idebug-draw/draw-transform (ff-pointer self) transform ortholen))
#+ (or)

(defmethod draw-arc ((self idebug-draw) (center vector3) (normal vector3) (axis vector3) (radiusa number) (radiusb number) (minangle number) (maxangle number) (color vector3) (drawsect-p t) (stepdegrees number))
  (idebug-draw/draw-arc (ff-pointer self) center normal axis radiusa radiusb minangle maxangle color drawsect stepdegrees))
#+ (or)

(defmethod draw-arc ((self idebug-draw) (center vector3) (normal vector3) (axis vector3) (radiusa number) (radiusb number) (minangle number) (maxangle number) (color vector3) (drawsect-p t))
  (idebug-draw/draw-arc (ff-pointer self) center normal axis radiusa radiusb minangle maxangle color drawsect))
#+ (or)

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3) (stepdegrees number) (drawcenter-p t))
  (idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color stepdegrees drawcenter))
#+ (or)

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3) (stepdegrees number))
  (idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color stepdegrees))

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3))
  (idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color))
#+ (or)

(defmethod draw-box ((self idebug-draw) (bbmin vector3) (bbmax vector3) (color vector3))
  (idebug-draw/draw-box (ff-pointer self) bbmin bbmax color))

(defmethod draw-box ((self idebug-draw) (bbmin vector3) (bbmax vector3) (trans transform) (color vector3))
  (idebug-draw/draw-box (ff-pointer self) bbmin bbmax trans color))

(defmethod draw-capsule ((self idebug-draw) (radius number) (halfheight number) (upaxis integer) (transform transform) (color vector3))
  (idebug-draw/draw-capsule (ff-pointer self) radius halfheight upaxis transform color))

(defmethod draw-cylinder ((self idebug-draw) (radius number) (halfheight number) (upaxis integer) (transform transform) (color vector3))
  (idebug-draw/draw-cylinder (ff-pointer self) radius halfheight upaxis transform color))

(defmethod draw-cone ((self idebug-draw) (radius number) (height number) (upaxis integer) (transform transform) (color vector3))
  (idebug-draw/draw-cone (ff-pointer self) radius height upaxis transform color))

(defmethod draw-plane ((self idebug-draw) (planenormal vector3) (planeconst number) (transform transform) (color vector3))
  (idebug-draw/draw-plane (ff-pointer self) planenormal planeconst transform color))

(defmethod (setf chunk-code) ( (obj chunk) arg0)
  (chunk/chunk-code/set (ff-pointer obj) arg0))

(defmethod chunk-code ((obj chunk))
  (chunk/chunk-code/get (ff-pointer obj)))

(defmethod (setf bullet/length) ( (obj chunk) arg0)
  (chunk/length/set (ff-pointer obj) arg0))

(defmethod bullet/length ((obj chunk))
  (chunk/length/get (ff-pointer obj)))

(defmethod (setf old-ptr) ( (obj chunk) arg0)
  (chunk/old-ptr/set (ff-pointer obj) arg0))

(defmethod old-ptr ((obj chunk))
  (chunk/old-ptr/get (ff-pointer obj)))

(defmethod (setf dna/nr) ( (obj chunk) arg0)
  (chunk/dna/nr/set (ff-pointer obj) arg0))

(defmethod dna/nr ((obj chunk))
  (chunk/dna/nr/get (ff-pointer obj)))

(defmethod (setf bullet/number) ( (obj chunk) arg0)
  (chunk/number/set (ff-pointer obj) arg0))

(defmethod bullet/number ((obj chunk))
  (chunk/number/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj chunk) &key)
  (setf (slot-value obj 'ff-pointer) (make-chunk)))

(defmethod buffer-pointer ((self serializer))
  (serializer/get-buffer-pointer (ff-pointer self)))

(defmethod current-buffer-size ((self serializer))
  (serializer/get-current-buffer-size (ff-pointer self)))

(defmethod allocate ((self serializer) size (numelements integer))
  (serializer/allocate (ff-pointer self) size numelements))

(defmethod finalize-chunk ((self serializer) (chunk chunk) (structtype string) (chunkcode integer) oldptr)
  (serializer/finalize-chunk (ff-pointer self) chunk structtype chunkcode oldptr))

(defmethod find-pointer ((self serializer) oldptr)
  (serializer/find-pointer (ff-pointer self) oldptr))

(defmethod unique-pointer ((self serializer) oldptr)
  (serializer/get-unique-pointer (ff-pointer self) oldptr))

(defmethod start-serialization ((self serializer))
  (serializer/start-serialization (ff-pointer self)))

(defmethod finish-serialization ((self serializer))
  (serializer/finish-serialization (ff-pointer self)))

(defmethod find-name-for-pointer ((self serializer) ptr)
  (serializer/find-name-for-pointer (ff-pointer self) ptr))

(defmethod register-name-for-pointer ((self serializer) ptr (name string))
  (serializer/register-name-for-pointer (ff-pointer self) ptr name))

(defmethod ->serial-name ((self serializer) (ptr string))
  (serializer/serialize-name (ff-pointer self) ptr))

(defmethod serialization-flags ((self serializer))
  (serializer/get-serialization-flags (ff-pointer self)))

(defmethod (setf serialization-flags) ( (flags integer) (self serializer))
  (serializer/set-serialization-flags (ff-pointer self) flags))

(defmethod initialize-instance :after ((obj default-serializer) &key (total-size nil))
  (check-type total-size (or null integer))
  (setf (slot-value obj 'ff-pointer) 
        (cond
          (total-size (make-default-serializer/with-total-size total-size))
          (t (make-default-serializer)))))

(defmethod write-header ((self default-serializer) buffer)
  (default-serializer/write-header (ff-pointer self) buffer))

(defmethod start-serialization ((self default-serializer))
  (default-serializer/start-serialization (ff-pointer self)))

(defmethod finish-serialization ((self default-serializer))
  (default-serializer/finish-serialization (ff-pointer self)))

(defmethod unique-pointer ((self default-serializer) oldptr)
  (default-serializer/get-unique-pointer (ff-pointer self) oldptr))

(defmethod buffer-pointer ((self default-serializer))
  (default-serializer/get-buffer-pointer (ff-pointer self)))

(defmethod current-buffer-size ((self default-serializer))
  (default-serializer/get-current-buffer-size (ff-pointer self)))

(defmethod finalize-chunk ((self default-serializer) (chunk chunk) (structtype string) (chunkcode integer) oldptr)
  (default-serializer/finalize-chunk (ff-pointer self) chunk structtype chunkcode oldptr))

(defmethod internal-alloc ((self default-serializer) size)
  (default-serializer/internal-alloc (ff-pointer self) size))

(defmethod allocate ((self default-serializer) size (numelements integer))
  (default-serializer/allocate (ff-pointer self) size numelements))

(defmethod find-name-for-pointer ((self default-serializer) ptr)
  (default-serializer/find-name-for-pointer (ff-pointer self) ptr))

(defmethod register-name-for-pointer ((self default-serializer) ptr (name string))
  (default-serializer/register-name-for-pointer (ff-pointer self) ptr name))

(defmethod ->serial-name ((self default-serializer) (name string))
  (default-serializer/serialize-name (ff-pointer self) name))

(defmethod serialization-flags ((self default-serializer))
  (default-serializer/get-serialization-flags (ff-pointer self)))

(defmethod (setf serialization-flags) ( (flags integer) (self default-serializer))
  (default-serializer/set-serialization-flags (ff-pointer self) flags))
#+(or) (defmethod new ((self discrete-dynamics-world) sizeinbytes)
  (discrete-dynamics-world/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self discrete-dynamics-world) ptr)
  (discrete-dynamics-world/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self discrete-dynamics-world) arg1 ptr)
  (discrete-dynamics-world/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self discrete-dynamics-world) arg1 arg2)
  (discrete-dynamics-world/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self discrete-dynamics-world) sizeinbytes)
  (discrete-dynamics-world/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self discrete-dynamics-world) ptr)
  (discrete-dynamics-world/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self discrete-dynamics-world) arg1 ptr)
  (discrete-dynamics-world/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self discrete-dynamics-world) arg1 arg2)
  (discrete-dynamics-world/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj discrete-dynamics-world) &key dispatcher paircache constraintsolver collisionconfiguration)
  (setf (slot-value obj 'ff-pointer) (make-discrete-dynamics-world dispatcher paircache constraintsolver collisionconfiguration)))

(defmethod step-simulation ((self discrete-dynamics-world) (time-step number)
                            &optional max-sub-steps fixed-time-step)
  (check-type max-sub-steps (or null number))
  (check-type fixed-time-step (or null number))
  (cond
    ((and fixed-time-step max-sub-steps)
     (discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps&fixed-time-step
      (ff-pointer self) time-step max-sub-steps fixed-time-step))
    (max-sub-steps
     (discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps
      (ff-pointer self) time-step max-sub-steps))
    (t
     (discrete-dynamics-world/step-simulation/with-time-step (ff-pointer self) time-step))))


(defmethod synchronize-motion-states ((self discrete-dynamics-world))
  (discrete-dynamics-world/synchronize-motion-states (ff-pointer self)))

(defmethod synchronize-single-motion-state ((self discrete-dynamics-world) body)
  (discrete-dynamics-world/synchronize-single-motion-state (ff-pointer self) body))

(defmethod add-constraint ((self discrete-dynamics-world) constraint
                           &key (disable-collisions-between-linked-bodies-p t disable?))
  (if disable?
      (discrete-dynamics-world/add-constraint/with-disable-collision-between-linked-bodies
       (ff-pointer self) constraint disable-collisions-between-linked-bodies-p)
      (discrete-dynamics-world/add-constraint (ff-pointer self) constraint)))

(defmethod remove-constraint ((self discrete-dynamics-world) constraint)
  (discrete-dynamics-world/remove-constraint (ff-pointer self) constraint))

(defmethod add-action ((self discrete-dynamics-world) arg1)
  (discrete-dynamics-world/add-action (ff-pointer self) arg1))

(defmethod remove-action ((self discrete-dynamics-world) arg1)
  (discrete-dynamics-world/remove-action (ff-pointer self) arg1))

(defmethod simulation-island-manager ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-simulation-island-manager (ff-pointer self)))

(defmethod simulation-island-manager ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-simulation-island-manager (ff-pointer self)))

(defmethod collision-world ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-collision-world (ff-pointer self)))

(defmethod (setf gravity) ( (gravity vector3) (self discrete-dynamics-world))
  (discrete-dynamics-world/set-gravity (ff-pointer self) gravity))

