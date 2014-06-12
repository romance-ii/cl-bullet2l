(in-package #:bullet-physics)

(defmethod initialize-instance :after ((obj triangle-index-vertex-array)
                                       &key
                                         num-triangles
                                         triangle-index-base
                                         triangle-index-stride
                                         num-vertices 
                                         vertex-base
                                         vertex-stride)
  (setf (ff-pointer obj)
        (cond
          ((and num-triangles num-vertices
                triangle-index-base triangle-index-stride
                vertex-base vertex-stride)
           (check-type num-triangles integer)
           (check-type triangle-index-stride integer)
           (check-type num-vertices integer)
           (check-type vertex-stride integer)
           (bullet-physics-c++::make-triangle-index-vertex-array/with-triangle-index-base&stride&num-vertices&vertex-base&stride
            num-triangles triangle-index-base triangle-index-stride
            num-vertices vertex-base vertex-stride))
          (t (bullet-physics-c++::make-triangle-index-vertex-array)))))

(defmethod add-indexed-mesh ((self triangle-index-vertex-array) mesh 
                             &optional (index-type nil type?))
  (cond
    (type? (bullet-physics-c++::triangle-index-vertex-array/add-indexed-mesh/with-index-type
            (ff-pointer self) mesh index-type))
    (t (bullet-physics-c++::triangle-index-vertex-array/add-indexed-mesh (ff-pointer self) mesh))))

(defmethod locked-vertex-index-base ((self triangle-index-vertex-array)
                                     vertex-base num-vertices type vertex-stride
                                     index-base index-stride
                                     num-faces
                                     indices-type 
                                     &key subpart read-only-p)
  (cond 
    
    ((and read-only-p subpart)
     (check-type subpart integer) 
     (bullet-physics-c++::triangle-index-vertex-array/get-locked-read-only-vertex-index-base/with-subpart
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type subpart))

    ((and read-only-p (not subpart)) 
     (bullet-physics-c++::triangle-index-vertex-array/get-locked-read-only-vertex-index-base
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type))
    
    (subpart
     (check-type subpart integer)
     (bullet-physics-c++::triangle-index-vertex-array/get-locked-vertex-index-base/with-subpart
      (ff-pointer self) vertex-base num-vertices type vertex-stride
      index-base index-stride num-faces indices-type subpart))
    
    (t (bullet-physics-c++::triangle-index-vertex-array/get-locked-vertex-index-base
        (ff-pointer self) vertex-base num-vertices type vertex-stride
        index-base index-stride num-faces indices-type))))

(defmethod un-lock-vertex-base ((self triangle-index-vertex-array) (subpart integer))
  (bullet-physics-c++::triangle-index-vertex-array/un-lock-vertex-base (ff-pointer self) subpart))

(defmethod un-lock-read-only-vertex-base
    ((self triangle-index-vertex-array) (subpart integer))
  (bullet-physics-c++::triangle-index-vertex-array/un-lock-read-only-vertex-base (ff-pointer self) subpart))

(defmethod num-sub-parts ((self triangle-index-vertex-array))
  (bullet-physics-c++::triangle-index-vertex-array/get-num-sub-parts (ff-pointer self)))

(defmethod indexed-mesh-array ((self triangle-index-vertex-array))
  (bullet-physics-c++::triangle-index-vertex-array/get-indexed-mesh-array (ff-pointer self)))

(defmethod indexed-mesh-array ((self triangle-index-vertex-array))
  (bullet-physics-c++::triangle-index-vertex-array/get-indexed-mesh-array (ff-pointer self)))

(defmethod preallocate-vertices ((self triangle-index-vertex-array) (numverts integer))
  (bullet-physics-c++::triangle-index-vertex-array/preallocate-vertices (ff-pointer self) numverts))

(defmethod preallocate-indices
    ((self triangle-index-vertex-array) (numindices integer))
  (bullet-physics-c++::triangle-index-vertex-array/preallocate-indices (ff-pointer self) numindices))

(defmethod has-premade-aabb-p ((self triangle-index-vertex-array))
  (bullet-physics-c++::triangle-index-vertex-array/has-premade-aabb (ff-pointer self)))

(defmethod (setf premade-aabb)
    ( (aabbmin vector3) (self triangle-index-vertex-array) (aabbmax vector3))
  (bullet-physics-c++::triangle-index-vertex-array/set-premade-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod premade-aabb
    ((self triangle-index-vertex-array) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::triangle-index-vertex-array/get-premade-aabb (ff-pointer self) aabbmin aabbmax))
#+(or) (defmethod new ((self compound-shape) sizeinbytes)
  (bullet-physics-c++::compound-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self compound-shape) ptr)
  (bullet-physics-c++::compound-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self compound-shape) arg1 ptr)
  (bullet-physics-c++::compound-shape/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self compound-shape) arg1 arg2)
  (bullet-physics-c++::compound-shape/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self compound-shape) sizeinbytes)
  (bullet-physics-c++::compound-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self compound-shape) ptr)
  (bullet-physics-c++::compound-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self compound-shape) arg1 ptr)
  (bullet-physics-c++::compound-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self compound-shape) arg1 arg2)
  (bullet-physics-c++::compound-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj compound-shape) 
                                       &key (enable-dynamic-aabb-tree-p t aabb?))
  (setf (ff-pointer obj)
        (if aabb?
            (bullet-physics-c++::make-compound-shape/with-enable-dynamic-aabb-tree enable-dynamic-aabb-tree-p)
            (bullet-physics-c++::make-compound-shape))))

(defmethod add-child-shape ((self compound-shape) (localtransform transform) shape)
  (bullet-physics-c++::compound-shape/add-child-shape (ff-pointer self) localtransform shape))

(defmethod remove-child-shape ((self compound-shape) shape)
  (bullet-physics-c++::compound-shape/remove-child-shape (ff-pointer self) shape))

(defmethod remove-child-shape-by-index ((self compound-shape) (childshapeindex integer))
  (bullet-physics-c++::compound-shape/remove-child-shape-by-index (ff-pointer self) childshapeindex))

(defmethod num-child-shapes ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-num-child-shapes (ff-pointer self)))

(defmethod child-shape-elt ((self compound-shape) (index integer))
  (bullet-physics-c++::compound-shape/get-child-shape (ff-pointer self) index))

(defmethod child-shape-elt ((self compound-shape) (index integer))
  (bullet-physics-c++::compound-shape/get-child-shape (ff-pointer self) index))

(defmethod child-transform ((self compound-shape) (index integer))
  (bullet-physics-c++::compound-shape/get-child-transform (ff-pointer self) index))

(defmethod child-transform ((self compound-shape) (index integer))
  (bullet-physics-c++::compound-shape/get-child-transform (ff-pointer self) index))

(defmethod update-child-transform ((self compound-shape) (child-index integer)
                                   (new-child-transform transform) &optional (should-recalculate-local-aabb-p t aabb?))
  (if aabb?
      (bullet-physics-c++::compound-shape/update-child-transform/with-recalc
       (ff-pointer self) child-index new-child-transform
       should-recalculate-local-aabb-p)
      (bullet-physics-c++::compound-shape/update-child-transform
       (ff-pointer self) child-index new-child-transform)))

