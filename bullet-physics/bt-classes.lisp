(in-package :bullet-physics)

;;; Worlds

(defclass /c++-class/ ()
  ((ff-pointer :reader ff-pointer)))

(defmacro bt-class (name &optional (base-class '/c++-class/))
  `(defclass ,name (,base-class) nil))

(bt-class collision-world)

(bt-class discrete-dynamics-world)

(bt-class simple-dynamics-world)

;;; Things in worlds (objects/bodies)

(bt-class collision-object)

(bt-class box-shape)

(bt-class sphere-shape)

(bt-class capsule-shape)

(bt-class capsule-shape-x capsule-shape)

(bt-class capsule-shape-z capsule-shape)

(bt-class cylinder-shape)

(bt-class cylinder-shape-x cylinder-shape)

(bt-class cylinder-shape-z cylinder-shape)

(bt-class cone-shape)

(bt-class cone-shape-x cone-shape)

(bt-class cone-shape-z cone-shape)

(bt-class static-plane-shape)

(bt-class convex-hull-shape)

(bt-class triangle-mesh)

(bt-class convex-triangle-mesh-shape)

(bt-class bvh-triangle-mesh-shape)

(bt-class scaled-bvh-triangle-mesh-shape)

(bt-class triangle-mesh-shape)

(bt-class triangle-index-vertex-array)

(bt-class compound-shape)

;;; Constraints

(bt-class constraint)

(bt-class hinged-constraint constraint)
(bt-class point->point-constraint constraint)
(bt-class typed-constraint constraint)

;;; Vectors, matrices, et al.

(bt-class vector3)

(bt-class vector4 vector3)

(bt-class quaternion)

(bt-class matrix-3x3)

(bt-class transform)

;;; Unsorted mass of things

(bt-class motion-state)

(bt-class bu-simplex1to4)

(bt-class empty-shape)

(bt-class multi-sphere-shape)

(bt-class uniform-scaling-shape)

(bt-class sphere-sphere-collision-algorithm)

(bt-class default-collision-configuration)

(bt-class collision-dispatcher)

(bt-class simple-broadphase)

(bt-class axis-sweep3)

(bt-class bt-32-bit-axis-sweep3)

(bt-class multi-sap-broadphase)

(bt-class clock)

(bt-class cprofile-node)

(bt-class cprofile-iterator)

(bt-class cprofile-manager)

(bt-class cprofile-sample)

(bt-class idebug-draw)

(bt-class chunk)

(bt-class serializer)

(bt-class default-serializer serializer)

(bt-class discrete-dynamics-world)

(bt-class simple-dynamics-world)

(bt-class rigid-body collision-object)

;;(bt-class typed-constraint typed-object)

(bt-class angular-limit)

(bt-class point->point-constraint typed-constraint)

(bt-class hinge-constraint typed-constraint)

(warn "Guessing at HINGE-2-CONSTRAINT")

(bt-class hinge-2-constraint hinge-constraint)

(bt-class cone-twist-constraint typed-constraint)

(bt-class rotational-limit-motor)

(bt-class translational-limit-motor)

(bt-class generic-6-dof-constraint typed-constraint)

(bt-class slider-constraint typed-constraint)

(bt-class generic-6-dof-spring-constraint generic-6dof-constraint)

(bt-class universal-constraint generic-6dof-constraint)

(bt-class hinge2-constraint generic-6dof-spring-constraint)

(bt-class gear-constraint typed-constraint)

(bt-class fixed-constraint typed-constraint)

(bt-class sequential-impulse-constraint-solver)

