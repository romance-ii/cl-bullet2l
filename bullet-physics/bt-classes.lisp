(in-package :bullet)

;;; Worlds

(defclass /c++-class/ ()
  ((ff-pointer :reader ff-pointer)))

(defclass collision-world (/c++-class/)
  ())

(defclass discrete-dynamics-world (/c++-class/)
  ())

(defclass simple-dynamics-world (/c++-class/)
  ())

;;; Things in worlds (objects/bodies)

(defclass collision-object (/c++-class/)
  ())

(defclass box-shape (/c++-class/)
  ())

(defclass sphere-shape (/c++-class/)
  ())

(defclass capsule-shape (/c++-class/)
  ())

(defclass capsule-shape-x (capsule-shape)
  ())

(defclass capsule-shape-z (capsule-shape)
  ())

(defclass cylinder-shape (/c++-class/)
  ())

(defclass cylinder-shape-x (cylinder-shape)
  ())

(defclass cylinder-shape-z (cylinder-shape)
  ())

(defclass cone-shape (/c++-class/)
  ())

(defclass cone-shape-x (cone-shape)
  ())

(defclass cone-shape-z (cone-shape)
  ())

(defclass static-plane-shape (/c++-class/)
  ())

(defclass convex-hull-shape (/c++-class/)
  ())

(defclass triangle-mesh (/c++-class/)
  ())

(defclass convex-triangle-mesh-shape (/c++-class/)
  ())

(defclass bvh-triangle-mesh-shape (/c++-class/)
  ())

(defclass scaled-bvh-triangle-mesh-shape (/c++-class/)
  ())

(defclass triangle-mesh-shape (/c++-class/)
  ())

(defclass triangle-index-vertex-array (/c++-class/)
  ())

(defclass compound-shape (/c++-class/)
  ())

;;; Constraints

;;; Vectors, matrices, et al.

(defclass vector3 (/c++-class/)
  ())

(defclass vector4 (vector3)
  ())

(defclass quaternion (/c++-class/)
  ())

(defclass matrix-3x3 (/c++-class/)
  ())

(defclass transform (/c++-class/)
  ())

;;; Unsorted mass of things

(defclass motion-state (/c++-class/)
  ())

(defclass bu-simplex1to4 (/c++-class/)
  ())

(defclass empty-shape (/c++-class/)
  ())

(defclass multi-sphere-shape (/c++-class/)
  ())

(defclass uniform-scaling-shape (/c++-class/)
  ())

(defclass sphere-sphere-collision-algorithm (/c++-class/)
  ())

(defclass default-collision-configuration (/c++-class/)
  ())

(defclass collision-dispatcher (/c++-class/)
  ())

(defclass simple-broadphase (/c++-class/)
  ())

(defclass axis-sweep3 (/c++-class/)
  ())

(defclass bt-32-bit-axis-sweep3 (/c++-class/)
  ())

(defclass multi-sap-broadphase (/c++-class/)
  ())

(defclass clock (/c++-class/)
  ())

(defclass cprofile-node (/c++-class/)
  ())

(defclass cprofile-iterator (/c++-class/)
  ())

(defclass cprofile-manager (/c++-class/)
  ())

(defclass cprofile-sample (/c++-class/)
  ())

(defclass idebug-draw (/c++-class/)
  ())

(defclass chunk (/c++-class/)
  ())

(defclass serializer (/c++-class/)
  ())

(defclass default-serializer (serializer)
  ())

(defclass discrete-dynamics-world (/c++-class/)
  ())

(defclass simple-dynamics-world (/c++-class/)
  ())

(defclass rigid-body (collision-object)
  ())

(defclass typed-constraint (typed-object)
  ())

(defclass angular-limit (/c++-class/)
  ())

(defclass point->point-constraint (typed-constraint)
  ())

(defclass hinge-constraint (typed-constraint)
  ())

(warn "Guessing at HINGE-2-CONSTRAINT")
(defclass hinge-2-constraint (hinge-constraint)
  ())

(defclass cone-twist-constraint (typed-constraint)
  ())

(defclass rotational-limit-motor (/c++-class/)
  ())

(defclass translational-limit-motor (/c++-class/)
  ())

(defclass generic-6-dof-constraint (typed-constraint)
  ())

(defclass slider-constraint (typed-constraint)
  ())

(defclass generic-6-dof-spring-constraint (generic-6dof-constraint)
  ())

(defclass universal-constraint (generic-6dof-constraint)
  ())

(defclass hinge2-constraint (generic-6dof-spring-constraint)
  ())

(defclass gear-constraint (typed-constraint)
  ())

(defclass fixed-constraint (typed-constraint)
  ())

(defclass sequential-impulse-constraint-solver (/c++-class/)
  ())