(defmethod child-list ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-child-list (ff-pointer self)))

(defmethod aabb+ ((self compound-shape) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::compound-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod recalculate-local-aabb ((self compound-shape))
  (bullet-physics-c++::compound-shape/recalculate-local-aabb (ff-pointer self)))

(defmethod (setf local-scaling) ( (scaling vector3) (self compound-shape))
  (bullet-physics-c++::compound-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-local-scaling (ff-pointer self)))

(defmethod calculate-local-inertia ((self compound-shape) (mass number) (inertia vector3))
  (bullet-physics-c++::compound-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod (setf margin) ( (margin number) (self compound-shape))
  (bullet-physics-c++::compound-shape/set-margin (ff-pointer self) margin))

(defmethod margin ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-margin (ff-pointer self)))

(defmethod name ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-name (ff-pointer self)))

(defmethod dynamic-aabb-tree ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-dynamic-aabb-tree (ff-pointer self)))

(defmethod dynamic-aabb-tree ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-dynamic-aabb-tree (ff-pointer self)))

(defmethod create-aabb-tree-from-children ((self compound-shape))
  (bullet-physics-c++::compound-shape/create-aabb-tree-from-children (ff-pointer self)))

(defmethod calculate-principal-axis-transform ((self compound-shape) masses (principal transform) (inertia vector3))
  (bullet-physics-c++::compound-shape/calculate-principal-axis-transform (ff-pointer self) masses principal inertia))

(defmethod update-revision ((self compound-shape))
  (bullet-physics-c++::compound-shape/get-update-revision (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self compound-shape))
  (bullet-physics-c++::compound-shape/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self compound-shape) &key data-buffer serializer &allow-other-keys)
  (bullet-physics-c++::compound-shape/serialize (ff-pointer self) data-buffer serializer))
#+(or) (defmethod new ((self bu-simplex1to4) sizeinbytes)
  (bullet-physics-c++::bu/simplex1to4/make-c++-instance/with-size (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self bu-simplex1to4) ptr)
  (bullet-physics-c++::bu/simplex1to4/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self bu-simplex1to4) arg1 ptr)
  (bullet-physics-c++::bu/simplex1to4/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self bu-simplex1to4) arg1 arg2)
  (bullet-physics-c++::bu/simplex1to4/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self bu-simplex1to4) sizeinbytes)
  (bullet-physics-c++::bu/simplex1to4/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self bu-simplex1to4) ptr)
  (bullet-physics-c++::bu/simplex1to4/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self bu-simplex1to4) arg1 ptr)
  (bullet-physics-c++::bu/simplex1to4/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self bu-simplex1to4) arg1 arg2)
  (bullet-physics-c++::bu/simplex1to4/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

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
  (setf (ff-pointer obj) 
        (cond
          ((and pt3? pt2? pt1? pt0?)
           (bullet-physics-c++::make-bu/simplex1to4/with-pt0&1&2&3  pt0 pt1 pt2 pt3))
          ((and (not pt3?) pt2? pt1? pt0? )
           (bullet-physics-c++::make-bu/simplex1to4/with-pt0&1&2    pt0 pt1 pt2))
          ((and (not pt2?) (not pt3?) pt1? pt0?)
           (bullet-physics-c++::make-bu/simplex1to4/with-pt0&1      pt0 pt1))
          ((and pt0? (not pt1?) (not pt2?) (not pt3?))
           (bullet-physics-c++::make-bu/simplex1to4/with-pt0        pt0))
          ((and (not pt0?) (not pt1?) (not pt2?) (not pt3?))
           (bullet-physics-c++::make-bu/simplex1to4))
          (t (error 'foo)))))

(defmethod reset ((self bu-simplex1to4))
  (bullet-physics-c++::bu/simplex1to4/reset (ff-pointer self)))

(defmethod aabb+ ((self bu-simplex1to4) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::bu/simplex1to4/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod add-vertex ((self bu-simplex1to4) (pt vector3))
  (bullet-physics-c++::bu/simplex1to4/add-vertex (ff-pointer self) pt))

(defmethod num-vertices ((self bu-simplex1to4))
  (bullet-physics-c++::bu/simplex1to4/get-num-vertices (ff-pointer self)))

(defmethod num-edges ((self bu-simplex1to4))
  (bullet-physics-c++::bu/simplex1to4/get-num-edges (ff-pointer self)))

(defmethod edge ((self bu-simplex1to4) (i integer) (pa vector3) (pb vector3))
  (bullet-physics-c++::bu/simplex1to4/get-edge (ff-pointer self) i pa pb))

(defmethod vertex ((self bu-simplex1to4) (i integer) (vtx vector3))
  (bullet-physics-c++::bu/simplex1to4/get-vertex (ff-pointer self) i vtx))

(defmethod num-planes ((self bu-simplex1to4))
  (bullet-physics-c++::bu/simplex1to4/get-num-planes (ff-pointer self)))

(defmethod plane ((self bu-simplex1to4) (planenormal vector3) (planesupport vector3) (i integer))
  (bullet-physics-c++::bu/simplex1to4/get-plane (ff-pointer self) planenormal planesupport i))

(defmethod index ((self bu-simplex1to4) (i integer))
  (bullet-physics-c++::bu/simplex1to4/get-index (ff-pointer self) i))

(defmethod insidep ((self bu-simplex1to4) (pt vector3) (tolerance number))
  (bullet-physics-c++::bu/simplex1to4/is-inside (ff-pointer self) pt tolerance))

(defmethod name ((self bu-simplex1to4))
  (bullet-physics-c++::bu/simplex1to4/get-name (ff-pointer self)))
#+(or) (defmethod new ((self empty-shape) sizeinbytes)
  (bullet-physics-c++::empty-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self empty-shape) ptr)
  (bullet-physics-c++::empty-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self empty-shape) arg1 ptr)
  (bullet-physics-c++::empty-shape/make-c++-instance (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self empty-shape) arg1 arg2)
  (bullet-physics-c++::empty-shape/delete-c++-instance (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self empty-shape) sizeinbytes)
  (bullet-physics-c++::empty-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self empty-shape) ptr)
  (bullet-physics-c++::empty-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self empty-shape) arg1 ptr)
  (bullet-physics-c++::empty-shape/make-c++-array (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self empty-shape) arg1 arg2)
  (bullet-physics-c++::empty-shape/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj empty-shape) &key)
  (setf (ff-pointer obj) (bullet-physics-c++::make-empty-shape)))

(defmethod aabb+ ((self empty-shape) (t-arg1 transform) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::empty-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod (setf local-scaling) ( (scaling vector3) (self empty-shape))
  (bullet-physics-c++::empty-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self empty-shape))
  (bullet-physics-c++::empty-shape/get-local-scaling (ff-pointer self)))

