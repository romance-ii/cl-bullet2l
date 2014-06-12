;;; A fairly direct Lisp port of the C++ tutorial
(defpackage :bullet-tutorial
  (:use :cl :alexandria :bullet)
  (:export #:rock-falls))
(in-package :bullet-tutorial)

(defun rock-falls ()

  "This is a partial port of the tutorial for the C++ Bullet Physics
library.  It's being used to unit-test the Lisp bindings.

Once I can get this test to run successfully, we'll call it an
α-quality library and share it with both people who care."
  
  (let* ((broadphase (make-instance 'bullet:dbvt-broadphase))
         (collision-configuration (make-instance 'default-collision-configuration))
         (dispatcher (make-instance 'collision-dispatcher :collision-configuration collision-configuration))
         (solver (make-instance 'sequential-impulse-constraint-solver))
         (dynamics-world (make-instance 'discrete-dynamics-world
                                        :dispatcher dispatcher
                                        :broadphase broadphase 
                                        :constraint-solver solver 
                                        :collision-configuration collision-configuration)))
    (setf (gravity dynamics-world) (vector3 0 -10 0))
    (let* ((ground-shape (make-instance 'static-plane-shape 
                                        :plane-normal (vector3 0 1 0)
                                        :plane-constant 1))
           (fall-shape (make-instance 'sphere-shape :radius 1))
           (ground-motion-state (make-instance
                                 'default-motion-state 
                                 :transform
                                 (make-instance 'transform
                                                :quaternion (make-instance 'quaternion) 
                                                :vector (vector3 0 -1 0))))
           (ground-rigid-body (make-instance 'rigid-body 
                                             :mass 0
                                             :motion-state ground-motion-state
                                             :shape ground-shape
                                             :inertia (vector3))))
      (add-rigid-body dynamics-world ground-rigid-body)
      (let ((fall-motion-state (make-instance 
                                'default-motion-state
                                :transform
                                (make-instance 
                                 'transform
                                 :q (make-instance 'quaternion)
                                 :v (vector3 0 50 0))))
            (mass 1.0)
            (fall-inertia (vector3)))
        (calculate-local-inertia fall-shape mass fall-inertia)
        (let ((fall-rigid-body (make-instance 
                                'rigid-body
                                :mass mass 
                                :motion-state fall-motion-state
                                :shape fall-shape
                                :inertia fall-inertia)))
          (add-rigid-body dynamics-world fall-rigid-body)
          (dotimes (i 300)
            (step-simulation dynamics-world 1/60 10)
            (let
                ;; (world-transform motion-state fall-rigid-body) 
                ;; but that doesn't match the signature
                ((trans (world-transform fall-rigid-body)))
              (format t "~&time: ~:ds sphere height: ~4f"
                      (/ i 60)
                      (y (origin trans)))))

          (remove-rigid-body dynamics-world fall-rigid-body)
          #+ (or)(delete (motion-state fall-rigid-body) )
          #+ (or)(delete fall-rigid-body)
        
          (remove-rigid-body dynamics-world ground-rigid-body)
          #+ (or)(delete (motion-state ground-rigid-body) )
          #+ (or)(delete ground-rigid-body)

          #+ (or)(delete fall-shape)
          #+ (or)(delete ground-shape)
          #+ (or)(delete dynamics-world)
          #+ (or)(delete solver)
          #+ (or)(delete collision-configuration)
          #+ (or)(delete dispatcher)
          #+ (or)(delete broadphase))))))
