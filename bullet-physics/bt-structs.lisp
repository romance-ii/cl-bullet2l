(in-package :bullet-physics)

(defmacro define-c-struct (class &body slots)
  (let ((alien-type `(sb-alien:struct ,class
                                      ,@(mapcar (lambda (slot)
                                                  (list (car slot)
                                                        (basic-type (second slot)))) slots))))
    (format *trace-output* "Class-like structure mapped for ~A~{~% •~A~}" class slots)
    `(progn
       (sb-alien:define-alien-type ,class ,alien-type)
       (defclass ,class (/c++-class/) ())
       (defmethod initialize-instance :after ((object ,class)
                                              &key ,@(mapcar (lambda (slot)
                                                               (let ((sym (car slot)))
                                                                 (list sym nil
                                                                       (intern (format nil "~A-?" sym)))))
                                                             slots))
                  (let ((pointer (sb-alien:make-alien ,alien-type)))
                    ,@(loop for (sym stuff) in slots
                         for sym-provided-p = (intern (format nil "~A-?" sym))
                         collecting `(when ,sym-provided-p (setf (sb-alien:slot pointer ',sym) ,sym)))
                    (setf (ff-pointer object) pointer)
                    (sb-ext:finalize object (lambda () (sb-alien:free-alien pointer))))) 
       ,@(loop for (sym stuff) in slots
            appending `((ensure-generic-function ',sym :lambda-list '(object))
                        (defmethod ,sym ((object ,class))
                          (sb-alien:slot (ff-pointer object) ',sym))
                        (ensure-generic-function '(setf ,sym) :lambda-list '(new-value object))
                        (defmethod (setf ,sym) (new-value (object ,class))
                          (setf (sb-alien:slot (ff-pointer object) ',sym) new-value)))))))

;; (define-c-struct vector3-float-data
;;     (floats (:array :float 4)))

(define-c-struct vector3-double-data
  (floats (:array :float 4)))

;; (define-c-struct matrix-3x3-float-data
;;     (el (:array :float 9)))

(define-c-struct matrix-3x3-double-data
  (el (:array :float 9)))

;; (define-c-struct transform-float-data
;;     (basis matrix-3x3-float-data)
;;   (origin vector3-float-data))

(define-c-struct transform-double-data
  (basis (:pointer (:struct matrix-3x3-double-data)))
  (origin (:pointer (:struct vector3-double-data))))

(define-c-struct typed-constraint-data
  (rb-a :pointer)
  (rb-b :pointer)
  (name :string)
  (object-type :int)
  (user-constraint-type :int)
  (user-constraint-id :int)
  (needs-feedback :int)
  (applied-impulse :float)
  (dbg-draw-size :float)
  (disable-collisions-between-linked-bodies :int)
  (override-num-solver-iterations :int)
  (breaking-impulse-threshold :float)
  (is-enabled :int))

(define-c-struct generic-6-dof-constraint-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (rb-aframe (:pointer (:struct transform-float-data)))
  (rb-bframe (:pointer (:struct transform-float-data)))
  (linear-upper-limit (:pointer (:struct vector3-float-data)))
  (linear-lower-limit (:pointer (:struct vector3-float-data)))
  (angular-upper-limit (:pointer (:struct vector3-float-data)))
  (angular-lower-limit (:pointer (:struct vector3-float-data)))
  (use-linear-reference-frame-a :int)
  (use-offset-for-constraint-frame :int))

(define-c-struct compound-shape-child-data
  (transform (:pointer (:struct transform-float-data)))
  (child-shape :pointer)
  (child-shape-type :int)
  (child-margin :float))

;; (define-c-struct rigid-body-construction-info
;;   (motion-state :pointer)
;;   (start-world-transform transform)

;;   (collision-shape (:pointer collision-shape))
;;   (local-inertia vector3)
;;   (linear-damping :double)
;;   (angular-damping :double)

;;   (friction :double)
;;   (rolling-friction :double)
;;   (restitution :double)

;;   (linear-sleeping-threshold :double)
;;   (angular-sleeping-threshold :double)
;;   ;; additional damping can help avoiding lowpass jitter motion, help
;;   ;; stability for ragdolls etc.  Such damping is undesirable, so once
;;   ;; the overall simulation quality of the rigid body dynamics system
;;   ;; has improved, this should become obsolete
;;   (additional-damping :boolean)
;;   (additional-damping-factor :double)
;;   (additional-linear-damping-threshold-sqr :double)
;;   (additional-angular-damping-threshold-sqr :double)
;;   (additional-angular-damping-factor :double))

(define-c-struct default-collision-construction-info
  (persistent-manifold-pool :pointer)
  (collision-algorithm-pool :pointer)
  (default-max-persistent-manifold-pool-size :int)
  (default-max-collision-algorithm-pool-size :int)
  (custom-collision-algorithm-max-element-size :int)
  (use-epa-penetration-algorithm :int))

(define-c-struct simple-broadphase-proxy
  (next-free :int)
  (set-next-free :pointer)
  (get-next-free :pointer))

(define-c-struct dbvt-proxy
  (leaf :pointer)
  (links :pointer)
  (stage :int))

;;(define-c-struct pointer-uid)

(define-c-struct dbvt-broadphase
  (sets :pointer)
  (stage-roots :pointer)
  (paircache :pointer)
  (prediction :float)
  (stage-current :int)
  (fupdates :int)
  (dupdates :int)
  (cupdates :int)
  (newpairs :int)
  (fixedleft :int)
  (updates-call :unsigned-int)
  (updates-done :unsigned-int)
  (updates-ratio :float)
  (pid :int)
  (cid :int)
  (gid :int)
  (releasepaircache :pointer)
  (deferedcollide :pointer)
  (needcleanup :pointer)
  (collide :pointer)
  (bullet/optimize :pointer)
  (create-proxy-with :pointer)
  (destroy-proxy-with :pointer)
  (set-aabb :pointer)
  (ray-test-1 :pointer)
  (ray-test-2 :pointer)
  (ray-test-3 :pointer)
  (aabb-test :pointer)
  (get-aabb :pointer)
  (calculate-overlapping-pairs-with :pointer)
  (get-overlapping-pair-cache :pointer)
  (get-overlapping-pair-cache+1 :pointer)
  (get-broadphase-aabb :pointer)
  (print-stats :pointer)
  (reset-pool-with :pointer)
  (perform-deferred-removal :pointer)
  (set-velocity-prediction :pointer)
  (get-velocity-prediction :pointer)
  (set-aabb-force-update :pointer)
  (benchmark :pointer))

(define-c-struct default-motion-state
  (graphics-world-trans :pointer)
  (center-of-mass-offset :pointer)
  (start-world-trans :pointer)
  (user-pointer :pointer)
  (make-c++-instance~1 :pointer)
  (delete-c++-instance~1 :pointer)
  (make-c++-instance~2 :pointer)
  (delete-c++-instance~2 :pointer)
  (make-c++-array~3 :pointer)
  (delete-c++-array~3 :pointer)
  (make-c++-array~4 :pointer)
  (delete-c++-array~4 :pointer)
  (get-world-transform :pointer)
  (set-world-transform :pointer))

(define-c-struct compound-shape-data
  (collision-shape-data :pointer)
  (child-shape-ptr :pointer)
  (num-child-shapes :int)
  (collision-margin :float))

(define-c-struct position-and-radius
  (pos (:pointer (:struct vector3-float-data)))
  (radius :float))

(define-c-struct multi-sphere-shape-data
  (convex-internal-shape-data :pointer)
  (local-position-array-ptr :pointer)
  (local-position-array-size :int)
  (padding :pointer))

(define-c-struct capsule-shape-data
  (convex-internal-shape-data :pointer)
  (up-axis :int)
  (padding :pointer))

(define-c-struct cylinder-shape-data
  (convex-internal-shape-data :pointer)
  (up-axis :int)
  (padding :pointer))

(define-c-struct cone-shape-data
  (convex-internal-shape-data :pointer)
  (up-index :int)
  (padding :pointer))

(define-c-struct static-plane-shape-data
  (collision-shape-data :pointer)
  (local-scaling (:pointer (:struct vector3-float-data)))
  (plane-normal (:pointer (:struct vector3-float-data)))
  (plane-constant :float)
  (pad :pointer))

(define-c-struct convex-hull-shape-data
  (convex-internal-shape-data :pointer)
  (unscaled-points-float-ptr :pointer)
  (unscaled-points-double-ptr :pointer)
  (num-unscaled-points :int)
  (padding-3 :pointer))

(define-c-struct triangle-mesh-shape-data
  (collision-shape-data :pointer)
  (mesh-interface :pointer)
  (quantized-float-bvh :pointer)
  (quantized-double-bvh :pointer)
  (triangle-info-map :pointer)
  (collision-margin :float)
  (pad-3 :pointer))

(define-c-struct scaled-triangle-mesh-shape-data
  (trimesh-shape-data (:pointer (:struct triangle-mesh-shape-data)))
  (local-scaling (:pointer (:struct vector3-float-data))))

(define-c-struct indexed-mesh
  (make-c++-instance~1 :pointer)
  (delete-c++-instance~1 :pointer)
  (make-c++-instance~2 :pointer)
  (delete-c++-instance~2 :pointer)
  (make-c++-array~3 :pointer)
  (delete-c++-array~3 :pointer)
  (make-c++-array~4 :pointer)
  (delete-c++-array~4 :pointer)
  (num-triangles :int)
  (triangle-index-base :pointer)
  (triangle-index-stride :int)
  (num-vertices :int)
  (vertex-base :pointer)
  (vertex-stride :int)
  (index-type :pointer)
  (vertex-type :pointer))

(define-c-struct compound-shape-child
  (make-c++-instance~1 :pointer)
  (delete-c++-instance~1 :pointer)
  (make-c++-instance~2 :pointer)
  (delete-c++-instance~2 :pointer)
  (make-c++-array~3 :pointer)
  (delete-c++-array~3 :pointer)
  (make-c++-array~4 :pointer)
  (delete-c++-array~4 :pointer)
  (transform :pointer)
  (child-shape :pointer)
  (child-shape-type :int)
  (child-margin :float)
  (node :pointer))

(define-c-struct local-shape-info
  (shape-part :int)
  (triangle-index :int))

(define-c-struct local-ray-result
  (collision-object :pointer)
  (local-shape-info :pointer)
  (hit-normal-local :pointer)
  (hit-fraction :float))

(define-c-struct ray-result-callback
  (closest-hit-fraction :float)
  (collision-object :pointer)
  (collision-filter-group :short)
  (collision-filter-mask :short)
  (flags :unsigned-int)
  (has-hit :pointer)
  (needs-collision-p :pointer)
  (add-single-result :pointer))

(define-c-struct closest-ray-result-callback
  (ray<-world :pointer)
  (ray->world :pointer)
  (hit-normal-world :pointer)
  (hit-point-world :pointer)
  (add-single-result :pointer))

(define-c-struct all-hits-ray-result-callback
  (collision-objects :pointer)
  (ray<-world :pointer)
  (ray->world :pointer)
  (hit-normal-world :pointer)
  (hit-point-world :pointer)
  (hit-fractions :pointer)
  (add-single-result :pointer))

(define-c-struct local-convex-result
  (hit-collision-object :pointer)
  (local-shape-info :pointer)
  (hit-normal-local :pointer)
  (hit-point-local :pointer)
  (hit-fraction :float))

(define-c-struct convex-result-callback
  (closest-hit-fraction :float)
  (collision-filter-group :short)
  (collision-filter-mask :short)
  (has-hit :pointer)
  (needs-collision-p :pointer)
  (add-single-result :pointer))

(define-c-struct typed-object
  (object-type :int)
  (get-object-type :pointer))

(define-c-struct closest-convex-result-callback
  (convex<-world :pointer)
  (convex->world :pointer)
  (hit-normal-world :pointer)
  (hit-point-world :pointer)
  (hit-collision-object :pointer)
  (add-single-result :pointer))

(define-c-struct contact-result-callback
  (collision-filter-group :short)
  (collision-filter-mask :short)
  (needs-collision-p :pointer)
  (add-single-result :pointer))

(define-c-struct collision-object-float-data
  (broadphase-handle :pointer)
  (collision-shape :pointer)
  (root-collision-shape :pointer)
  (name :string)
  (world-transform :pointer)
  (interpolation-world-transform :pointer)
  (interpolation-linear-velocity :pointer)
  (interpolation-angular-velocity :pointer)
  (anisotropic-friction :pointer)
  (contact-processing-threshold :float)
  (deactivation-time :float)
  (friction :float)
  (rolling-friction :float)
  (restitution :float)
  (hit-fraction :float)
  (ccd-swept-sphere-radius :float)
  (ccd-motion-threshold :float)
  (has-anisotropic-friction :int)
  (collision-flags :int)
  (island-tag-1 :int)
  (companion-id :int)
  (activation-state-1 :int)
  (internal-type :int)
  (check-collide-with-num :int)
  (padding :pointer))

(define-c-struct collision-object-double-data
  (broadphase-handle :pointer)
  (collision-shape :pointer)
  (root-collision-shape :pointer)
  (name :string)
  (world-transform :pointer)
  (interpolation-world-transform :pointer)
  (interpolation-linear-velocity :pointer)
  (interpolation-angular-velocity :pointer)
  (anisotropic-friction :pointer)
  (contact-processing-threshold :double)
  (deactivation-time :double)
  (friction :double)
  (rolling-friction :double)
  (restitution :double)
  (hit-fraction :double)
  (ccd-swept-sphere-radius :double)
  (ccd-motion-threshold :double)
  (has-anisotropic-friction :int)
  (collision-flags :int)
  (island-tag-1 :int)
  (companion-id :int)
  (activation-state-1 :int)
  (internal-type :int)
  (check-collide-with-num :int)
  (padding :pointer))

(define-c-struct rigid-body-double-data
  (collision-object-data (:pointer (:struct collision-object-double-data)))
  (inv-inertia-tensor-world (:pointer (:struct matrix-3x3-double-data)))
  (linear-velocity (:pointer (:struct vector3-double-data)))
  (angular-velocity (:pointer (:struct vector3-double-data)))
  (angular-factor (:pointer (:struct vector3-double-data)))
  (linear-factor (:pointer (:struct vector3-double-data)))
  (gravity (:pointer (:struct vector3-double-data)))
  (gravity-acceleration (:pointer (:struct vector3-double-data)))
  (inv-inertia-local (:pointer (:struct vector3-double-data)))
  (total-force (:pointer (:struct vector3-double-data)))
  (total-torque (:pointer (:struct vector3-double-data)))
  (inverse-mass :double)
  (linear-damping :double)
  (angular-damping :double)
  (additional-damping-factor :double)
  (additional-linear-damping-threshold-sqr :double)
  (additional-angular-damping-threshold-sqr :double)
  (additional-angular-damping-factor :double)
  (linear-sleeping-threshold :double)
  (angular-sleeping-threshold :double)
  (additional-damping :int)
  (padding :pointer))

(define-c-struct typed-constraint-float-data
  (rb-a :pointer)
  (rb-b :pointer)
  (name :string)
  (object-type :int)
  (user-constraint-type :int)
  (user-constraint-id :int)
  (needs-feedback :int)
  (applied-impulse :float)
  (dbg-draw-size :float)
  (disable-collisions-between-linked-bodies :int)
  (override-num-solver-iterations :int)
  (breaking-impulse-threshold :float)
  (is-enabled :int))

(define-c-struct typed-constraint-double-data
  (rb-a :pointer)
  (rb-b :pointer)
  (name :string)
  (object-type :int)
  (user-constraint-type :int)
  (user-constraint-id :int)
  (needs-feedback :int)
  (applied-impulse :double)
  (dbg-draw-size :double)
  (disable-collisions-between-linked-bodies :int)
  (override-num-solver-iterations :int)
  (breaking-impulse-threshold :double)
  (is-enabled :int)
  (padding :pointer))

(define-c-struct constraint-setting
  (tau :float)
  (damping :float)
  (impulse-clamp :float))

(define-c-struct joint-feedback
  (applied-force-body-a :pointer)
  (applied-torque-body-a :pointer)
  (applied-force-body-b :pointer)
  (applied-torque-body-b :pointer))

(define-c-struct rigid-body-float-data
  (collision-object-data (:pointer (:struct collision-object-float-data)))
  (inv-inertia-tensor-world (:pointer (:struct matrix-3x3-float-data)))
  (linear-velocity (:pointer (:struct vector3-float-data)))
  (angular-velocity (:pointer (:struct vector3-float-data)))
  (angular-factor (:pointer (:struct vector3-float-data)))
  (linear-factor (:pointer (:struct vector3-float-data)))
  (gravity (:pointer (:struct vector3-float-data)))
  (gravity-acceleration (:pointer (:struct vector3-float-data)))
  (inv-inertia-local (:pointer (:struct vector3-float-data)))
  (total-force (:pointer (:struct vector3-float-data)))
  (total-torque (:pointer (:struct vector3-float-data)))
  (inverse-mass :float)
  (linear-damping :float)
  (angular-damping :float)
  (additional-damping-factor :float)
  (additional-linear-damping-threshold-sqr :float)
  (additional-angular-damping-threshold-sqr :float)
  (additional-angular-damping-factor :float)
  (linear-sleeping-threshold :float)
  (angular-sleeping-threshold :float)
  (additional-damping :int))

(define-c-struct generic-6-dof-constraint-double-data-2
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (rb-aframe (:pointer (:struct transform-double-data)))
  (rb-bframe (:pointer (:struct transform-double-data)))
  (linear-upper-limit (:pointer (:struct vector3-double-data)))
  (linear-lower-limit (:pointer (:struct vector3-double-data)))
  (angular-upper-limit (:pointer (:struct vector3-double-data)))
  (angular-lower-limit (:pointer (:struct vector3-double-data)))
  (use-linear-reference-frame-a :int)
  (use-offset-for-constraint-frame :int))

(define-c-struct slider-constraint-double-data
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (rb-aframe (:pointer (:struct transform-double-data)))
  (rb-bframe (:pointer (:struct transform-double-data)))
  (linear-upper-limit :double)
  (linear-lower-limit :double)
  (angular-upper-limit :double)
  (angular-lower-limit :double)
  (use-linear-reference-frame-a :int)
  (use-offset-for-constraint-frame :int))

(define-c-struct generic-6-dof-spring-constraint-data
  (6-dof-data (:pointer (:struct generic-6-dof-constraint-data)))
  (spring-enabled :pointer)
  (equilibrium-point-at :pointer)
  (spring-stiffness :pointer)
  (spring-damping :pointer))

(define-c-struct generic-6-dof-spring-constraint-double-data-2
  (6-dof-data (:pointer (:struct generic-6-dof-constraint-double-data-2)))
  (spring-enabled :pointer)
  (equilibrium-point-at :pointer)
  (spring-stiffness :pointer)
  (spring-damping :pointer))

(define-c-struct gear-constraint-float-data
  (type-constraint-data
   (:pointer (:struct
              typed-constraint-float-data)))
  (axis-in-a (:pointer (:struct vector3-float-data)))
  (axis-in-b (:pointer (:struct vector3-float-data)))
  (bullet/ratio :float)
  (padding :pointer))

(define-c-struct gear-constraint-double-data
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (axis-in-a (:pointer (:struct vector3-double-data)))
  (axis-in-b (:pointer (:struct vector3-double-data)))
  (bullet/ratio :double))


(define-c-struct slider-constraint-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (rb-aframe (:pointer (:struct transform-float-data)))
  (rb-bframe (:pointer (:struct transform-float-data)))
  (linear-upper-limit :float)
  (linear-lower-limit :float)
  (angular-upper-limit :float)
  (angular-lower-limit :float)
  (use-linear-reference-frame-a :int)
  (use-offset-for-constraint-frame :int))

(define-c-struct point->point-constraint-float-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (pivot-in-a (:pointer (:struct vector3-float-data)))
  (pivot-in-b (:pointer (:struct vector3-float-data))))

(define-c-struct point->point-constraint-double-data-2
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (pivot-in-a (:pointer (:struct vector3-double-data)))
  (pivot-in-b (:pointer (:struct vector3-double-data))))

(define-c-struct point->point-constraint-double-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (pivot-in-a (:pointer (:struct vector3-double-data)))
  (pivot-in-b (:pointer (:struct vector3-double-data))))

(define-c-struct hinge-constraint-double-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (rb-aframe (:pointer (:struct transform-double-data)))
  (rb-bframe (:pointer (:struct transform-double-data)))
  (use-reference-frame-a :int)
  (angular-only-p :int)
  (enable-angular-motor-p :int)
  (motor-target-velocity :float)
  (max-motor-impulse :float)
  (lower-limit :float)
  (upper-limit :float)
  (limit-softness :float)
  (bias-factor :float)
  (relaxation-factor :float))

(define-c-struct hinge-constraint-float-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (rb-aframe (:pointer (:struct transform-float-data)))
  (rb-bframe (:pointer (:struct transform-float-data)))
  (use-reference-frame-a :int)
  (angular-only-p :int)
  (enable-angular-motor-p :int)
  (motor-target-velocity :float)
  (max-motor-impulse :float)
  (lower-limit :float)
  (upper-limit :float)
  (limit-softness :float)
  (bias-factor :float)
  (relaxation-factor :float))

(define-c-struct hinge-constraint-double-data-2
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (rb-aframe (:pointer (:struct transform-double-data)))
  (rb-bframe (:pointer (:struct transform-double-data)))
  (use-reference-frame-a :int)
  (angular-only-p :int)
  (enable-angular-motor-p :int)
  (motor-target-velocity :double)
  (max-motor-impulse :double)
  (lower-limit :double)
  (upper-limit :double)
  (limit-softness :double)
  (bias-factor :double)
  (relaxation-factor :double)
  (padding-1 :pointer))

(define-c-struct cone-twist-constraint-double-data
  (type-constraint-data (:pointer (:struct typed-constraint-double-data)))
  (rb-aframe (:pointer (:struct transform-double-data)))
  (rb-bframe (:pointer (:struct transform-double-data)))
  (swing-span-1 :double)
  (swing-span-2 :double)
  (twist-span :double)
  (limit-softness :double)
  (bias-factor :double)
  (relaxation-factor :double)
  (damping :double))

(define-c-struct cone-twist-constraint-data
  (type-constraint-data (:pointer (:struct typed-constraint-data)))
  (rb-aframe (:pointer (:struct transform-float-data)))
  (rb-bframe (:pointer (:struct transform-float-data)))
  (swing-span-1 :float)
  (swing-span-2 :float)
  (twist-span :float)
  (limit-softness :float)
  (bias-factor :float)
  (relaxation-factor :float)
  (damping :float)
  (pad :pointer))