(defmethod calculate-local-inertia ((self empty-shape) (mass number) (inertia vector3))
  (bullet-physics-c++::empty-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod name ((self empty-shape))
  (bullet-physics-c++::empty-shape/get-name (ff-pointer self)))

(defmethod process-all-triangles ((self empty-shape) arg1 (arg2 vector3) (arg3 vector3))
  (bullet-physics-c++::empty-shape/process-all-triangles (ff-pointer self) arg1 arg2 arg3))
#+(or) (defmethod new ((self multi-sphere-shape) sizeinbytes)
  (bullet-physics-c++::multi-sphere-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self multi-sphere-shape) ptr)
  (bullet-physics-c++::multi-sphere-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self multi-sphere-shape) arg1 ptr)
  (bullet-physics-c++::multi-sphere-shape/make-c++-instance (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self multi-sphere-shape) arg1 arg2)
  (bullet-physics-c++::multi-sphere-shape/delete-c++-instance (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self multi-sphere-shape) sizeinbytes)
  (bullet-physics-c++::multi-sphere-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self multi-sphere-shape) ptr)
  (bullet-physics-c++::multi-sphere-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self multi-sphere-shape) arg1 ptr)
  (bullet-physics-c++::multi-sphere-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self multi-sphere-shape) arg1 arg2)
  (bullet-physics-c++::multi-sphere-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj multi-sphere-shape) 
                                       &key positions radi num-spheres)
  (check-type num-spheres integer)
  (check-type positions vector3)
  (setf (ff-pointer obj)
        (bullet-physics-c++::make-multi-sphere-shape (ff-pointer positions) radi num-spheres)))

(defmethod calculate-local-inertia ((self multi-sphere-shape) (mass number) (inertia vector3))
  (bullet-physics-c++::multi-sphere-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod local-supporting-vertex-without-margin ((self multi-sphere-shape) (vec vector3))
  (bullet-physics-c++::multi-sphere-shape/local-get-supporting-vertex-without-margin (ff-pointer self) vec))

(defmethod batched-unit-vector-supporting-vertex-without-margin ((self multi-sphere-shape) (vectors vector3) (supportverticesout vector3) (numvectors integer))
  (bullet-physics-c++::multi-sphere-shape/batched-unit-vector-get-supporting-vertex-without-margin (ff-pointer self) vectors supportverticesout numvectors))

(defmethod sphere-count ((self multi-sphere-shape))
  (bullet-physics-c++::multi-sphere-shape/get-sphere-count (ff-pointer self)))

(defmethod sphere-position ((self multi-sphere-shape) (index integer))
  (bullet-physics-c++::multi-sphere-shape/get-sphere-position (ff-pointer self) index))

(defmethod sphere-radius ((self multi-sphere-shape) (index integer))
  (bullet-physics-c++::multi-sphere-shape/get-sphere-radius (ff-pointer self) index))

(defmethod name ((self multi-sphere-shape))
  (bullet-physics-c++::multi-sphere-shape/get-name (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self multi-sphere-shape))
  (bullet-physics-c++::multi-sphere-shape/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self multi-sphere-shape) &key data-buffer serializer &allow-other-keys)
  (bullet-physics-c++::multi-sphere-shape/serialize (ff-pointer self) data-buffer serializer))
#+(or) (defmethod new ((self uniform-scaling-shape) sizeinbytes)
  (bullet-physics-c++::uniform-scaling-shape/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self uniform-scaling-shape) ptr)
  (bullet-physics-c++::uniform-scaling-shape/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self uniform-scaling-shape) arg1 ptr)
  (bullet-physics-c++::uniform-scaling-shape/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self uniform-scaling-shape) arg1 arg2)
  (bullet-physics-c++::uniform-scaling-shape/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self uniform-scaling-shape) sizeinbytes)
  (bullet-physics-c++::uniform-scaling-shape/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self uniform-scaling-shape) ptr)
  (bullet-physics-c++::uniform-scaling-shape/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self uniform-scaling-shape) arg1 ptr)
  (bullet-physics-c++::uniform-scaling-shape/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self uniform-scaling-shape) arg1 arg2)
  (bullet-physics-c++::uniform-scaling-shape/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj uniform-scaling-shape)
                                       &key convex-child-shape uniform-scaling-factor)
  (check-type uniform-scaling-factor number)
  (setf (ff-pointer obj)
        (bullet-physics-c++::make-uniform-scaling-shape convex-child-shape uniform-scaling-factor)))

(defmethod local-supporting-vertex-without-margin
    ((self uniform-scaling-shape) (vec vector3))
  (bullet-physics-c++::uniform-scaling-shape/local-get-supporting-vertex-without-margin (ff-pointer self) vec))

(defmethod local-supporting-vertex ((self uniform-scaling-shape) (vec vector3))
  (bullet-physics-c++::uniform-scaling-shape/local-get-supporting-vertex (ff-pointer self) vec))

(defmethod batched-unit-vector-supporting-vertex-without-margin 
    ((self uniform-scaling-shape) (vectors vector3)
     (supportverticesout vector3) (numvectors integer))
  (bullet-physics-c++::uniform-scaling-shape/batched-unit-vector-get-supporting-vertex-without-margin (ff-pointer self) vectors supportverticesout numvectors))

(defmethod calculate-local-inertia ((self uniform-scaling-shape)
                                    (mass number) (inertia vector3))
  (bullet-physics-c++::uniform-scaling-shape/calculate-local-inertia (ff-pointer self) mass inertia))

(defmethod uniform-scaling-factor ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-uniform-scaling-factor (ff-pointer self)))

(defmethod child-shape ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-child-shape (ff-pointer self)))

(defmethod child-shape ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-child-shape (ff-pointer self)))

(defmethod name ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-name (ff-pointer self)))

(defmethod aabb+ ((self uniform-scaling-shape) (t-arg1 transform)
                 (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::uniform-scaling-shape/get-aabb (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod aabb+-slow ((self uniform-scaling-shape) (t-arg1 transform)
                      (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::uniform-scaling-shape/get-aabb-slow (ff-pointer self) t-arg1 aabbmin aabbmax))

(defmethod (setf local-scaling) ( (scaling vector3) (self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/set-local-scaling (ff-pointer self) scaling))

(defmethod local-scaling ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-local-scaling (ff-pointer self)))

(defmethod (setf margin) ( (margin number) (self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/set-margin (ff-pointer self) margin))

(defmethod margin ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-margin (ff-pointer self)))

(defmethod num-preferred-penetration-directions ((self uniform-scaling-shape))
  (bullet-physics-c++::uniform-scaling-shape/get-num-preferred-penetration-directions (ff-pointer self)))

(defmethod preferred-penetration-direction ((self uniform-scaling-shape)
                                            (index integer) (penetrationvector vector3))
  (bullet-physics-c++::uniform-scaling-shape/get-preferred-penetration-direction (ff-pointer self) index penetrationvector))

(defmethod initialize-instance :after ((obj sphere-sphere-collision-algorithm) &key mf ci col0wrap col1wrap)
  (setf (ff-pointer obj)
        (bullet-physics-c++::make-sphere-sphere-collision-algorithm mf ci col0wrap col1wrap)))

(defmethod initialize-instance :after ((obj sphere-sphere-collision-algorithm) &key ci)
  (setf (ff-pointer obj) (bullet-physics-c++::make-sphere-sphere-collision-algorithm ci)))

(defmethod process-collision ((self sphere-sphere-collision-algorithm) body0wrap body1wrap dispatchinfo resultout)
  (bullet-physics-c++::sphere-sphere-collision-algorithm/process-collision (ff-pointer self) body0wrap body1wrap dispatchinfo resultout))

(defmethod calculate-time-of-impact ((self sphere-sphere-collision-algorithm) (body0 collision-object) (body1 collision-object) dispatchinfo resultout)
  (bullet-physics-c++::sphere-sphere-collision-algorithm/calculate-time-of-impact (ff-pointer self) body0 body1 dispatchinfo resultout))

(defmethod all-contact-manifolds ((self sphere-sphere-collision-algorithm) manifoldarray)
  (bullet-physics-c++::sphere-sphere-collision-algorithm/get-all-contact-manifolds (ff-pointer self) manifoldarray))


(defmethod initialize-instance 
    :after ((obj default-collision-configuration) &key
                                                    construction-info)
  (setf (ff-pointer obj) 
        (bullet-physics-c++::make-default-collision-configuration/with-construction-info construction-info)))

(defmethod initialize-instance :after ((obj default-collision-configuration) &key)
  (setf (ff-pointer obj) (bullet-physics-c++::make-default-collision-configuration)))

(defmethod persistent-manifold-pool ((self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/get-persistent-manifold-pool (ff-pointer self)))

(defmethod collision-algorithm-pool ((self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/get-collision-algorithm-pool (ff-pointer self)))

(defmethod simplex-solver ((self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/get-simplex-solver (ff-pointer self)))

(defmethod collision-algorithm-create-func ((self default-collision-configuration) (proxytype0 integer) (proxytype1 integer))
  (bullet-physics-c++::default-collision-configuration/get-collision-algorithm-create-func (ff-pointer self) proxytype0 proxytype1))

(defmethod (setf convex-convex-multipoint-iterations)
    ((num&min cons)
     (self default-collision-configuration))
  (destructuring-bind 
        (num-perturbation-iterations minimumpointsperturbationthreshold) num&min
    (check-type num-perturbation-iterations integer) 
    (check-type minimumpointsperturbationthreshold integer)
    (bullet-physics-c++::default-collision-configuration/set-convex-convex-multipoint-iterations/with-num&min
       (ff-pointer self) num-perturbation-iterations minimumpointsperturbationthreshold)))

(defmethod (setf convex-convex-multipoint-iterations)
    ((num-perturbation-iterations integer) (self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/set-convex-convex-multipoint-iterations/with-num
      (ff-pointer self) num-perturbation-iterations))

(defmethod (setf convex-convex-multipoint-iterations) 
    ((_ null) (self default-collision-configuration))
  (declare (ignore _))
  (bullet-physics-c++::default-collision-configuration/set-convex-convex-multipoint-iterations
      (ff-pointer self)))

(defmethod (setf plane-convex-multipoint-iterations) ((num&min cons)
                                                      (self default-collision-configuration))
  (destructuring-bind 
        (num-perturbation-iterations minimum-points-perturbation-threshold) num&min
    (check-type num-perturbation-iterations integer) 
    (check-type minimum-points-perturbation-threshold integer)
    (bullet-physics-c++::default-collision-configuration/set-plane-convex-multipoint-iterations/with-num&min
        (ff-pointer self) num-perturbation-iterations minimum-points-perturbation-threshold)))

(defmethod (setf plane-convex-multipoint-iterations) ( (num-perturbation-iterations integer) (self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/set-plane-convex-multipoint-iterations/with-num
      (ff-pointer self) num-perturbation-iterations))

(defmethod (setf plane-convex-multipoint-iterations) ((_ null)
                                                      (self default-collision-configuration))
  (bullet-physics-c++::default-collision-configuration/set-plane-convex-multipoint-iterations
      (ff-pointer self)))

(defmethod dispatcher-flags ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-dispatcher-flags (ff-pointer self)))

(defmethod (setf dispatcher-flags) ( (flags integer) (self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/set-dispatcher-flags (ff-pointer self) flags))

(defmethod register-collision-create-func ((self collision-dispatcher) (proxytype0 integer) (proxytype1 integer) createfunc)
  (bullet-physics-c++::collision-dispatcher/register-collision-create-func (ff-pointer self) proxytype0 proxytype1 createfunc))

(defmethod num-manifolds ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-num-manifolds (ff-pointer self)))

(defmethod internal-manifold-pointer ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-internal-manifold-pointer (ff-pointer self)))

(defmethod manifold-by-index-internal ((self collision-dispatcher) (index integer))
  (bullet-physics-c++::collision-dispatcher/get-manifold-by-index-internal (ff-pointer self) index))

(defmethod manifold-by-index-internal ((self collision-dispatcher) (index integer))
  (bullet-physics-c++::collision-dispatcher/get-manifold-by-index-internal (ff-pointer self) index))

(defmethod initialize-instance :after ((obj collision-dispatcher) &key collision-configuration &allow-other-keys)
  (setf (ff-pointer obj) (bullet-physics-c++::make-collision-dispatcher collision-configuration)))

#+(or) (defmethod new-manifold ((self collision-dispatcher) (b0 collision-object) (b1 collision-object))
  (collision-dispatcher/get-new-manifold (ff-pointer self) b0 b1))

(defmethod release-manifold ((self collision-dispatcher) manifold)
  (bullet-physics-c++::collision-dispatcher/release-manifold (ff-pointer self) manifold))

(defmethod clear-manifold ((self collision-dispatcher) manifold)
  (bullet-physics-c++::collision-dispatcher/clear-manifold (ff-pointer self) manifold))

(defmethod find-algorithm ((self collision-dispatcher) body0wrap body1wrap &optional sharedmanifold)
  (if sharedmanifold
      (bullet-physics-c++::collision-dispatcher/find-algorithm (ff-pointer self) body0wrap body1wrap sharedmanifold)
      (bullet-physics-c++::collision-dispatcher/find-algorithm (ff-pointer self) body0wrap body1wrap)))


(defmethod needs-collision ((self collision-dispatcher) (body0 collision-object) (body1 collision-object))
  (bullet-physics-c++::collision-dispatcher/needs-collision (ff-pointer self) body0 body1))

(defmethod needs-response ((self collision-dispatcher) (body0 collision-object) (body1 collision-object))
  (bullet-physics-c++::collision-dispatcher/needs-response (ff-pointer self) body0 body1))

(defmethod dispatch-all-collision-pairs ((self collision-dispatcher) paircache dispatchinfo dispatcher)
  (bullet-physics-c++::collision-dispatcher/dispatch-all-collision-pairs (ff-pointer self) paircache dispatchinfo dispatcher))

(defmethod (setf near-callback) ( nearcallback (self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/set-near-callback (ff-pointer self) nearcallback))

(defmethod near-callback ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-near-callback (ff-pointer self)))

(defmethod allocate-collision-algorithm ((self collision-dispatcher) (size integer))
  (bullet-physics-c++::collision-dispatcher/allocate-collision-algorithm (ff-pointer self) size))

(defmethod free-collision-algorithm ((self collision-dispatcher) ptr)
  (bullet-physics-c++::collision-dispatcher/free-collision-algorithm (ff-pointer self) ptr))

(defmethod collision-configuration ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-collision-configuration (ff-pointer self)))

(defmethod collision-configuration ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-collision-configuration (ff-pointer self)))

(defmethod (setf collision-configuration) ( config (self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/set-collision-configuration (ff-pointer self) config))

(defmethod internal-manifold-pool ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-internal-manifold-pool (ff-pointer self)))

(defmethod internal-manifold-pool ((self collision-dispatcher))
  (bullet-physics-c++::collision-dispatcher/get-internal-manifold-pool (ff-pointer self)))

(defmethod initialize-instance :after ((obj simple-broadphase)
                                       &key (max-proxies nil max?)
                                         (overlapping-pair-cache nil cache?))
  (setf (ff-pointer obj) 
        (cond ((and max? cache?)
               (bullet-physics-c++::make-simple-broadphase/with-max-proxies&overlapping-pair-cache
                max-proxies overlapping-pair-cache))
              (max?
               (bullet-physics-c++::make-simple-broadphase/with-max-proxies max-proxies))
              (t
               (bullet-physics-c++::make-simple-broadphase)))))

(defmethod create-proxy ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3)
                         (shapetype integer) userptr (collisionfiltergroup integer)
                         (collisionfiltermask integer) dispatcher multisapproxy)
  (bullet-physics-c++::simple-broadphase/create-proxy (ff-pointer self) aabbmin aabbmax shapetype userptr collisionfiltergroup collisionfiltermask dispatcher multisapproxy))

(defmethod calculate-overlapping-pairs ((self simple-broadphase) dispatcher)
  (bullet-physics-c++::simple-broadphase/calculate-overlapping-pairs (ff-pointer self) dispatcher))

(defmethod destroy-proxy ((self simple-broadphase) proxy dispatcher)
  (bullet-physics-c++::simple-broadphase/destroy-proxy (ff-pointer self) proxy dispatcher))

(defmethod (setf aabb) ( proxy (self simple-broadphase)
                        (aabbmin vector3) (aabbmax vector3) dispatcher)
  (bullet-physics-c++::simple-broadphase/set-aabb (ff-pointer self) proxy aabbmin aabbmax dispatcher))

(defmethod aabb+ ((self simple-broadphase) proxy (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::simple-broadphase/get-aabb (ff-pointer self) proxy aabbmin aabbmax))

(defmethod ray-test ((self simple-broadphase) (ray-from vector3) (ray-to vector3)
                     ray-callback &optional aabb-min aabb-max)
  (cond ((and aabb-min aabb-max) (check-type aabb-min vector3)
         (check-type aabb-max vector3)
         (bullet-physics-c++::simple-broadphase/ray-test/with-aabb-min&max (ff-pointer self)
                                     ray-from ray-to ray-callback aabb-min aabb-max))
        (aabb-min (check-type aabb-min vector3)
                  (bullet-physics-c++::simple-broadphase/ray-test/with-aabb-min (ff-pointer self)
                                              ray-from ray-to ray-callback aabb-min))
        (t (bullet-physics-c++::simple-broadphase/ray-test (ff-pointer self)
                                       ray-from ray-to ray-callback))))

(defmethod test-aabb ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3) callback)
  (bullet-physics-c++::simple-broadphase/aabb-test (ff-pointer self) aabbmin aabbmax callback))

(defmethod overlapping-pair-cache ((self simple-broadphase))
  (bullet-physics-c++::simple-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod overlapping-pair-cache ((self simple-broadphase))
  (bullet-physics-c++::simple-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod test-aabb-overlap ((self simple-broadphase) proxy0 proxy1)
  (bullet-physics-c++::simple-broadphase/test-aabb-overlap (ff-pointer self) proxy0 proxy1))

(defmethod broadphase-aabb ((self simple-broadphase) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::simple-broadphase/get-broadphase-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod print-stats ((self simple-broadphase))
  (bullet-physics-c++::simple-broadphase/print-stats (ff-pointer self)))

(defmethod broadphase-array ((self multi-sap-broadphase))
  (bullet-physics-c++::multi-sap-broadphase/get-broadphase-array (ff-pointer self)))

(defmethod broadphase-array ((self multi-sap-broadphase))
  (bullet-physics-c++::multi-sap-broadphase/get-broadphase-array (ff-pointer self)))

(defmethod create-proxy ((self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3) (shapetype integer) userptr (collisionfiltergroup integer) (collisionfiltermask integer) dispatcher multisapproxy)
  (bullet-physics-c++::multi-sap-broadphase/create-proxy (ff-pointer self) aabbmin aabbmax shapetype userptr collisionfiltergroup collisionfiltermask dispatcher multisapproxy))

(defmethod destroy-proxy ((self multi-sap-broadphase) proxy dispatcher)
  (bullet-physics-c++::multi-sap-broadphase/destroy-proxy (ff-pointer self) proxy dispatcher))

(defmethod (setf aabb) ( proxy (self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3) dispatcher)
  (bullet-physics-c++::multi-sap-broadphase/set-aabb (ff-pointer self) proxy aabbmin aabbmax dispatcher))

(defmethod aabb+ ((self multi-sap-broadphase) proxy (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::multi-sap-broadphase/get-aabb (ff-pointer self) proxy aabbmin aabbmax))

(defmethod ray-test ((self multi-sap-broadphase)
                     (ray-from vector3) (ray-to vector3) ray-callback 
                     &optional aabb-min aabb-max)
  (check-type aabb-min (or null vector3))
  (check-type aabb-max (or null vector3)) 
  (cond
    ((and aabb-max aabb-min)
     (bullet-physics-c++::multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min&max
      (ff-pointer self) ray-from ray-to ray-callback aabb-min aabb-max))
    (aabb-min
     (bullet-physics-c++::multi-sap-broadphase/ray-test/with-ray-from&to&callback&aabb-min
      (ff-pointer self) ray-from ray-to ray-callback aabb-min))
    (t
     (bullet-physics-c++::multi-sap-broadphase/ray-test/with-ray-from&to&callback
      (ff-pointer self) ray-from ray-to ray-callback))))

(defmethod add-to-child-broadphase ((self multi-sap-broadphase) parentmultisapproxy childproxy childbroadphase)
  (bullet-physics-c++::multi-sap-broadphase/add-to-child-broadphase (ff-pointer self) parentmultisapproxy childproxy childbroadphase))

(defmethod calculate-overlapping-pairs ((self multi-sap-broadphase) dispatcher)
  (bullet-physics-c++::multi-sap-broadphase/calculate-overlapping-pairs (ff-pointer self) dispatcher))

(defmethod test-aabb-overlap ((self multi-sap-broadphase) proxy0 proxy1)
  (bullet-physics-c++::multi-sap-broadphase/test-aabb-overlap (ff-pointer self) proxy0 proxy1))

(defmethod overlapping-pair-cache ((self multi-sap-broadphase))
  (bullet-physics-c++::multi-sap-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod overlapping-pair-cache ((self multi-sap-broadphase))
  (bullet-physics-c++::multi-sap-broadphase/get-overlapping-pair-cache (ff-pointer self)))

(defmethod broadphase-aabb ((self multi-sap-broadphase) (aabbmin vector3) (aabbmax vector3))
  (bullet-physics-c++::multi-sap-broadphase/get-broadphase-aabb (ff-pointer self) aabbmin aabbmax))

(defmethod build-tree ((self multi-sap-broadphase) (bvhaabbmin vector3) (bvhaabbmax vector3))
  (bullet-physics-c++::multi-sap-broadphase/build-tree (ff-pointer self) bvhaabbmin bvhaabbmax))

(defmethod print-stats ((self multi-sap-broadphase))
  (bullet-physics-c++::multi-sap-broadphase/print-stats (ff-pointer self)))

(defmethod quicksort ((self multi-sap-broadphase) a (lo integer) (hi integer))
  (bullet-physics-c++::multi-sap-broadphase/quicksort (ff-pointer self) a lo hi))

(defmethod reset-pool ((self multi-sap-broadphase) dispatcher)
  (bullet-physics-c++::multi-sap-broadphase/reset-pool (ff-pointer self) dispatcher))

(defmethod initialize-instance :after ((obj clock) &key other)
  (setf (ff-pointer obj) 
        (etypecase other
          (null (bullet-physics-c++::make-clock))
          (clock (bullet-physics-c++::make-clock/with-other (ff-pointer other))))))

(defmethod (setf clock) ( (other clock) (self clock))
  (bullet-physics-c++::clock/assign-value (ff-pointer self) (ff-pointer other)))

(defmethod reset ((self clock))
  (bullet-physics-c++::clock/reset (ff-pointer self)))

(defmethod time-milliseconds ((self clock))
  (bullet-physics-c++::clock/get-time-milliseconds (ff-pointer self)))

(defmethod time-microseconds ((self clock))
  (bullet-physics-c++::clock/get-time-microseconds (ff-pointer self)))

(defmethod initialize-instance :after ((obj cprofile-node) &key name parent)
  (check-type name string) (check-type parent cprofile-node)
  (setf (ff-pointer obj) (bullet-physics-c++::make-cprofile-node name (ff-pointer parent))))

(defmethod sub-node ((self cprofile-node) (name string))
  (bullet-physics-c++::cprofile-node/get/sub/node (ff-pointer self) name))

(defmethod parent ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/parent (ff-pointer self)))

(defmethod sibling ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/sibling (ff-pointer self)))

(defmethod child ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/child (ff-pointer self)))

(defmethod cleanup-memory ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/cleanup-memory (ff-pointer self)))

(defmethod reset ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/reset (ff-pointer self)))

(defmethod call ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/call (ff-pointer self)))

(defmethod bullet/return ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/return (ff-pointer self)))

(defmethod name ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/name (ff-pointer self)))

(defmethod total-calls ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/total/calls (ff-pointer self)))

(defmethod total-time ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get/total/time (ff-pointer self)))

(defmethod user-pointer ((self cprofile-node))
  (bullet-physics-c++::cprofile-node/get-user-pointer (ff-pointer self)))

(defmethod (setf user-pointer) ( ptr (self cprofile-node))
  (bullet-physics-c++::cprofile-node/set-user-pointer (ff-pointer self) ptr))

(defmethod bullet/first ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/first (ff-pointer self)))

(defmethod next ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/next (ff-pointer self)))

(defmethod donep ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/is/done (ff-pointer self)))

(defmethod rootp ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/is/root (ff-pointer self)))

(defmethod enter-child ((self cprofile-iterator) (index integer))
  (bullet-physics-c++::cprofile-iterator/enter/child (ff-pointer self) index))

(defmethod enter-largest-child ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/enter/largest/child (ff-pointer self)))

(defmethod enter-parent ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/enter/parent (ff-pointer self)))

(defmethod current-name ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/name (ff-pointer self)))

(defmethod current-total-calls ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/total/calls (ff-pointer self)))

(defmethod current-total-time ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/total/time (ff-pointer self)))

(defmethod current-user-pointer ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/user-pointer (ff-pointer self)))

(defmethod (setf current-user-pointer) ( ptr (self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/set/current/user-pointer (ff-pointer self) ptr))

(defmethod current-parent-name ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/parent/name (ff-pointer self)))

(defmethod current-parent-total-calls ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/parent/total/calls (ff-pointer self)))

(defmethod current-parent-total-time ((self cprofile-iterator))
  (bullet-physics-c++::cprofile-iterator/get/current/parent/total/time (ff-pointer self)))

(defmethod initialize-instance :after ((obj cprofile-manager) &key)
  (setf (ff-pointer obj) (bullet-physics-c++::make-cprofile-manager)))
#+ (or)

(defmethod initialize-instance :after ((obj cprofile-sample) &key (name string))
  (setf (ff-pointer obj) (bullet-physics-c++::make-cprofile-sample name)))
#+ (or)

(defmethod draw-line ((self idebug-draw) (from vector3) (to vector3) (color vector3))
  (idebug-draw/draw-line (ff-pointer self) from to color))

(defmethod draw-line ((self idebug-draw) (from vector3) (to vector3) (fromcolor vector3) (tocolor vector3))
  (bullet-physics-c++::idebug-draw/draw-line (ff-pointer self) from to fromcolor tocolor))
#+ (or)

(defmethod draw-sphere ((self idebug-draw) (radius number) (transform transform) (color vector3))
  (idebug-draw/draw-sphere (ff-pointer self) radius transform color))

(defmethod draw-sphere ((self idebug-draw) (p vector3) (radius number) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-sphere (ff-pointer self) p radius color))
#+ (or)

(defmethod draw-triangle ((self idebug-draw) (v0 vector3) (v1 vector3) (v2 vector3) (arg4 vector3) (arg5 vector3) (arg6 vector3) (color vector3) (alpha number))
  (bullet-physics-c++::idebug-draw/draw-triangle (ff-pointer self) v0 v1 v2 arg4 arg5 arg6 color alpha))

(defmethod draw-triangle ((self idebug-draw) (v0 vector3) (v1 vector3) (v2 vector3) (color vector3) (arg5 number))
  (bullet-physics-c++::idebug-draw/draw-triangle (ff-pointer self) v0 v1 v2 color arg5))

(defmethod draw-contact-point ((self idebug-draw) (pointonb vector3) (normalonb vector3) (distance number) (lifetime integer) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-contact-point (ff-pointer self) pointonb normalonb distance lifetime color))

(defmethod report-error-warning ((self idebug-draw) (warningstring string))
  (bullet-physics-c++::idebug-draw/report-error-warning (ff-pointer self) warningstring))

(defmethod draw-3d-text ((self idebug-draw) (location vector3) (textstring string))
  (bullet-physics-c++::idebug-draw/draw-3d-text (ff-pointer self) location textstring))

(defmethod (setf debug-mode) ( (debugmode integer) (self idebug-draw))
  (bullet-physics-c++::idebug-draw/set-debug-mode (ff-pointer self) debugmode))

(defmethod debug-mode ((self idebug-draw))
  (bullet-physics-c++::idebug-draw/get-debug-mode (ff-pointer self)))

(defmethod draw-aabb ((self idebug-draw) (from vector3) (to vector3) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-aabb (ff-pointer self) from to color))

(defmethod draw-transform ((self idebug-draw) (transform transform) (ortholen number))
  (bullet-physics-c++::idebug-draw/draw-transform (ff-pointer self) transform ortholen))
#+ (or)

(defmethod draw-arc ((self idebug-draw) (center vector3) (normal vector3) (axis vector3) (radiusa number) (radiusb number) (minangle number) (maxangle number) (color vector3) (drawsect-p t) (stepdegrees number))
  (idebug-draw/draw-arc (ff-pointer self) center normal axis radiusa radiusb minangle maxangle color drawsect stepdegrees))
#+ (or)

(defmethod draw-arc ((self idebug-draw) (center vector3) (normal vector3) (axis vector3) (radiusa number) (radiusb number) (minangle number) (maxangle number) (color vector3) (drawsect-p t))
  (bullet-physics-c++::idebug-draw/draw-arc (ff-pointer self) center normal axis radiusa radiusb minangle maxangle color drawsect))
#+ (or)

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3) (stepdegrees number) (drawcenter-p t))
  (bullet-physics-c++::idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color stepdegrees drawcenter))
#+ (or)

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3) (stepdegrees number))
  (bullet-physics-c++::idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color stepdegrees))

(defmethod draw-sphere-patch ((self idebug-draw) (center vector3) (up vector3) (axis vector3) (radius number) (minth number) (maxth number) (minps number) (maxps number) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-sphere-patch (ff-pointer self) center up axis radius minth maxth minps maxps color))
#+ (or)

(defmethod draw-box ((self idebug-draw) (bbmin vector3) (bbmax vector3) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-box (ff-pointer self) bbmin bbmax color))

(defmethod draw-box ((self idebug-draw) (bbmin vector3) (bbmax vector3) (trans transform) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-box (ff-pointer self) bbmin bbmax trans color))

(defmethod draw-capsule ((self idebug-draw) (radius number) (halfheight number) (upaxis integer) (transform transform) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-capsule (ff-pointer self) radius halfheight upaxis transform color))

(defmethod draw-cylinder ((self idebug-draw) (radius number) (halfheight number) (upaxis integer) (transform transform) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-cylinder (ff-pointer self) radius halfheight upaxis transform color))

(defmethod draw-cone ((self idebug-draw) (radius number) (height number) (upaxis integer) (transform transform) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-cone (ff-pointer self) radius height upaxis transform color))

(defmethod draw-plane ((self idebug-draw) (planenormal vector3) (planeconst number) (transform transform) (color vector3))
  (bullet-physics-c++::idebug-draw/draw-plane (ff-pointer self) planenormal planeconst transform color))

(defmethod (setf chunk-code) ( (obj chunk) arg0)
  (bullet-physics-c++::chunk/chunk-code/set (ff-pointer obj) arg0))

(defmethod chunk-code ((obj chunk))
  (bullet-physics-c++::chunk/chunk-code/get (ff-pointer obj)))

(defmethod (setf bullet/length) ( (obj chunk) arg0)
  (bullet-physics-c++::chunk/length/set (ff-pointer obj) arg0))

(defmethod bullet/length ((obj chunk))
  (bullet-physics-c++::chunk/length/get (ff-pointer obj)))

(defmethod (setf old-ptr) ( (obj chunk) arg0)
  (bullet-physics-c++::chunk/old-ptr/set (ff-pointer obj) arg0))

(defmethod old-ptr ((obj chunk))
  (bullet-physics-c++::chunk/old-ptr/get (ff-pointer obj)))

(defmethod (setf dna/nr) ( (obj chunk) arg0)
  (bullet-physics-c++::chunk/dna/nr/set (ff-pointer obj) arg0))

(defmethod dna/nr ((obj chunk))
  (bullet-physics-c++::chunk/dna/nr/get (ff-pointer obj)))

(defmethod (setf bullet/number) ( (obj chunk) arg0)
  (bullet-physics-c++::chunk/number/set (ff-pointer obj) arg0))

(defmethod bullet/number ((obj chunk))
  (bullet-physics-c++::chunk/number/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj chunk) &key)
  (bullet-physics-c++::setf (ff-pointer obj) (bullet-physics-c++::make-chunk)))

(defmethod buffer-pointer ((self serializer))
  (bullet-physics-c++::serializer/get-buffer-pointer (ff-pointer self)))

(defmethod current-buffer-size ((self serializer))
  (bullet-physics-c++::serializer/get-current-buffer-size (ff-pointer self)))

(defmethod allocate ((self serializer) size (numelements integer))
  (bullet-physics-c++::serializer/allocate (ff-pointer self) size numelements))

(defmethod finalize-chunk ((self serializer) (chunk chunk) (structtype string) (chunkcode integer) oldptr)
  (bullet-physics-c++::serializer/finalize-chunk (ff-pointer self) chunk structtype chunkcode oldptr))

(defmethod find-pointer ((self serializer) oldptr)
  (bullet-physics-c++::serializer/find-pointer (ff-pointer self) oldptr))

(defmethod unique-pointer ((self serializer) oldptr)
  (bullet-physics-c++::serializer/get-unique-pointer (ff-pointer self) oldptr))

(defmethod start-serialization ((self serializer))
  (bullet-physics-c++::serializer/start-serialization (ff-pointer self)))

(defmethod finish-serialization ((self serializer))
  (bullet-physics-c++::serializer/finish-serialization (ff-pointer self)))

(defmethod find-name-for-pointer ((self serializer) ptr)
  (bullet-physics-c++::serializer/find-name-for-pointer (ff-pointer self) ptr))

(defmethod register-name-for-pointer ((self serializer) ptr (name string))
  (bullet-physics-c++::serializer/register-name-for-pointer (ff-pointer self) ptr name))

(defmethod ->serial-name ((self serializer) (ptr string))
  (bullet-physics-c++::serializer/serialize-name (ff-pointer self) ptr))

(defmethod serialization-flags ((self serializer))
  (bullet-physics-c++::serializer/get-serialization-flags (ff-pointer self)))

(defmethod (setf serialization-flags) ( (flags integer) (self serializer))
  (bullet-physics-c++::serializer/set-serialization-flags (ff-pointer self) flags))

(defmethod initialize-instance :after ((obj default-serializer) &key (total-size nil))
  (check-type total-size (or null integer))
  (setf (ff-pointer obj) 
        (cond
          (total-size (bullet-physics-c++::make-default-serializer/with-total-size total-size))
          (t (bullet-physics-c++::make-default-serializer)))))

(defmethod write-header ((self default-serializer) buffer)
  (bullet-physics-c++::default-serializer/write-header (ff-pointer self) buffer))

(defmethod start-serialization ((self default-serializer))
  (bullet-physics-c++::default-serializer/start-serialization (ff-pointer self)))

(defmethod finish-serialization ((self default-serializer))
  (bullet-physics-c++::default-serializer/finish-serialization (ff-pointer self)))

(defmethod unique-pointer ((self default-serializer) oldptr)
  (bullet-physics-c++::default-serializer/get-unique-pointer (ff-pointer self) oldptr))

(defmethod buffer-pointer ((self default-serializer))
  (bullet-physics-c++::default-serializer/get-buffer-pointer (ff-pointer self)))

(defmethod current-buffer-size ((self default-serializer))
  (bullet-physics-c++::default-serializer/get-current-buffer-size (ff-pointer self)))

(defmethod finalize-chunk ((self default-serializer) (chunk chunk) (structtype string) (chunkcode integer) oldptr)
  (bullet-physics-c++::default-serializer/finalize-chunk (ff-pointer self) chunk structtype chunkcode oldptr))

(defmethod internal-alloc ((self default-serializer) size)
  (bullet-physics-c++::default-serializer/internal-alloc (ff-pointer self) size))

(defmethod allocate ((self default-serializer) size (numelements integer))
  (bullet-physics-c++::default-serializer/allocate (ff-pointer self) size numelements))

(defmethod find-name-for-pointer ((self default-serializer) ptr)
  (bullet-physics-c++::default-serializer/find-name-for-pointer (ff-pointer self) ptr))

(defmethod register-name-for-pointer ((self default-serializer) ptr (name string))
  (bullet-physics-c++::default-serializer/register-name-for-pointer (ff-pointer self) ptr name))

(defmethod ->serial-name ((self default-serializer) (name string))
  (bullet-physics-c++::default-serializer/serialize-name (ff-pointer self) name))

(defmethod serialization-flags ((self default-serializer))
  (bullet-physics-c++::default-serializer/get-serialization-flags (ff-pointer self)))

(defmethod (setf serialization-flags) ( (flags integer) (self default-serializer))
  (bullet-physics-c++::default-serializer/set-serialization-flags (ff-pointer self) flags))
#+(or) (defmethod new ((self discrete-dynamics-world) sizeinbytes)
  (bullet-physics-c++::discrete-dynamics-world/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete((self discrete-dynamics-world) ptr)
  (bullet-physics-c++::discrete-dynamics-world/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self discrete-dynamics-world) arg1 ptr)
  (bullet-physics-c++::discrete-dynamics-world/make-c++-instance/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete((self discrete-dynamics-world) arg1 arg2)
  (bullet-physics-c++::discrete-dynamics-world/delete-c++-instance/with-arg1&2 (ff-pointer self) arg1 arg2))
#+(or) (defmethod new[] ((self discrete-dynamics-world) sizeinbytes)
  (bullet-physics-c++::discrete-dynamics-world/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (defmethod delete[] ((self discrete-dynamics-world) ptr)
  (bullet-physics-c++::discrete-dynamics-world/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self discrete-dynamics-world) arg1 ptr)
  (bullet-physics-c++::discrete-dynamics-world/make-c++-array/with-arg1&ptr (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self discrete-dynamics-world) arg1 arg2)
  (bullet-physics-c++::discrete-dynamics-world/delete-c++-array/with-arg1&2 (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj discrete-dynamics-world)
                                       &key dispatcher broadphase
                                         constraint-solver collision-configuration)
  (format *trace-output* "~&MAKE-DISCRETE-DYNAMICS-WORLD
•dispatcher ~S
•broadphase ~S
•constraint solver ~S
•collision-configuration ~S"
          dispatcher broadphase
          constraint-solver collision-configuration)
  (setf (ff-pointer obj) (funcall
                          (etypecase broadphase
                            (broadphase       #'bullet-physics-c++::make-discrete-dynamics-world)
                            (dbvt-broadphase  #'bullet-physics-c++::make-discrete-dynamics-world+dbvt))
                          dispatcher
                          broadphase 
                          constraint-solver 
                          collision-configuration)))

(defmethod step-simulation ((self discrete-dynamics-world) (time-step number)
                            &optional max-sub-steps fixed-time-step)
  (check-type max-sub-steps (or null number))
  (check-type fixed-time-step (or null number))
  (cond
    ((and fixed-time-step max-sub-steps)
     (bullet-physics-c++::discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps&fixed-time-step
      (ff-pointer self) time-step max-sub-steps fixed-time-step))
    (max-sub-steps
     (bullet-physics-c++::discrete-dynamics-world/step-simulation/with-time-step&max-sub-steps
      (ff-pointer self) time-step max-sub-steps))
    (t
     (bullet-physics-c++::discrete-dynamics-world/step-simulation/with-time-step (ff-pointer self) time-step))))


(defmethod synchronize-motion-states ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/synchronize-motion-states (ff-pointer self)))

(defmethod synchronize-single-motion-state ((self discrete-dynamics-world) body)
  (bullet-physics-c++::discrete-dynamics-world/synchronize-single-motion-state (ff-pointer self) body))

(defmethod add-constraint ((self discrete-dynamics-world) constraint
                           &key (disable-collisions-between-linked-bodies-p t disable?))
  (if disable?
      (bullet-physics-c++::discrete-dynamics-world/add-constraint/with-disable-collision-between-linked-bodies
       (ff-pointer self) constraint disable-collisions-between-linked-bodies-p)
      (bullet-physics-c++::discrete-dynamics-world/add-constraint (ff-pointer self) constraint)))

(defmethod remove-constraint ((self discrete-dynamics-world) constraint)
  (bullet-physics-c++::discrete-dynamics-world/remove-constraint (ff-pointer self) constraint))

(defmethod add-action ((self discrete-dynamics-world) arg1)
  (bullet-physics-c++::discrete-dynamics-world/add-action (ff-pointer self) arg1))

(defmethod remove-action ((self discrete-dynamics-world) arg1)
  (bullet-physics-c++::discrete-dynamics-world/remove-action (ff-pointer self) arg1))

(defmethod simulation-island-manager ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/get-simulation-island-manager (ff-pointer self)))

(defmethod simulation-island-manager ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/get-simulation-island-manager (ff-pointer self)))

(defmethod collision-world ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/get-collision-world (ff-pointer self)))

(defmethod (setf gravity) ((gravity vector3) (self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/set-gravity self gravity))

