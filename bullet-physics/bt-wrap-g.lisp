(in-package :bullet-physics)


#+(or) (defmethod bullet/delete ((self BOX-SHAPE) ptr))


(defcfun ("_wrap_new_btFixedConstraint"
               MAKE-FIXED-CONSTRAINT) :pointer
  (rigid-body-a :pointer)
  (rigid-body-b :pointer)
  (frame-in-a :pointer)
  (frame-in-b :pointer))

(defmethod gravity ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/get-gravity (ff-pointer self)))

(defmethod add-collision-object ((self discrete-dynamics-world)
                                 (collision-object collision-object)
                                 &optional
                                   collision-filter-group
                                   collision-filter-mask)
  (check-type collision-filter-group (or null integer))
  (check-type collision-filter-mask (or null integer))
  (cond
    ((and collision-filter-mask
          collision-filter-group)
     (bullet-physics-c++::discrete-dynamics-world/add-collision-object/with-filter-group&mask
      (ff-pointer self) collision-object collision-filter-group collision-filter-mask))
    (collision-filter-group
     (bullet-physics-c++::discrete-dynamics-world/add-collision-object/with-filter-group
      (ff-pointer self) collision-object collision-filter-group))
    (t
     (bullet-physics-c++::discrete-dynamics-world/add-collision-object (ff-pointer self) collision-object))))

(defmethod remove-rigid-body ((self discrete-dynamics-world) body)
  (bullet-physics-c++::discrete-dynamics-world/remove-rigid-body (ff-pointer self) body))

(defmethod remove-collision-object ((self discrete-dynamics-world)
                                    (collisionobject collision-object))
  (bullet-physics-c++::discrete-dynamics-world/remove-collision-object (ff-pointer self) collisionobject))

(defmethod debug-draw-constraint ((self discrete-dynamics-world) constraint)
  (bullet-physics-c++::discrete-dynamics-world/debug-draw-constraint (ff-pointer self) constraint))

(defmethod debug-draw-world ((self discrete-dynamics-world))  (bullet-physics-c++::discrete-dynamics-world/debug-draw-world (ff-pointer self)))

(defmethod (setf constraint-solver) ( solver (self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/set-constraint-solver (ff-pointer self) solver))

(defmethod constraint-solver ((self discrete-dynamics-world))
  (bullet-physics-c++::discrete-dynamics-world/get-constraint-solver (ff-pointer self)))

(defmethod num-constraints ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-num-constraints (ff-pointer self)))

(defmethod constraint ((self discrete-dynamics-world) (index integer))
  (discrete-dynamics-world/get-constraint (ff-pointer self) index))

(defmethod constraint ((self discrete-dynamics-world) (index integer))
  (discrete-dynamics-world/get-constraint (ff-pointer self) index))

(defmethod world-type ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-world-type (ff-pointer self)))

(defmethod clear-forces ((self discrete-dynamics-world))
  (discrete-dynamics-world/clear-forces (ff-pointer self)))

(defmethod apply-gravity ((self discrete-dynamics-world))
  (discrete-dynamics-world/apply-gravity (ff-pointer self)))

(defmethod (setf num-tasks) ( (numtasks integer) (self discrete-dynamics-world))
  (discrete-dynamics-world/set-num-tasks (ff-pointer self) numtasks))

(defmethod update-vehicles ((self discrete-dynamics-world) (time-step number))
  (discrete-dynamics-world/update-vehicles (ff-pointer self) time-step))

(defmethod add-vehicle ((self discrete-dynamics-world) vehicle)
  (discrete-dynamics-world/add-vehicle (ff-pointer self) vehicle))

(defmethod remove-vehicle ((self discrete-dynamics-world) vehicle)
  (discrete-dynamics-world/remove-vehicle (ff-pointer self) vehicle))

(defmethod add-character ((self discrete-dynamics-world) character)
  (discrete-dynamics-world/add-character (ff-pointer self) character))

(defmethod remove-character ((self discrete-dynamics-world) character)
  (discrete-dynamics-world/remove-character (ff-pointer self) character))

(defmethod (setf synchronize-all-motion-states-p)
    ( (synchronizeall t) (self discrete-dynamics-world))
  (discrete-dynamics-world/set-synchronize-all-motion-states (ff-pointer self) synchronizeall))

(defmethod synchronize-all-motion-states-p ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-synchronize-all-motion-states (ff-pointer self)))

(defmethod (setf apply-speculative-contact-restitution-p)
    ( (enable t) (self discrete-dynamics-world))
  (discrete-dynamics-world/set-apply-speculative-contact-restitution (ff-pointer self) enable))

(defmethod apply-speculative-contact-restitution-p
    ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-apply-speculative-contact-restitution (ff-pointer self)))

(defmethod ->serial ((self discrete-dynamics-world) &key serializer &allow-other-keys)
  (check-type serializer serializer)
  (discrete-dynamics-world/serialize (ff-pointer self) (ff-pointer serializer)))

(defmethod (setf latency-motion-state-interpolation-p)
    ( (latencyinterpolation t) (self discrete-dynamics-world))
  (discrete-dynamics-world/set-latency-motion-state-interpolation (ff-pointer self) latencyinterpolation))

(defmethod latency-motion-state-interpolation-p
    ((self discrete-dynamics-world))
  (discrete-dynamics-world/get-latency-motion-state-interpolation (ff-pointer self)))

(defmethod initialize-instance :after ((obj simple-dynamics-world) &key dispatcher paircache constraintsolver collisionconfiguration)
  (setf (slot-value obj 'ff-pointer) (make-simple-dynamics-world dispatcher paircache constraintsolver collisionconfiguration)))

(defmethod step-simulation ((self simple-dynamics-world) (time-step number)
                            &optional max-sub-steps fixed-time-step)
  (check-type max-sub-steps (or null integer))
  (check-type fixed-time-step (or null number))
  (cond
    ((and fixed-time-step max-sub-steps)
     (simple-dynamics-world/step-simulation/with-max&fixed
      (ff-pointer self) time-step max-sub-steps (coerce fixed-time-step 'single-float)))
    (max-sub-steps
     (simple-dynamics-world/step-simulation/with-max (ff-pointer self) time-step max-sub-steps))
    (t (simple-dynamics-world/step-simulation (ff-pointer self) time-step))))


(defmethod (setf gravity) ( (gravity vector3) (self simple-dynamics-world))
  (simple-dynamics-world/set-gravity (ff-pointer self) gravity))

(defmethod gravity ((self simple-dynamics-world))
  (simple-dynamics-world/get-gravity (ff-pointer self)))

(defmethod add-rigid-body ((self simple-dynamics-world) body &optional group mask)
  (check-type group (or null integer))
  (check-type mask (or null integer))
  (cond
    ((and mask group)
     (simple-dynamics-world/add-rigid-body/with-group&mask
      (ff-pointer self) body group mask))
    (group
     (error 'foo))
    (t
     (simple-dynamics-world/add-rigid-body (ff-pointer self) body))))

(defmethod remove-rigid-body ((self simple-dynamics-world) body)
  (simple-dynamics-world/remove-rigid-body (ff-pointer self) body))

(defmethod debug-draw-world ((self simple-dynamics-world))
  (simple-dynamics-world/debug-draw-world (ff-pointer self)))

(defmethod add-action ((self simple-dynamics-world) action)
  (simple-dynamics-world/add-action (ff-pointer self) action))

(defmethod remove-action ((self simple-dynamics-world) action)
  (simple-dynamics-world/remove-action (ff-pointer self) action))

(defmethod remove-collision-object ((self simple-dynamics-world) (collisionobject collision-object))
  (simple-dynamics-world/remove-collision-object (ff-pointer self) collisionobject))

(defmethod update-aabbs ((self simple-dynamics-world))
  (simple-dynamics-world/update-aabbs (ff-pointer self)))

(defmethod synchronize-motion-states ((self simple-dynamics-world))
  (simple-dynamics-world/synchronize-motion-states (ff-pointer self)))

(defmethod (setf constraint-solver) ( solver (self simple-dynamics-world))
  (simple-dynamics-world/set-constraint-solver (ff-pointer self) solver))

(defmethod constraint-solver ((self simple-dynamics-world))
  (simple-dynamics-world/get-constraint-solver (ff-pointer self)))

(defmethod world-type ((self simple-dynamics-world))
  (simple-dynamics-world/get-world-type (ff-pointer self)))

(defmethod clear-forces ((self simple-dynamics-world))
  (simple-dynamics-world/clear-forces (ff-pointer self)))



#+(or) (defmethod new ((self typed-constraint) sizeinbytes)
          (typed-constraint/make-c++-instance (ff-pointer self) sizeinbytes))
#+(or) (defmethod bullet/delete ((self typed-constraint) ptr)
          (typed-constraint/delete-c++-instance (ff-pointer self) ptr))
#+(or) (defmethod new ((self typed-constraint) arg1 ptr)
          (typed-constraint/make-c++-instance (ff-pointer self) arg1 ptr))
#+(or) (defmethod bullet/delete ((self typed-constraint) arg1 arg2)
          (typed-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))
#+(or) (shadow "new[]")
#+(or) (defmethod new[] ((self typed-constraint) sizeinbytes)
          (typed-constraint/make-c++-array (ff-pointer self) sizeinbytes))
#+(or) (shadow "delete[]")
#+(or) (defmethod delete[] ((self typed-constraint) ptr)
          (typed-constraint/delete-c++-array (ff-pointer self) ptr))
#+(or) (shadow "new[]")
#+(or) (defmethod new[] ((self typed-constraint) arg1 ptr)
          (typed-constraint/make-c++-array (ff-pointer self) arg1 ptr))
#+(or) (defmethod delete[] ((self typed-constraint) arg1 arg2)
          (typed-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod override-num-solver-iterations ((self typed-constraint))
  (typed-constraint/get-override-num-solver-iterations (ff-pointer self)))

(defmethod (setf override-num-solver-iterations) ( (overidenumiterations integer) (self typed-constraint))
  (typed-constraint/set-override-num-solver-iterations (ff-pointer self) overidenumiterations))

(defmethod build-jacobian ((self typed-constraint))
  (typed-constraint/build-jacobian (ff-pointer self)))

(defmethod setup-solver-constraint ((self typed-constraint) ca (solverbodya integer) (solverbodyb integer) (time-step number))
  (typed-constraint/setup-solver-constraint (ff-pointer self) ca solverbodya solverbodyb time-step))

(defmethod info-1 ((self typed-constraint) info)
  (typed-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-2 ((self typed-constraint) info)
  (typed-constraint/get-info-2 (ff-pointer self) info))

(defmethod internal-set-applied-impulse ((self typed-constraint) (appliedimpulse number))
  (typed-constraint/internal-set-applied-impulse (ff-pointer self) appliedimpulse))

(defmethod internal-get-applied-impulse ((self typed-constraint))
  (typed-constraint/internal-get-applied-impulse (ff-pointer self)))

(defmethod breaking-impulse-threshold ((self typed-constraint))
  (typed-constraint/get-breaking-impulse-threshold (ff-pointer self)))

(defmethod (setf breaking-impulse-threshold) ( (threshold number) (self typed-constraint))
  (typed-constraint/set-breaking-impulse-threshold (ff-pointer self) threshold))

(defmethod enabledp ((self typed-constraint))
  (typed-constraint/is-enabled (ff-pointer self)))

(defmethod (setf enabled) ( (enabled t) (self typed-constraint))
  (typed-constraint/set-enabled (ff-pointer self) enabled))

(defmethod solve-constraint-obsolete ((self typed-constraint) arg1 arg2 (arg3 number))
  (typed-constraint/solve-constraint-obsolete (ff-pointer self) arg1 arg2 arg3))

(defmethod rigid-body-a ((self typed-constraint))
  (typed-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self typed-constraint))
  (typed-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod rigid-body-a ((self typed-constraint))
  (typed-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self typed-constraint))
  (typed-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod user-constraint-type ((self typed-constraint))
  (typed-constraint/get-user-constraint-type (ff-pointer self)))

(defmethod (setf user-constraint-type) ( (userconstrainttype integer) (self typed-constraint))
  (typed-constraint/set-user-constraint-type (ff-pointer self) userconstrainttype))

(defmethod (setf user-constraint-id) ( (uid integer) (self typed-constraint))
  (typed-constraint/set-user-constraint-id (ff-pointer self) uid))

(defmethod user-constraint-id ((self typed-constraint))
  (typed-constraint/get-user-constraint-id (ff-pointer self)))

(defmethod (setf user-constraint-ptr) ( ptr (self typed-constraint))
  (typed-constraint/set-user-constraint-ptr (ff-pointer self) ptr))

(defmethod user-constraint-ptr ((self typed-constraint))
  (typed-constraint/get-user-constraint-ptr (ff-pointer self)))

(defmethod (setf joint-feedback) ( jointfeedback (self typed-constraint))
  (typed-constraint/set-joint-feedback (ff-pointer self) jointfeedback))

(defmethod joint-feedback ((self typed-constraint))
  (typed-constraint/get-joint-feedback (ff-pointer self)))

(defmethod joint-feedback ((self typed-constraint))
  (typed-constraint/get-joint-feedback (ff-pointer self)))

(defmethod uid ((self typed-constraint))
  (typed-constraint/get-uid (ff-pointer self)))

(defmethod needs-feedback ((self typed-constraint))
  (typed-constraint/needs-feedback (ff-pointer self)))

(defmethod enable-feedback ((self typed-constraint) (needsfeedback t))
  (typed-constraint/enable-feedback (ff-pointer self) needsfeedback))

(defmethod applied-impulse ((self typed-constraint))
  (typed-constraint/get-applied-impulse (ff-pointer self)))

(defmethod constraint-type ((self typed-constraint))
  (typed-constraint/get-constraint-type (ff-pointer self)))

(defmethod (setf dbg-draw-size) ( (dbgdrawsize number) (self typed-constraint))
  (typed-constraint/set-dbg-draw-size (ff-pointer self) dbgdrawsize))

(defmethod dbg-draw-size ((self typed-constraint))
  (typed-constraint/get-dbg-draw-size (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self typed-constraint))
  (typed-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self typed-constraint) &key data-buffer serializer &allow-other-keys)
  (check-type serializer serializer)
  (typed-constraint/serialize (ff-pointer self) data-buffer (ff-pointer serializer)))


(defmethod initialize-instance :after ((obj angular-limit) &key)
  (setf (slot-value obj 'ff-pointer) (make-angular-limit)))

(defmethod angular-limit-set-all ((self angular-limit) (low number) (high number) (softness number) (bias-factor number) (relaxation-factor number))
  (angular-limit/set (ff-pointer self) low high softness bias-factor relaxation-factor))

#+todo (defmethod bullet/set ((self angular-limit) (low number) (high number) (softness number) (bias-factor number))
  (angular-limit/set (ff-pointer self) low high softness bias-factor))

#+todo (defmethod bullet/set ((self angular-limit) (low number) (high number) (softness number))
  (angular-limit/set (ff-pointer self) low high softness))

#+todo (defmethod bullet/set ((self angular-limit) (low number) (high number))
  (angular-limit/set (ff-pointer self) low high))

(defmethod test ((self angular-limit) (angle number))
  (angular-limit/test (ff-pointer self) angle))

(defmethod softness ((self angular-limit))
  (angular-limit/get-softness (ff-pointer self)))

(defmethod bias-factor ((self angular-limit))
  (angular-limit/get-bias-factor (ff-pointer self)))

(defmethod relaxation-factor ((self angular-limit))
  (angular-limit/get-relaxation-factor (ff-pointer self)))

(defmethod correction ((self angular-limit))
  (angular-limit/get-correction (ff-pointer self)))

(defmethod sign ((self angular-limit))
  (angular-limit/get-sign (ff-pointer self)))

(defmethod half-range ((self angular-limit))
  (angular-limit/get-half-range (ff-pointer self)))

(defmethod limitp ((self angular-limit))
  (angular-limit/is-limit (ff-pointer self)))

(defmethod fit ((self angular-limit) angle)
  (angular-limit/fit (ff-pointer self) angle))

(defmethod bullet/error ((self angular-limit))
  (angular-limit/get-error (ff-pointer self)))

(defmethod low ((self angular-limit))
  (angular-limit/get-low (ff-pointer self)))

(defmethod high ((self angular-limit))
  (angular-limit/get-high (ff-pointer self)))


#+(or) (defmethod new ((self point->point-constraint) sizeinbytes)
        (point->point-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self point->point-constraint) ptr)
  (point->point-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self point->point-constraint) arg1 ptr)
  (point->point-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self point->point-constraint) arg1 arg2)
  (point->point-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (shadow "new[]")

#+(or) (defmethod new[] ((self point->point-constraint) sizeinbytes)
  (point->point-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (shadow "delete[]")

#+(or) (defmethod delete[] ((self point->point-constraint) ptr)
  (point->point-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or) (shadow "new[]")

#+(or) (defmethod new[] ((self point->point-constraint) arg1 ptr)
  (point->point-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (shadow "delete[]")

#+(or) (defmethod delete[] ((self point->point-constraint) arg1 arg2)
  (point->point-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod (setf use-solve-constraint-obsolete) ( (obj point->point-constraint) arg0)
  (point->point-constraint/use-solve-constraint-obsolete/set (ff-pointer obj) arg0))

(defmethod use-solve-constraint-obsolete ((obj point->point-constraint))
  (point->point-constraint/use-solve-constraint-obsolete/get (ff-pointer obj)))

(defmethod (setf setting) ( (obj point->point-constraint) arg0)
  (point->point-constraint/setting/set (ff-pointer obj) arg0))

(defmethod setting ((obj point->point-constraint))
  (point->point-constraint/setting/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj point->point-constraint) 
                                       &key rigid-body-a rigid-body-b
                                         pivot-in-a pivot-in-b)
  (check-type rigid-body-a rigid-body) 
  (check-type pivot-in-a vector3)
  (setf (slot-value obj 'ff-pointer)
        (cond
          ((or rigid-body-b pivot-in-b)
           (check-type rigid-body-b rigid-body)
           (check-type pivot-in-b vector3)
           (make-point->point-constraint (ff-pointer rigid-body-a)
                                         (ff-pointer rigid-body-b)
                                         (ff-pointer pivot-in-a) 
                                         (ff-pointer pivot-in-b)))
          (t (make-point->point-constraint/with-rigid-body-a&pivot-in-a 
              rigid-body-a pivot-in-a)))))

(defmethod build-jacobian ((self point->point-constraint))
  (point->point-constraint/build-jacobian (ff-pointer self)))

(defmethod info-1 ((self point->point-constraint) info)
  (point->point-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-1-non-virtual ((self point->point-constraint) info)
  (point->point-constraint/get-info-1-non-virtual (ff-pointer self) info))

(defmethod info-2 ((self point->point-constraint) info)
  (point->point-constraint/get-info-2 (ff-pointer self) info))

(defmethod info-2-non-virtual/point->point ((self point->point-constraint) info (body0_trans transform) (body1_trans transform))
  (point->point-constraint/get-info-2-non-virtual (ff-pointer self) info body0_trans body1_trans))

(defmethod update-rhs ((self point->point-constraint) (time-step number))
  (point->point-constraint/update-rhs (ff-pointer self) time-step))

(defmethod (setf pivot-a) ( (pivota vector3) (self point->point-constraint))
  (point->point-constraint/set-pivot-a (ff-pointer self) pivota))

(defmethod (setf pivot-b) ( (pivotb vector3) (self point->point-constraint))
  (point->point-constraint/set-pivot-b (ff-pointer self) pivotb))

(defmethod pivot-in-a ((self point->point-constraint))
  (point->point-constraint/get-pivot-in-a (ff-pointer self)))

(defmethod pivot-in-b ((self point->point-constraint))
  (point->point-constraint/get-pivot-in-b (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self point->point-constraint))
  (point->point-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self point->point-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (point->point-constraint/serialize (ff-pointer self) data-buffer
                                       (ff-pointer serializer)))


#+(or) (defmethod new ((self hinge-constraint) sizeinbytes)
  (hinge-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self hinge-constraint) ptr)
  (hinge-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self hinge-constraint) arg1 ptr)
  (hinge-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self hinge-constraint) arg1 arg2)
  (hinge-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (shadow "new[]")

#+(or) (defmethod new[] ((self hinge-constraint) sizeinbytes)
  (hinge-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (shadow "delete[]")

#+(or) (defmethod delete[] ((self hinge-constraint) ptr)
  (hinge-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or) (shadow "new[]")

#+(or) (defmethod new[] ((self hinge-constraint) arg1 ptr)
  (hinge-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (shadow "delete[]")

#+(or) (defmethod delete[] ((self hinge-constraint) arg1 arg2)
           (hinge-constraint/delete-c++-array (ff-pointer self) arg1 arg2))


(defmethod initialize-instance :after ((obj hinge-constraint) 
                                       &key 
                                         rigid-body-a rigid-body-b
                                         pivot-in-a pivot-in-b
                                         axis-in-a axis-in-b
                                         rigid-body-a-frame rigid-body-b-frame
                                         (use-reference-frame-a-p nil use-a?))
  (when axis-in-a
    (check-type rigid-body-a rigid-body)
   (check-type pivot-in-a vector3) 
   (check-type axis-in-a vector3))
  (when axis-in-b
   (check-type rigid-body-b rigid-body) 
   (check-type pivot-in-b vector3)
   (check-type axis-in-b vector3))
  (check-type rigid-body-a-frame (or null transform)) 
  (check-type rigid-body-b-frame (or null transform))
  (setf (slot-value obj 'ff-pointer) 
        (cond
          ((and use-a? axis-in-b)
           (make-hinge-constraint/with-a&b&use-a rigid-body-a rigid-body-b
                                                               pivot-in-a pivot-in-b
                                                               axis-in-a axis-in-b 
                                                               use-reference-frame-a-p))
           ((and axis-in-b)
            (make-hinge-constraint/with-a&b rigid-body-a rigid-body-b 
                                          pivot-in-a pivot-in-b
                                          axis-in-a axis-in-b))
           ((and use-a? rigid-body-b-frame rigid-body-a-frame)
            (make-hinge-constraint/with-frame-a&b&use-a
             rigid-body-a rigid-body-b
             rigid-body-a-frame rigid-body-b-frame
             use-reference-frame-a-p))
           ((and rigid-body-b-frame rigid-body-a-frame)
            (make-hinge-constraint/with-frame-a&b rigid-body-a rigid-body-b
                                                  rigid-body-a-frame rigid-body-b-frame))
           ((and use-a? rigid-body-a-frame)
            (make-hinge-constraint/with-frame-a&use-a
             rigid-body-a rigid-body-a-frame 
             use-reference-frame-a-p))
           (rigid-body-a-frame
            (make-hinge-constraint/with-frame-a
             rigid-body-a rigid-body-a-frame))
           (use-a?
            (make-hinge-constraint/with-use-a rigid-body-a 
                                              pivot-in-a 
                                              axis-in-a
                                              use-reference-frame-a-p))
           (t (make-hinge-constraint rigid-body-a pivot-in-a axis-in-a)))))


(defmethod build-jacobian ((self hinge-constraint))
  (hinge-constraint/build-jacobian (ff-pointer self)))

(defmethod info-1 ((self hinge-constraint) info)
  (hinge-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-1-non-virtual ((self hinge-constraint) info)
  (hinge-constraint/get-info-1-non-virtual (ff-pointer self) info))

(defmethod info-2 ((self hinge-constraint) info)
  (hinge-constraint/get-info-2 (ff-pointer self) info))

(defmethod info-2-non-virtual-with-angles
    ((self hinge-constraint) info (transa transform) (transb transform) (angvela vector3) (angvelb vector3))
  (hinge-constraint/get-info-2-non-virtual (ff-pointer self) info transa transb angvela angvelb))

(defmethod info-2-internal ((self hinge-constraint) info (transa transform) (transb transform) (angvela vector3) (angvelb vector3))
  (hinge-constraint/get-info-2-internal (ff-pointer self) info transa transb angvela angvelb))

(defmethod info-2-internal-using-frame-offset ((self hinge-constraint) info (transa transform) (transb transform) (angvela vector3) (angvelb vector3))
  (hinge-constraint/get-info-2-internal-using-frame-offset (ff-pointer self) info transa transb angvela angvelb))

(defmethod update-rhs ((self hinge-constraint) (time-step number))
  (hinge-constraint/update-rhs (ff-pointer self) time-step))

(defmethod rigid-body-a ((self hinge-constraint))
  (hinge-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self hinge-constraint))
  (hinge-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod rigid-body-a ((self hinge-constraint))
  (hinge-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self hinge-constraint))
  (hinge-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod frame-offset-a ((self hinge-constraint))
  (hinge-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self hinge-constraint))
  (hinge-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod (setf frames) ((framea transform) (frameb transform)
                          (self hinge-constraint))
  (hinge-constraint/set-frames (ff-pointer self) framea frameb))

(defmethod (setf angular-only) ( (angularonly t) (self hinge-constraint))
  (hinge-constraint/set-angular-only (ff-pointer self) angularonly))

(defmethod enable-angular-motor ((self hinge-constraint) (enablemotor t) (targetvelocity number) (maxmotorimpulse number))
  (hinge-constraint/enable-angular-motor (ff-pointer self) enablemotor targetvelocity maxmotorimpulse))

(defmethod (setf motor-enabled-p) ( (enablemotor t) (self hinge-constraint))
  (hinge-constraint/enable-motor (ff-pointer self) enablemotor))

(defmethod (setf max-motor-impulse) ( (maxmotorimpulse number) (self hinge-constraint))
  (hinge-constraint/set-max-motor-impulse (ff-pointer self) maxmotorimpulse))

(defmethod (setf motor-target) ( (qainb quaternion) (self hinge-constraint) (dt number))
  (hinge-constraint/set-motor-target (ff-pointer self) qainb dt))

(defmethod (setf motor-target) ( (targetangle number) (self hinge-constraint) (dt number))
  (hinge-constraint/set-motor-target (ff-pointer self) targetangle dt))

(defmethod (setf limits+softness+bias+relaxation)
    ((self hinge-constraint) (low number) (high number)
     (softness number) (bias-factor number) (relaxation-factor number))
  (hinge-constraint/set-limit/with-softness&bias&relaxation
   (ff-pointer self) low high softness bias-factor relaxation-factor))

(defmethod (setf limits+softness+bias)
    ((self hinge-constraint) (low number) (high number) (softness number) (bias-factor number))
  (hinge-constraint/set-limit/with-softness&bias (ff-pointer self)
                                                 low high softness bias-factor))

(defmethod (setf limits+softness) ((self hinge-constraint) (low number) (high number)
                                   (softness number))
  (hinge-constraint/set-limit/with-softness (ff-pointer self) low high softness))

(defmethod (setf limits) ((self hinge-constraint) (low number) (high number))
  (hinge-constraint/set-limit (ff-pointer self) low high))

(defmethod (setf axis) ( (axis-in-a vector3) (self hinge-constraint))
  (hinge-constraint/set-axis (ff-pointer self) axis-in-a))

(defmethod lower-limit ((self hinge-constraint))
  (hinge-constraint/get-lower-limit (ff-pointer self)))

(defmethod upper-limit ((self hinge-constraint))
  (hinge-constraint/get-upper-limit (ff-pointer self)))

(defmethod hinge-angle ((self hinge-constraint) &optional trans-a trans-b)
  (if trans-a
      (progn
        (check-type trans-a transform)
        (check-type trans-b transform)
        (hinge-constraint/get-hinge-angle/with-trans-a&b (ff-pointer self) trans-a trans-b))
      (hinge-constraint/get-hinge-angle (ff-pointer self))))

(defmethod test-limit ((self hinge-constraint) (transa transform) (transb transform))
  (hinge-constraint/test-limit (ff-pointer self) transa transb))

(defmethod aframe ((self hinge-constraint))
  (hinge-constraint/get-aframe (ff-pointer self)))

(defmethod bframe ((self hinge-constraint))
  (hinge-constraint/get-bframe (ff-pointer self)))

(defmethod aframe ((self hinge-constraint))
  (hinge-constraint/get-aframe (ff-pointer self)))

(defmethod bframe ((self hinge-constraint))
  (hinge-constraint/get-bframe (ff-pointer self)))

(defmethod solve-limit ((self hinge-constraint))
  (hinge-constraint/get-solve-limit (ff-pointer self)))

(defmethod limit-sign ((self hinge-constraint))
  (hinge-constraint/get-limit-sign (ff-pointer self)))

(defmethod angular-only ((self hinge-constraint))
  (hinge-constraint/get-angular-only (ff-pointer self)))

(defmethod angular-motor-enabled-p ((self hinge-constraint))
  (hinge-constraint/get-enable-angular-motor (ff-pointer self)))

(defmethod motor-target-velosity ((self hinge-constraint))
  (hinge-constraint/get-motor-target-velosity (ff-pointer self)))

(defmethod max-motor-impulse ((self hinge-constraint))
  (hinge-constraint/get-max-motor-impulse (ff-pointer self)))

(defmethod use-frame-offset ((self hinge-constraint))
  (hinge-constraint/get-use-frame-offset (ff-pointer self)))

(defmethod (setf use-frame-offset) ( (frameoffsetonoff t) (self hinge-constraint))
  (hinge-constraint/set-use-frame-offset (ff-pointer self) frameoffsetonoff))

(defmethod calculate-serialize-buffer-size ((self hinge-constraint))
  (hinge-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self hinge-constraint) &key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (hinge-constraint/serialize (ff-pointer self) data-buffer (ff-pointer serializer)))


#+(or) (defmethod new ((self cone-twist-constraint) sizeinbytes)
  (cone-twist-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self cone-twist-constraint) ptr)
  (cone-twist-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self cone-twist-constraint) arg1 ptr)
        (cone-twist-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self cone-twist-constraint) arg1 arg2)
  (cone-twist-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or)(shadow "new[]")

#+(or)#+(or) (defmethod new[] ((self cone-twist-constraint) sizeinbytes)
  (cone-twist-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or)(shadow "delete[]")

#+(or) (defmethod delete[] ((self cone-twist-constraint) ptr)
  (cone-twist-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or)(shadow "new[]")

#+(or)#+(or) (defmethod new[] ((self cone-twist-constraint) arg1 ptr)
  (cone-twist-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or)(shadow "delete[]")

#+(or) (defmethod delete[] ((self cone-twist-constraint) arg1 arg2)
  (cone-twist-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj cone-twist-constraint)
                                       &key rigid-body-a rigid-body-b
                                         rigid-body-a-frame rigid-body-b-frame)
  (check-type rigid-body-a rigid-body)
  (check-type rigid-body-a-frame transform)
  (setf (slot-value obj 'ff-pointer) 
        (cond
          (rigid-body-b
           (check-type rigid-body-b rigid-body)
           (check-type rigid-body-b-frame transform)
           (make-cone-twist-constraint/with-b (ff-pointer rigid-body-a)
                                              (ff-pointer rigid-body-b) 
                                              (ff-pointer rigid-body-a-frame)
                                              (ff-pointer rigid-body-b-frame)))
          (t (make-cone-twist-constraint (ff-pointer rigid-body-a) 
                                         (ff-pointer rigid-body-a-frame))))))

(defmethod build-jacobian ((self cone-twist-constraint))
  (cone-twist-constraint/build-jacobian (ff-pointer self)))

(defmethod info-1 ((self cone-twist-constraint) info)
  (cone-twist-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-1-non-virtual ((self cone-twist-constraint) info)
  (cone-twist-constraint/get-info-1-non-virtual (ff-pointer self) info))

(defmethod info-2 ((self cone-twist-constraint) info)
  (cone-twist-constraint/get-info-2 (ff-pointer self) info))

(defmethod info-2-non-virtual-conic ((self cone-twist-constraint) info
                               (transa transform) (transb transform)
                               (invinertiaworlda matrix-3x3)
                               (invinertiaworldb matrix-3x3))
  (cone-twist-constraint/get-info-2-non-virtual (ff-pointer self) info transa transb invinertiaworlda invinertiaworldb))

(defmethod solve-constraint-obsolete ((self cone-twist-constraint)
                                      bodya bodyb (time-step number))
  (cone-twist-constraint/solve-constraint-obsolete (ff-pointer self) bodya bodyb time-step))

(defmethod update-rhs ((self cone-twist-constraint) (time-step number))
  (cone-twist-constraint/update-rhs (ff-pointer self) time-step))

(defmethod rigid-body-a ((self cone-twist-constraint))
  (cone-twist-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self cone-twist-constraint))
  (cone-twist-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod (setf angular-only-p) ( (angularonly t) (self cone-twist-constraint))
  (cone-twist-constraint/set-angular-only (ff-pointer self) angularonly))

(defmethod (setf limit-elt) ((limit-value number)
                             (self cone-twist-constraint) (limit-index integer))
  (cone-twist-constraint/set-limit/elt (ff-pointer self) limit-index limit-value))

(defmethod (setf cone-twist-limits) ((self cone-twist-constraint)
                          (swing-span-1 number)  (swing-span-2 number)
                          (twist-span number) (softness number)
                          (bias-factor number) (relaxation-factor number))
  (cone-twist-constraint/set-limit/with-swing&twist&softness&bias&relaxation
   (ff-pointer self) swing-span-1 swing-span-2
   twist-span softness bias-factor relaxation-factor))

(defmethod (setf cone-twist-limits) ((self cone-twist-constraint)
                          (swing-span-1 number)  (swing-span-2 number)
                          (twist-span number) (softness number)
                          (bias-factor number) (relax null))
  (cone-twist-constraint/set-limit/with-swing&twist&softness&bias
   (ff-pointer self) swing-span-1 swing-span-2
                                   twist-span softness bias-factor))

(defmethod (setf cone-twist-limits) ((self cone-twist-constraint)
                          (swing-span-1 number) (swing-span-2 number) 
                          (twist-span number) (softness number)
                                     (bias-factor null) (relaxation-factor null))
  (cone-twist-constraint/set-limit/with-swing&twist&softness
   (ff-pointer self) swing-span-1 swing-span-2 twist-span softness))

(defmethod (setf cone-twist-limits) ((self cone-twist-constraint)
                          (swing-span-1 number)  (swing-span-2 number) (twist-span number)
                                     (softness null) (bias-factor null) (relaxation-factor null))
  (cone-twist-constraint/set-limit/with-swing&twist
   (ff-pointer self) swing-span-1 swing-span-2 twist-span))

(defmethod aframe ((self cone-twist-constraint))
  (cone-twist-constraint/get-aframe (ff-pointer self)))

(defmethod bframe ((self cone-twist-constraint))
  (cone-twist-constraint/get-bframe (ff-pointer self)))

(defmethod solve-twist-limit ((self cone-twist-constraint))
  (cone-twist-constraint/get-solve-twist-limit (ff-pointer self)))

(defmethod solve-swing-limit ((self cone-twist-constraint))
  (cone-twist-constraint/get-solve-swing-limit (ff-pointer self)))

(defmethod twist-limit-sign ((self cone-twist-constraint))
  (cone-twist-constraint/get-twist-limit-sign (ff-pointer self)))

(defmethod calc-angle-info ((self cone-twist-constraint))
  (cone-twist-constraint/calc-angle-info (ff-pointer self)))

(defmethod calc-angle-info-2 ((self cone-twist-constraint) (transa transform) (transb transform) (invinertiaworlda matrix-3x3) (invinertiaworldb matrix-3x3))
  (cone-twist-constraint/calc-angle-info-2 (ff-pointer self) transa transb invinertiaworlda invinertiaworldb))

(defmethod swing-span-1 ((self cone-twist-constraint))
  (cone-twist-constraint/get-swing-span-1 (ff-pointer self)))

(defmethod swing-span-2 ((self cone-twist-constraint))
  (cone-twist-constraint/get-swing-span-2 (ff-pointer self)))

(defmethod twist-span ((self cone-twist-constraint))
  (cone-twist-constraint/get-twist-span (ff-pointer self)))

(defmethod twist-angle ((self cone-twist-constraint))
  (cone-twist-constraint/get-twist-angle (ff-pointer self)))

(defmethod past-swing-limit-p ((self cone-twist-constraint))
  (cone-twist-constraint/is-past-swing-limit (ff-pointer self)))

(defmethod (setf damping) ( (damping number) (self cone-twist-constraint))
  (cone-twist-constraint/set-damping (ff-pointer self) damping))

(defmethod (setf motor-enabled-p) ( (b t) (self cone-twist-constraint))
  (cone-twist-constraint/enable-motor (ff-pointer self) b))

(defmethod (setf max-motor-impulse) ( (maxmotorimpulse number) (self cone-twist-constraint))
  (cone-twist-constraint/set-max-motor-impulse (ff-pointer self) maxmotorimpulse))

(defmethod (setf max-motor-impulse-normalized) ( (maxmotorimpulse number) (self cone-twist-constraint))
  (cone-twist-constraint/set-max-motor-impulse-normalized (ff-pointer self) maxmotorimpulse))

(defmethod fix-thresh ((self cone-twist-constraint))
  (cone-twist-constraint/get-fix-thresh (ff-pointer self)))

(defmethod (setf fix-thresh) ( (fixthresh number) (self cone-twist-constraint))
  (cone-twist-constraint/set-fix-thresh (ff-pointer self) fixthresh))

(defmethod (setf cone-motor-target) ( (q quaternion) (self cone-twist-constraint))
  (cone-twist-constraint/set-motor-target (ff-pointer self) q))

(defmethod (setf motor-target-in-constraint-space) ( (q quaternion) (self cone-twist-constraint))
  (cone-twist-constraint/set-motor-target-in-constraint-space (ff-pointer self) q))

(defmethod point-for-angle ((self cone-twist-constraint) (fangleinradians number) (flength number))
  (cone-twist-constraint/get-point-for-angle (ff-pointer self) fangleinradians flength))

(defmethod frame-offset-a ((self cone-twist-constraint))
  (cone-twist-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self cone-twist-constraint))
  (cone-twist-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self cone-twist-constraint))
  (cone-twist-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self cone-twist-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (cone-twist-constraint/serialize (ff-pointer self) data-buffer 
                                     (ff-pointer serializer)))


(defmethod (setf lo-limit) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/lo-limit/set (ff-pointer obj) arg0))

(defmethod lo-limit ((obj rotational-limit-motor))
  (rotational-limit-motor/lo-limit/get (ff-pointer obj)))

(defmethod (setf hi-limit) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/hi-limit/set (ff-pointer obj) arg0))

(defmethod hi-limit ((obj rotational-limit-motor))
  (rotational-limit-motor/hi-limit/get (ff-pointer obj)))

(defmethod (setf target-velocity) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/target-velocity/set (ff-pointer obj) arg0))

(defmethod target-velocity ((obj rotational-limit-motor))
  (rotational-limit-motor/target-velocity/get (ff-pointer obj)))

(defmethod (setf max-motor-force) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/max-motor-force/set (ff-pointer obj) arg0))

(defmethod max-motor-force ((obj rotational-limit-motor))
  (rotational-limit-motor/max-motor-force/get (ff-pointer obj)))

(defmethod (setf max-limit-force) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/max-limit-force/set (ff-pointer obj) arg0))

(defmethod max-limit-force ((obj rotational-limit-motor))
  (rotational-limit-motor/max-limit-force/get (ff-pointer obj)))

(defmethod (setf damping) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/damping/set (ff-pointer obj) arg0))

(defmethod damping ((obj rotational-limit-motor))
  (rotational-limit-motor/damping/get (ff-pointer obj)))

(defmethod (setf limit-softness) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/limit-softness/set (ff-pointer obj) arg0))

(defmethod limit-softness ((obj rotational-limit-motor))
  (rotational-limit-motor/limit-softness/get (ff-pointer obj)))

(defmethod (setf normal-cfm) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/normal-cfm/set (ff-pointer obj) arg0))

(defmethod normal-cfm ((obj rotational-limit-motor))
  (rotational-limit-motor/normal-cfm/get (ff-pointer obj)))

(defmethod (setf stop-erp) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/stop-erp/set (ff-pointer obj) arg0))

(defmethod stop-erp ((obj rotational-limit-motor))
  (rotational-limit-motor/stop-erp/get (ff-pointer obj)))

(defmethod (setf stop-cfm) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/stop-cfm/set (ff-pointer obj) arg0))

(defmethod stop-cfm ((obj rotational-limit-motor))
  (rotational-limit-motor/stop-cfm/get (ff-pointer obj)))

(defmethod (setf bounce) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/bounce/set (ff-pointer obj) arg0))

(defmethod bounce ((obj rotational-limit-motor))
  (rotational-limit-motor/bounce/get (ff-pointer obj)))

(defmethod (setf motor-enabled-p) (arg0 (obj rotational-limit-motor))
  (rotational-limit-motor/enable-motor/set (ff-pointer obj) arg0))

(defmethod motor-enabled-p ((obj rotational-limit-motor))
  (rotational-limit-motor/enable-motor/get (ff-pointer obj)))

(defmethod (setf current-limit-error) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/current-limit-error/set (ff-pointer obj) arg0))

(defmethod current-limit-error ((obj rotational-limit-motor))
  (rotational-limit-motor/current-limit-error/get (ff-pointer obj)))

(defmethod (setf current-position) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/current-position/set (ff-pointer obj) arg0))

(defmethod current-position ((obj rotational-limit-motor))
  (rotational-limit-motor/current-position/get (ff-pointer obj)))

(defmethod (setf current-limit) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/current-limit/set (ff-pointer obj) arg0))

(defmethod current-limit ((obj rotational-limit-motor))
  (rotational-limit-motor/current-limit/get (ff-pointer obj)))

(defmethod (setf accumulated-impulse) ( (obj rotational-limit-motor) arg0)
  (rotational-limit-motor/accumulated-impulse/set (ff-pointer obj) arg0))

(defmethod accumulated-impulse ((obj rotational-limit-motor))
  (rotational-limit-motor/accumulated-impulse/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj rotational-limit-motor) &key)
  (setf (slot-value obj 'ff-pointer) (make-rotational-limit-motor)))

(defmethod initialize-instance :after ((obj rotational-limit-motor) 
                                       &key limot)
  (check-type limot rotational-limit-motor)
  (setf (slot-value obj 'ff-pointer) 
        (make-rotational-limit-motor/with-limot (ff-pointer limot))))

(defmethod limitedp ((self rotational-limit-motor))
  (rotational-limit-motor/is-limited (ff-pointer self)))

(defmethod need-apply-torques ((self rotational-limit-motor))
  (rotational-limit-motor/need-apply-torques (ff-pointer self)))

(defmethod test-limit-value ((self rotational-limit-motor) (test_value number))
  (rotational-limit-motor/test-limit-value (ff-pointer self) test_value))

(defmethod solve-angular-limits ((self rotational-limit-motor) (time-step number) (axis vector3) (jacdiagabinv number) (body0 rigid-body) (body1 rigid-body))
  (rotational-limit-motor/solve-angular-limits (ff-pointer self) time-step axis jacdiagabinv body0 body1))


(defmethod (setf lower-limit) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/lower-limit/set (ff-pointer obj) arg0))

(defmethod lower-limit ((obj translational-limit-motor))
  (translational-limit-motor/lower-limit/get (ff-pointer obj)))

(defmethod (setf upper-limit) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/upper-limit/set (ff-pointer obj) arg0))

(defmethod upper-limit ((obj translational-limit-motor))
  (translational-limit-motor/upper-limit/get (ff-pointer obj)))

(defmethod (setf accumulated-impulse) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/accumulated-impulse/set (ff-pointer obj) arg0))

(defmethod accumulated-impulse ((obj translational-limit-motor))
  (translational-limit-motor/accumulated-impulse/get (ff-pointer obj)))

(defmethod (setf limit-softness) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/limit-softness/set (ff-pointer obj) arg0))

(defmethod limit-softness ((obj translational-limit-motor))
  (translational-limit-motor/limit-softness/get (ff-pointer obj)))

(defmethod (setf damping) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/damping/set (ff-pointer obj) arg0))

(defmethod damping ((obj translational-limit-motor))
  (translational-limit-motor/damping/get (ff-pointer obj)))

(defmethod (setf restitution) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/restitution/set (ff-pointer obj) arg0))

(defmethod restitution ((obj translational-limit-motor))
  (translational-limit-motor/restitution/get (ff-pointer obj)))

(defmethod (setf normal-cfm) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/normal-cfm/set (ff-pointer obj) arg0))

(defmethod normal-cfm ((obj translational-limit-motor))
  (translational-limit-motor/normal-cfm/get (ff-pointer obj)))

(defmethod (setf stop-erp) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/stop-erp/set (ff-pointer obj) arg0))

(defmethod stop-erp ((obj translational-limit-motor))
  (translational-limit-motor/stop-erp/get (ff-pointer obj)))

(defmethod (setf stop-cfm) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/stop-cfm/set (ff-pointer obj) arg0))

(defmethod stop-cfm ((obj translational-limit-motor))
  (translational-limit-motor/stop-cfm/get (ff-pointer obj)))

(defmethod (setf motor-enabled-p) ( arg0 (obj translational-limit-motor) )
  (translational-limit-motor/enable-motor/set (ff-pointer obj) arg0))

(defmethod motor-enabled-p ((obj translational-limit-motor))
  (translational-limit-motor/enable-motor/get (ff-pointer obj)))

(defmethod (setf target-velocity) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/target-velocity/set (ff-pointer obj) arg0))

(defmethod target-velocity ((obj translational-limit-motor))
  (translational-limit-motor/target-velocity/get (ff-pointer obj)))

(defmethod (setf max-motor-force) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/max-motor-force/set (ff-pointer obj) arg0))

(defmethod max-motor-force ((obj translational-limit-motor))
  (translational-limit-motor/max-motor-force/get (ff-pointer obj)))

(defmethod (setf current-limit-error) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/current-limit-error/set (ff-pointer obj) arg0))

(defmethod current-limit-error ((obj translational-limit-motor))
  (translational-limit-motor/current-limit-error/get (ff-pointer obj)))

(defmethod (setf current-linear-diff) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/current-linear-diff/set (ff-pointer obj) arg0))

(defmethod current-linear-diff ((obj translational-limit-motor))
  (translational-limit-motor/current-linear-diff/get (ff-pointer obj)))

(defmethod (setf current-limit) ( (obj translational-limit-motor) arg0)
  (translational-limit-motor/current-limit/set (ff-pointer obj) arg0))

(defmethod current-limit ((obj translational-limit-motor))
  (translational-limit-motor/current-limit/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj translational-limit-motor) 
                                       &key other)
  (check-type other (or null translational-limit-motor))
  (setf (slot-value obj 'ff-pointer) 
        (if other 
         (make-translational-limit-motor/with-other (ff-pointer other))
         (make-translational-limit-motor))))

(defmethod elt-limited-p ((self translational-limit-motor) (limitindex integer))
  (translational-limit-motor/is-limited (ff-pointer self) limitindex))

(defmethod need-apply-force ((self translational-limit-motor) (limitindex integer))
  (translational-limit-motor/need-apply-force (ff-pointer self) limitindex))

(defmethod test-elt-limit-value ((self translational-limit-motor) (limitindex integer) (test_value number))
  (translational-limit-motor/test-limit-value (ff-pointer self) limitindex test_value))

(defmethod solve-linear-axis ((self translational-limit-motor) (time-step number) (jacdiagabinv number) (body1 rigid-body) (pointina vector3) (body2 rigid-body) (pointinb vector3) (limit_index integer) (axis_normal_on_a vector3) (anchorpos vector3))
  (translational-limit-motor/solve-linear-axis (ff-pointer self) time-step jacdiagabinv body1 pointina body2 pointinb limit_index axis_normal_on_a anchorpos))


#+(or) (defmethod new ((self generic-6-dof-constraint) sizeinbytes)
  (generic-6-dof-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self generic-6-dof-constraint) ptr)
  (generic-6-dof-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self generic-6-dof-constraint) arg1 ptr)
        (generic-6-dof-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self generic-6-dof-constraint) arg1 arg2)
  (generic-6-dof-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or)(shadow "new[]")

#+(or)#+(or) (defmethod new[] ((self generic-6-dof-constraint) sizeinbytes)
  (generic-6-dof-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or)(shadow "delete[]")

#+(or) (defmethod delete[] ((self generic-6-dof-constraint) ptr)
  (generic-6-dof-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or)(shadow "new[]")

#+(or)#+(or) (defmethod new[] ((self generic-6-dof-constraint) arg1 ptr)
  (generic-6-dof-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or)(shadow "delete[]")

#+(or) (defmethod delete[] ((self generic-6-dof-constraint) arg1 arg2)
  (generic-6-dof-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod (setf use-solve-constraint-obsolete) ( (obj generic-6-dof-constraint) arg0)
  (generic-6-dof-constraint/use-solve-constraint-obsolete/set (ff-pointer obj) arg0))

(defmethod use-solve-constraint-obsolete ((obj generic-6-dof-constraint))
  (generic-6-dof-constraint/use-solve-constraint-obsolete/get (ff-pointer obj)))

(defmethod initialize-instance :after ((obj generic-6-dof-constraint)
                                       &key
                                         rigid-body-a rigid-body-b
                                         frame-in-a frame-in-b
                                         (use-linear-reference-frame-a-p nil use-a?)
                                         (use-linear-reference-frame-b-p nil use-b?))
  (check-type rigid-body-b rigid-body) 
  (check-type frame-in-b transform)
  (setf (slot-value obj 'ff-pointer)
        (cond
          (use-a?
           (check-type rigid-body-a rigid-body) 
           (check-type frame-in-a transform) 
           (make-generic-6-dof-constraint (ff-pointer rigid-body-a) 
                                          (ff-pointer rigid-body-b) 
                                          (ff-pointer frame-in-a) 
                                          (ff-pointer frame-in-b)
                                          use-linear-reference-frame-a-p))
          (use-b?
           (make-generic-6-dof-constraint/with-linear-reference-frame-b
            (ff-pointer rigid-body-b) (ff-pointer frame-in-b)
            use-linear-reference-frame-b-p))
          (t (error 'foo)))))

(defmethod calculate-transforms/a+b ((self generic-6-dof-constraint) (transa transform) (transb transform))
  (generic-6-dof-constraint/calculate-transforms (ff-pointer self) transa transb))

(defmethod calculate-transforms ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/calculate-transforms/naked (ff-pointer self)))

(defmethod calculated-transform-a ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-calculated-transform-a (ff-pointer self)))

(defmethod calculated-transform-b ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-calculated-transform-b (ff-pointer self)))

(defmethod frame-offset-a ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod frame-offset-a ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod build-jacobian ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/build-jacobian (ff-pointer self)))

(defmethod info-1 ((self generic-6-dof-constraint) info)
  (generic-6-dof-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-1-non-virtual ((self generic-6-dof-constraint) info)
  (generic-6-dof-constraint/get-info-1-non-virtual (ff-pointer self) info))

(defmethod info-2 ((self generic-6-dof-constraint) info)
  (generic-6-dof-constraint/get-info-2 (ff-pointer self) info))

(defmethod info-2-non-virtual-generic-6-dof ((self generic-6-dof-constraint) info
                               (transa transform) (transb transform)
                               (linear-velocity-a vector3) (linear-velocity-b vector3)
                               (angvela vector3) (angvelb vector3))
  (generic-6-dof-constraint/get-info-2-non-virtual (ff-pointer self) info transa transb linear-velocity-a linear-velocity-b angvela angvelb))

(defmethod update-rhs ((self generic-6-dof-constraint) (time-step number))
  (generic-6-dof-constraint/update-rhs (ff-pointer self) time-step))

(defmethod axis-elt ((self generic-6-dof-constraint) (axis_index integer))
  (generic-6-dof-constraint/get-axis (ff-pointer self) axis_index))

(defmethod angle-elt ((self generic-6-dof-constraint) (axis_index integer))
  (generic-6-dof-constraint/get-angle (ff-pointer self) axis_index))

(defmethod relative-pivot-position ((self generic-6-dof-constraint) (axis_index integer))
  (generic-6-dof-constraint/get-relative-pivot-position (ff-pointer self) axis_index))

(defmethod (setf frames) ((framea transform) (self generic-6-dof-constraint) (frameb transform))
  (generic-6-dof-constraint/set-frames (ff-pointer self) framea frameb))

(defmethod test-angular-limit-motor ((self generic-6-dof-constraint) (axis_index integer))
  (generic-6-dof-constraint/test-angular-limit-motor (ff-pointer self) axis_index))

(defmethod (setf linear-lower-limit) ((linearlower vector3) (self generic-6-dof-constraint))
  (generic-6-dof-constraint/set-linear-lower-limit (ff-pointer self) linearlower))

(defmethod linear-lower-limit ((self generic-6-dof-constraint))
  (cffi:with-foreign-object (linear-lower vector3)
    (generic-6-dof-constraint/get-linear-lower-limit (ff-pointer self) linear-lower)
    linear-lower))

(defmethod (setf linear-upper-limit) ( (linearupper vector3) (self generic-6-dof-constraint))
  (generic-6-dof-constraint/set-linear-upper-limit (ff-pointer self) linearupper))

(defmethod linear-upper-limit ((self generic-6-dof-constraint))
  (cffi:with-foreign-object (linear-upper vector3)
    (generic-6-dof-constraint/get-linear-upper-limit (ff-pointer self) linear-upper)
    linear-upper))

(defmethod (setf angular-lower-limit) ( (angularlower vector3) (self generic-6-dof-constraint))
  (generic-6-dof-constraint/set-angular-lower-limit (ff-pointer self) angularlower))

(defmethod angular-lower-limit ((self generic-6-dof-constraint))
  (cffi:with-foreign-object (angularlower vector3)
    (generic-6-dof-constraint/get-angular-lower-limit (ff-pointer self) angularlower)
    angularlower))

(defmethod (setf angular-upper-limit) ( (angularupper vector3) (self generic-6-dof-constraint))
  (generic-6-dof-constraint/set-angular-upper-limit (ff-pointer self) angularupper))

(defmethod angular-upper-limit ((self generic-6-dof-constraint))
  (cffi:with-foreign-object  (angularupper vector3)
    (generic-6-dof-constraint/get-angular-upper-limit (ff-pointer self) angularupper)
    angularupper))

(defmethod rotational-limit-motor ((self generic-6-dof-constraint) (index integer))
  (generic-6-dof-constraint/get-rotational-limit-motor (ff-pointer self) index))

(defmethod translational-limit-motor ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-translational-limit-motor (ff-pointer self)))

(defmethod (setf limit) ( (axis integer) (self generic-6-dof-constraint) (lo number) (hi number))
  (generic-6-dof-constraint/set-limit (ff-pointer self) axis lo hi))

(defmethod elt-limited-p ((self generic-6-dof-constraint) (limitindex integer))
  (generic-6-dof-constraint/is-limited (ff-pointer self) limitindex))

(defmethod calc-anchor-pos ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/calc-anchor-pos (ff-pointer self)))

(defmethod limit-motor-info-2+ ((self generic-6-dof-constraint) (limot rotational-limit-motor) (transa transform) (transb transform) (linear-velocity-a vector3) (linear-velocity-b vector3) (angvela vector3) (angvelb vector3) info (row integer) (ax1 vector3) (rotational integer) (rotallowed integer))
  (generic-6-dof-constraint/get/limit/motor/info-2 (ff-pointer self) limot transa transb linear-velocity-a linear-velocity-b angvela angvelb info row ax1 rotational rotallowed))

(defmethod limit-motor-info-2 ((self generic-6-dof-constraint) (limot rotational-limit-motor) (transa transform) (transb transform) (linear-velocity-a vector3) (linear-velocity-b vector3) (angvela vector3) (angvelb vector3) info (row integer) (ax1 vector3) (rotational integer))
  (generic-6-dof-constraint/get/limit/motor/info-2 (ff-pointer self) limot transa transb linear-velocity-a linear-velocity-b angvela angvelb info row ax1 rotational))

(defmethod use-frame-offset ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/get-use-frame-offset (ff-pointer self)))

(defmethod (setf use-frame-offset) ( (frameoffsetonoff t) (self generic-6-dof-constraint))
  (generic-6-dof-constraint/set-use-frame-offset (ff-pointer self) frameoffsetonoff))

(defmethod (setf axes) ((self generic-6-dof-constraint) (axis1 vector3) (axis2 vector3))
  (generic-6-dof-constraint/set-axis (ff-pointer self) axis1 axis2))

(defmethod calculate-serialize-buffer-size ((self generic-6-dof-constraint))
  (generic-6-dof-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self generic-6-dof-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (generic-6-dof-constraint/serialize (ff-pointer self) data-buffer 
                                        (ff-pointer serializer)))


#+(or) (defmethod new ((self slider-constraint) sizeinbytes)
  (slider-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self slider-constraint) ptr)
  (slider-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self slider-constraint) arg1 ptr)
  (slider-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self slider-constraint) arg1 arg2)
  (slider-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (defmethod new[] ((self slider-constraint) sizeinbytes)
  (slider-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (defmethod delete[] ((self slider-constraint) ptr)
  (slider-constraint/delete-c++-array (ff-pointer self) ptr))



#+(or) (defmethod new[] ((self slider-constraint) arg1 ptr)
  (slider-constraint/make-c++-array (ff-pointer self) arg1 ptr))



#+(or) (defmethod delete[] ((self slider-constraint) arg1 arg2)
  (slider-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

#+todo
(defmethod initialize-instance :after ((obj slider-constraint) &key (rigid-body-a rigid-body) (rigid-body-b rigid-body) (frame-in-a transform) (frame-in-b transform) (use-linear-reference-frame-a-p t))
  (setf (slot-value obj 'ff-pointer) (make-slider-constraint rigid-body-a rigid-body-b frame-in-a frame-in-b use-linear-reference-frame-a-p)))

#+todo
(defmethod initialize-instance :after ((obj slider-constraint) &key (rigid-body-b rigid-body) (frame-in-b transform) (use-linear-reference-frame-a-p t))
  (setf (slot-value obj 'ff-pointer) (make-slider-constraint rigid-body-b frame-in-b use-linear-reference-frame-a-p)))

(defmethod info-1 ((self slider-constraint) info)
  (slider-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-1-non-virtual ((self slider-constraint) info)
  (slider-constraint/get-info-1-non-virtual (ff-pointer self) info))

(defmethod info-2 ((self slider-constraint) info)
  (slider-constraint/get-info-2 (ff-pointer self) info))

(defmethod info-2-non-virtual/slider ((self slider-constraint) info (transa transform) (transb transform) (linear-velocity-a vector3) (linear-velocity-b vector3) (rigid-body-ainvmass number) (rigid-body-binvmass number))
  (slider-constraint/get-info-2-non-virtual (ff-pointer self) info transa transb linear-velocity-a linear-velocity-b rigid-body-ainvmass rigid-body-binvmass))

(defmethod rigid-body-a ((self slider-constraint))
  (slider-constraint/get-rigid-body-a (ff-pointer self)))

(defmethod rigid-body-b ((self slider-constraint))
  (slider-constraint/get-rigid-body-b (ff-pointer self)))

(defmethod calculated-transform-a ((self slider-constraint))
  (slider-constraint/get-calculated-transform-a (ff-pointer self)))

(defmethod calculated-transform-b ((self slider-constraint))
  (slider-constraint/get-calculated-transform-b (ff-pointer self)))

(defmethod frame-offset-a ((self slider-constraint))
  (slider-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self slider-constraint))
  (slider-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod frame-offset-a ((self slider-constraint))
  (slider-constraint/get-frame-offset-a (ff-pointer self)))

(defmethod frame-offset-b ((self slider-constraint))
  (slider-constraint/get-frame-offset-b (ff-pointer self)))

(defmethod lower-linear-limit ((self slider-constraint))
  (slider-constraint/get-lower-lin-limit (ff-pointer self)))

(defmethod (setf lower-linear-limit) ( (lower-limit number) (self slider-constraint))
  (slider-constraint/set-lower-lin-limit (ff-pointer self) lower-limit))

(defmethod upper-linear-limit ((self slider-constraint))
  (slider-constraint/get-upper-lin-limit (ff-pointer self)))

(defmethod (setf upper-linear-limit) ( (upperlimit number) (self slider-constraint))
  (slider-constraint/set-upper-lin-limit (ff-pointer self) upperlimit))

(defmethod lower-ang-limit ((self slider-constraint))
  (slider-constraint/get-lower-ang-limit (ff-pointer self)))

(defmethod (setf lower-ang-limit) ( (lowerlimit number) (self slider-constraint))
  (slider-constraint/set-lower-ang-limit (ff-pointer self) lowerlimit))

(defmethod upper-ang-limit ((self slider-constraint))
  (slider-constraint/get-upper-ang-limit (ff-pointer self)))

(defmethod (setf upper-ang-limit) ( (upperlimit number) (self slider-constraint))
  (slider-constraint/set-upper-ang-limit (ff-pointer self) upperlimit))

(defmethod use-linear-reference-frame-a-p ((self slider-constraint))
  (slider-constraint/get-use-linear-reference-frame-a (ff-pointer self)))

(defmethod softness-dir-lin ((self slider-constraint))
  (slider-constraint/get-softness-dir-lin (ff-pointer self)))

(defmethod restitution-dir-lin ((self slider-constraint))
  (slider-constraint/get-restitution-dir-lin (ff-pointer self)))

(defmethod damping-dir-lin ((self slider-constraint))
  (slider-constraint/get-damping-dir-lin (ff-pointer self)))

(defmethod softness-dir-ang ((self slider-constraint))
  (slider-constraint/get-softness-dir-ang (ff-pointer self)))

(defmethod restitution-dir-ang ((self slider-constraint))
  (slider-constraint/get-restitution-dir-ang (ff-pointer self)))

(defmethod damping-dir-ang ((self slider-constraint))
  (slider-constraint/get-damping-dir-ang (ff-pointer self)))

(defmethod softness-lim-lin ((self slider-constraint))
  (slider-constraint/get-softness-lim-lin (ff-pointer self)))

(defmethod restitution-lim-lin ((self slider-constraint))
  (slider-constraint/get-restitution-lim-lin (ff-pointer self)))

(defmethod damping-lim-lin ((self slider-constraint))
  (slider-constraint/get-damping-lim-lin (ff-pointer self)))

(defmethod softness-lim-ang ((self slider-constraint))
  (slider-constraint/get-softness-lim-ang (ff-pointer self)))

(defmethod restitution-lim-ang ((self slider-constraint))
  (slider-constraint/get-restitution-lim-ang (ff-pointer self)))

(defmethod damping-lim-ang ((self slider-constraint))
  (slider-constraint/get-damping-lim-ang (ff-pointer self)))

(defmethod softness-ortho-lin ((self slider-constraint))
  (slider-constraint/get-softness-ortho-lin (ff-pointer self)))

(defmethod restitution-ortho-lin ((self slider-constraint))
  (slider-constraint/get-restitution-ortho-lin (ff-pointer self)))

(defmethod damping-ortho-lin ((self slider-constraint))
  (slider-constraint/get-damping-ortho-lin (ff-pointer self)))

(defmethod softness-ortho-ang ((self slider-constraint))
  (slider-constraint/get-softness-ortho-ang (ff-pointer self)))

(defmethod restitution-ortho-ang ((self slider-constraint))
  (slider-constraint/get-restitution-ortho-ang (ff-pointer self)))

(defmethod damping-ortho-ang ((self slider-constraint))
  (slider-constraint/get-damping-ortho-ang (ff-pointer self)))

(defmethod (setf softness-dir-lin) ( (softnessdirlin number) (self slider-constraint))
  (slider-constraint/set-softness-dir-lin (ff-pointer self) softnessdirlin))

(defmethod (setf restitution-dir-lin) ( (restitutiondirlin number) (self slider-constraint))
  (slider-constraint/set-restitution-dir-lin (ff-pointer self) restitutiondirlin))

(defmethod (setf damping-dir-lin) ( (dampingdirlin number) (self slider-constraint))
  (slider-constraint/set-damping-dir-lin (ff-pointer self) dampingdirlin))

(defmethod (setf softness-dir-ang) ( (softnessdirang number) (self slider-constraint))
  (slider-constraint/set-softness-dir-ang (ff-pointer self) softnessdirang))

(defmethod (setf restitution-dir-ang) ( (restitutiondirang number) (self slider-constraint))
  (slider-constraint/set-restitution-dir-ang (ff-pointer self) restitutiondirang))

(defmethod (setf damping-dir-ang) ( (dampingdirang number) (self slider-constraint))
  (slider-constraint/set-damping-dir-ang (ff-pointer self) dampingdirang))

(defmethod (setf softness-lim-lin) ( (softnesslimlin number) (self slider-constraint))
  (slider-constraint/set-softness-lim-lin (ff-pointer self) softnesslimlin))

(defmethod (setf restitution-lim-lin) ( (restitutionlimlin number) (self slider-constraint))
  (slider-constraint/set-restitution-lim-lin (ff-pointer self) restitutionlimlin))

(defmethod (setf damping-lim-lin) ( (dampinglimlin number) (self slider-constraint))
  (slider-constraint/set-damping-lim-lin (ff-pointer self) dampinglimlin))

(defmethod (setf softness-lim-ang) ( (softnesslimang number) (self slider-constraint))
  (slider-constraint/set-softness-lim-ang (ff-pointer self) softnesslimang))

(defmethod (setf restitution-lim-ang) ( (restitutionlimang number) (self slider-constraint))
  (slider-constraint/set-restitution-lim-ang (ff-pointer self) restitutionlimang))

(defmethod (setf damping-lim-ang) ( (dampinglimang number) (self slider-constraint))
  (slider-constraint/set-damping-lim-ang (ff-pointer self) dampinglimang))

(defmethod (setf softness-ortho-lin) ( (softnessortholin number) (self slider-constraint))
  (slider-constraint/set-softness-ortho-lin (ff-pointer self) softnessortholin))

(defmethod (setf restitution-ortho-lin) ( (restitutionortholin number) (self slider-constraint))
  (slider-constraint/set-restitution-ortho-lin (ff-pointer self) restitutionortholin))

(defmethod (setf damping-ortho-lin) ( (dampingortholin number) (self slider-constraint))
  (slider-constraint/set-damping-ortho-lin (ff-pointer self) dampingortholin))

(defmethod (setf softness-ortho-ang) ( (softnessorthoang number) (self slider-constraint))
  (slider-constraint/set-softness-ortho-ang (ff-pointer self) softnessorthoang))

(defmethod (setf restitution-ortho-ang) ( (restitutionorthoang number) (self slider-constraint))
  (slider-constraint/set-restitution-ortho-ang (ff-pointer self) restitutionorthoang))

(defmethod (setf damping-ortho-ang) ( (dampingorthoang number) (self slider-constraint))
  (slider-constraint/set-damping-ortho-ang (ff-pointer self) dampingorthoang))

(defmethod (setf powered-lin-motor) ( (onoff t) (self slider-constraint))
  (slider-constraint/set-powered-lin-motor (ff-pointer self) onoff))

(defmethod powered-lin-motor ((self slider-constraint))
  (slider-constraint/get-powered-lin-motor (ff-pointer self)))

(defmethod (setf target-lin-motor-velocity) ( (targetlinmotorvelocity number) (self slider-constraint))
  (slider-constraint/set-target-lin-motor-velocity (ff-pointer self) targetlinmotorvelocity))

(defmethod target-lin-motor-velocity ((self slider-constraint))
  (slider-constraint/get-target-lin-motor-velocity (ff-pointer self)))

(defmethod (setf max-lin-motor-force) ( (maxlinmotorforce number) (self slider-constraint))
  (slider-constraint/set-max-lin-motor-force (ff-pointer self) maxlinmotorforce))

(defmethod max-lin-motor-force ((self slider-constraint))
  (slider-constraint/get-max-lin-motor-force (ff-pointer self)))

(defmethod (setf powered-ang-motor) ( (onoff t) (self slider-constraint))
  (slider-constraint/set-powered-ang-motor (ff-pointer self) onoff))

(defmethod powered-ang-motor ((self slider-constraint))
  (slider-constraint/get-powered-ang-motor (ff-pointer self)))

(defmethod (setf target-ang-motor-velocity) ( (targetangmotorvelocity number) (self slider-constraint))
  (slider-constraint/set-target-ang-motor-velocity (ff-pointer self) targetangmotorvelocity))

(defmethod target-ang-motor-velocity ((self slider-constraint))
  (slider-constraint/get-target-ang-motor-velocity (ff-pointer self)))

(defmethod (setf max-ang-motor-force) ( (maxangmotorforce number) (self slider-constraint))
  (slider-constraint/set-max-ang-motor-force (ff-pointer self) maxangmotorforce))

(defmethod max-ang-motor-force ((self slider-constraint))
  (slider-constraint/get-max-ang-motor-force (ff-pointer self)))

(defmethod linear-pos ((self slider-constraint))
  (slider-constraint/get-linear-pos (ff-pointer self)))

(defmethod angular-pos ((self slider-constraint))
  (slider-constraint/get-angular-pos (ff-pointer self)))

(defmethod solve-lin-limit ((self slider-constraint))
  (slider-constraint/get-solve-lin-limit (ff-pointer self)))

(defmethod lin-depth ((self slider-constraint))
  (slider-constraint/get-lin-depth (ff-pointer self)))

(defmethod solve-ang-limit ((self slider-constraint))
  (slider-constraint/get-solve-ang-limit (ff-pointer self)))

(defmethod ang-depth ((self slider-constraint))
  (slider-constraint/get-ang-depth (ff-pointer self)))

(defmethod calculate-transforms/a+b ((self slider-constraint) (transa transform) (transb transform))
  (slider-constraint/calculate-transforms (ff-pointer self) transa transb))

(defmethod test-lin-limits ((self slider-constraint))
  (slider-constraint/test-lin-limits (ff-pointer self)))

(defmethod test-ang-limits ((self slider-constraint))
  (slider-constraint/test-ang-limits (ff-pointer self)))

(defmethod ancor-in-a ((self slider-constraint))
  (slider-constraint/get-ancor-in-a (ff-pointer self)))

(defmethod ancor-in-b ((self slider-constraint))
  (slider-constraint/get-ancor-in-b (ff-pointer self)))

(defmethod use-frame-offset ((self slider-constraint))
  (slider-constraint/get-use-frame-offset (ff-pointer self)))

(defmethod (setf use-frame-offset) ( (frameoffsetonoff t) (self slider-constraint))
  (slider-constraint/set-use-frame-offset (ff-pointer self) frameoffsetonoff))

(defmethod (setf frames) ( (framea transform) (self slider-constraint) (frameb transform))
  (slider-constraint/set-frames (ff-pointer self) framea frameb))

(defmethod calculate-serialize-buffer-size ((self slider-constraint))
  (slider-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self slider-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (slider-constraint/serialize (ff-pointer self) data-buffer 
                                 (ff-pointer serializer)))


#+(or) (defmethod new ((self generic-6-dof-spring-constraint) sizeinbytes)
        (generic-6-dof-spring-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self generic-6-dof-spring-constraint) ptr)
  (generic-6-dof-spring-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self generic-6-dof-spring-constraint) arg1 ptr)
        (generic-6-dof-spring-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self generic-6-dof-spring-constraint) arg1 arg2)
  (generic-6-dof-spring-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (defmethod new[] ((self generic-6-dof-spring-constraint) sizeinbytes)
  (generic-6-dof-spring-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (defmethod delete[] ((self generic-6-dof-spring-constraint) ptr)
  (generic-6-dof-spring-constraint/delete-c++-array (ff-pointer self) ptr))
#+(or) (defmethod new[] ((self generic-6-dof-spring-constraint) arg1 ptr)
  (generic-6-dof-spring-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (defmethod delete[] ((self generic-6-dof-spring-constraint) arg1 arg2)
  (generic-6-dof-spring-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj generic-6-dof-spring-constraint)
                                       &key 
                                         rigid-body-a rigid-body-b
                                         frame-in-a frame-in-b
                                         (use-linear-reference-frame-a-p
                                          nil use-a?)
                                         (use-linear-reference-frame-b-p
                                          nil use-b?))
  (check-type rigid-body-b rigid-body) 
  (check-type frame-in-b transform)
  (setf (slot-value obj 'ff-pointer) 
        (cond
          (use-a?
           (check-type rigid-body-a rigid-body) 
           (check-type frame-in-a transform)
           (make-generic-6-dof-spring-constraint/with-a&b&use-a
            rigid-body-a rigid-body-b frame-in-a frame-in-b 
            use-linear-reference-frame-a-p))
          (use-b?
           (make-generic-6-dof-spring-constraint/with-rb-b&frame-in-b/using-linear-reference-frame-b
            rigid-body-b frame-in-b use-linear-reference-frame-b-p)))))

(defmethod (setf spring-enabled-p) ((enablep t)
                                    (self generic-6-dof-spring-constraint) (index integer))
  (generic-6-dof-spring-constraint/enable-spring (ff-pointer self) index enablep))

(defmethod (setf stiffness) ((stiffness number)
                             (self generic-6-dof-spring-constraint)
                             (index integer))
  (generic-6-dof-spring-constraint/set-stiffness (ff-pointer self) index stiffness))

(defmethod (setf elt-damping) ((damping number) (self generic-6-dof-spring-constraint) (index integer))
  (generic-6-dof-spring-constraint/set-damping (ff-pointer self) index damping))

(defmethod (setf equilibrium-point) ((val null) (self generic-6-dof-spring-constraint)
                                     (index null))
           (generic-6-dof-spring-constraint/set-equilibrium-point (ff-pointer self)))

(defmethod (setf equilibrium-point) ((val null) (self generic-6-dof-spring-constraint)
                                     (index integer))
  (generic-6-dof-spring-constraint/set-equilibrium-point/with-index (ff-pointer self) index))

(defmethod (setf equilibrium-point) ((val number) (self generic-6-dof-spring-constraint)
                                     (index integer))
  (generic-6-dof-spring-constraint/set-equilibrium-point/with-index&float
   (ff-pointer self) index val))

(defmethod (setf axes) ((axis1 vector3) (self generic-6-dof-spring-constraint)
                         (axis2 vector3))
  (generic-6-dof-spring-constraint/set-axis (ff-pointer self) axis1 axis2))

(defmethod info-2 ((self generic-6-dof-spring-constraint) info)
  (generic-6-dof-spring-constraint/get-info-2 (ff-pointer self) info))

(defmethod calculate-serialize-buffer-size ((self generic-6-dof-spring-constraint))
  (generic-6-dof-spring-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self generic-6-dof-spring-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (generic-6-dof-spring-constraint/serialize (ff-pointer self) data-buffer 
                                               (ff-pointer serializer)))

#+(or) (defmethod new ((self universal-constraint) sizeinbytes)
  (universal-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self universal-constraint) ptr)
  (universal-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self universal-constraint) arg1 ptr)
        (universal-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self universal-constraint) arg1 arg2)
  (universal-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (defmethod new[] ((self universal-constraint) sizeinbytes)
        (universal-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (defmethod delete[] ((self universal-constraint) ptr)
  (universal-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or) (defmethod new[] ((self universal-constraint) arg1 ptr)
        (universal-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (defmethod delete[] ((self universal-constraint) arg1 arg2)
  (universal-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj universal-constraint)
                                       &key rigid-body-a rigid-body-b
                                         anchor
                                         axis1 axis2)
  (check-type rigid-body-a rigid-body) 
  (check-type rigid-body-b rigid-body) 
  (check-type anchor vector3) 
  (check-type axis1 vector3) 
  (check-type axis2 vector3)
  (setf (slot-value obj 'ff-pointer)
        (make-universal-constraint (ff-pointer rigid-body-a) 
                                   (ff-pointer rigid-body-b) 
                                   (ff-pointer anchor) 
                                   (ff-pointer axis1) (ff-pointer axis2))))

(defmethod anchor ((self universal-constraint))
  (universal-constraint/get-anchor (ff-pointer self)))

(defmethod anchor-2 ((self universal-constraint))
  (universal-constraint/get-anchor-2 (ff-pointer self)))

(defmethod anchors ((self universal-constraint))
  (values (universal-constraint/get-anchor (ff-pointer self))
          (universal-constraint/get-anchor-2 (ff-pointer self))))

(defmethod axis-1 ((self universal-constraint))
  (universal-constraint/get-axis-1 (ff-pointer self)))

(defmethod axis-2 ((self universal-constraint))
  (universal-constraint/get-axis-2 (ff-pointer self)))

(defmethod axes ((self universal-constraint))
  (values (universal-constraint/get-axis-1 (ff-pointer self))
          (universal-constraint/get-axis-2 (ff-pointer self))))

(defmethod angle-1 ((self universal-constraint))
  (universal-constraint/get-angle-1 (ff-pointer self)))

(defmethod angle-2 ((self universal-constraint))
  (universal-constraint/get-angle-2 (ff-pointer self)))

(defmethod angles ((self universal-constraint))
  (values (universal-constraint/get-angle-1 (ff-pointer self))
          (universal-constraint/get-angle-2 (ff-pointer self))))

(defmethod (setf upper-limits) ((self universal-constraint)
                                (ang1max number) (ang2max number))
  (universal-constraint/set-upper-limit (ff-pointer self) ang1max ang2max))

(defmethod (setf lower-limits) ((self universal-constraint)
                                (angle-1-min number)
                                (angle-2-min number))
  (universal-constraint/set-lower-limit (ff-pointer self) angle-1-min angle-2-min))

(defmethod (setf axes) ( (self universal-constraint) (axis1 vector3) (axis2 vector3))
  (universal-constraint/set-axis (ff-pointer self) axis1 axis2))

#+(or) (defmethod new ((self hinge-2-constraint) sizeinbytes)
        (hinge-2-constraint/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self hinge-2-constraint) ptr)
  (hinge-2-constraint/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self hinge-2-constraint) arg1 ptr)
        (hinge-2-constraint/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self hinge-2-constraint) arg1 arg2)
  (hinge-2-constraint/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (defmethod new[] ((self hinge-2-constraint) sizeinbytes)
  (hinge-2-constraint/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (defmethod delete[] ((self hinge-2-constraint) ptr)
  (hinge-2-constraint/delete-c++-array (ff-pointer self) ptr))

#+(or) (defmethod new[] ((self hinge-2-constraint) arg1 ptr)
        (hinge-2-constraint/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (defmethod delete[] ((self hinge-2-constraint) arg1 arg2)
         (hinge-2-constraint/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj hinge-2-constraint)
                                       &key rigid-body-a rigid-body-b
                                         anchor axis1 axis2)
  (check-type rigid-body-a rigid-body) 
  (check-type rigid-body-b rigid-body)
  (check-type anchor vector3)
  (check-type axis1 vector3) (check-type axis2 vector3)
  (setf (slot-value obj 'ff-pointer) 
        (make-hinge-2-constraint (ff-pointer rigid-body-a) 
                                 (ff-pointer rigid-body-b) 
                                 (ff-pointer anchor) 
                                 (ff-pointer axis1) 
                                 (ff-pointer axis2))))

(defmethod anchor ((self hinge-2-constraint))
  (hinge-2-constraint/get-anchor (ff-pointer self)))

(defmethod anchor-2 ((self hinge-2-constraint))
  (hinge-2-constraint/get-anchor-2 (ff-pointer self)))

(defmethod axis-1 ((self hinge-2-constraint))
  (hinge-2-constraint/get-axis-1 (ff-pointer self)))

(defmethod axis-2 ((self hinge-2-constraint))
  (hinge-2-constraint/get-axis-2 (ff-pointer self)))

(defmethod angle-1 ((self hinge-2-constraint))
  (hinge-2-constraint/get-angle-1 (ff-pointer self)))

(defmethod angle-2 ((self hinge-2-constraint))
  (hinge-2-constraint/get-angle-2 (ff-pointer self)))

(defmethod (setf upper-limit) ( (angle-1-max number) (self hinge-2-constraint))
  (hinge-2-constraint/set-upper-limit (ff-pointer self) angle-1-max))

(defmethod (setf lower-limit) ( (angle-1-min number) (self hinge-2-constraint))
  (hinge-2-constraint/set-lower-limit (ff-pointer self) angle-1-min))

(defmethod initialize-instance :after ((obj gear-constraint)
                                       &key rigid-body-a rigid-body-b
                                         axis-in-a axis-in-b
                                         ratio)
  (check-type rigid-body-a rigid-body) (check-type rigid-body-b rigid-body)
  (check-type axis-in-a vector3) (check-type axis-in-b vector3)
  (check-type ratio (or null number))
  (setf (slot-value obj 'ff-pointer)
        (if ratio
            (make-gear-constraint/with-ratio 
             (ff-pointer rigid-body-a) (ff-pointer rigid-body-b) 
             (ff-pointer axis-in-a) (ff-pointer axis-in-b) ratio)
            (make-gear-constraint (ff-pointer rigid-body-a) (ff-pointer rigid-body-b) 
                                  (ff-pointer axis-in-a) (ff-pointer axis-in-b)))))

(defmethod info-1 ((self gear-constraint) info)
  (gear-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-2 ((self gear-constraint) info)
  (gear-constraint/get-info-2 (ff-pointer self) info))

(defmethod (setf axis-a) ( (axisa vector3) (self gear-constraint))
  (gear-constraint/set-axis-a (ff-pointer self) axisa))

(defmethod (setf axis-b) ( (axisb vector3) (self gear-constraint))
  (gear-constraint/set-axis-b (ff-pointer self) axisb))

(defmethod (setf gear-ratio) ( (ratio number) (self gear-constraint))
  (gear-constraint/set-ratio (ff-pointer self) ratio))

(defmethod axis-a ((self gear-constraint))
  (gear-constraint/get-axis-a (ff-pointer self)))

(defmethod axis-b ((self gear-constraint))
  (gear-constraint/get-axis-b (ff-pointer self)))

(defmethod bullet/ratio ((self gear-constraint))
  (gear-constraint/get-ratio (ff-pointer self)))

(defmethod calculate-serialize-buffer-size ((self gear-constraint))
  (gear-constraint/calculate-serialize-buffer-size (ff-pointer self)))

(defmethod ->serial ((self gear-constraint)&key data-buffer serializer &allow-other-keys)
    (check-type serializer serializer)
    (gear-constraint/serialize (ff-pointer self) data-buffer (ff-pointer serializer)))

(defmethod initialize-instance :after ((obj fixed-constraint)
                                       &key rigid-body-a rigid-body-b frame-in-a frame-in-b)
  (check-type rigid-body-a rigid-body) (check-type rigid-body-b rigid-body)
  (check-type frame-in-a transform) (check-type frame-in-b transform)
  (setf (slot-value obj 'ff-pointer)
        (make-fixed-constraint (ff-pointer rigid-body-a) 
                               (ff-pointer rigid-body-b) 
                               (ff-pointer frame-in-a) 
                               (ff-pointer frame-in-b))))

(defmethod info-1 ((self fixed-constraint) info)
  (fixed-constraint/get-info-1 (ff-pointer self) info))

(defmethod info-2 ((self fixed-constraint) info)
  (fixed-constraint/get-info-2 (ff-pointer self) info))

#+(or) (defmethod new ((self sequential-impulse-constraint-solver) sizeinbytes)
  (sequential-impulse-constraint-solver/make-c++-instance (ff-pointer self) sizeinbytes))

#+(or) (defmethod bullet/delete ((self sequential-impulse-constraint-solver) ptr)
  (sequential-impulse-constraint-solver/delete-c++-instance (ff-pointer self) ptr))

#+(or) (defmethod new ((self sequential-impulse-constraint-solver) arg1 ptr)
  (sequential-impulse-constraint-solver/make-c++-instance (ff-pointer self) arg1 ptr))

#+(or) (defmethod bullet/delete ((self sequential-impulse-constraint-solver) arg1 arg2)
  (sequential-impulse-constraint-solver/delete-c++-instance (ff-pointer self) arg1 arg2))

#+(or) (defmethod new[] ((self sequential-impulse-constraint-solver) sizeinbytes)
  (sequential-impulse-constraint-solver/make-c++-array (ff-pointer self) sizeinbytes))

#+(or) (defmethod delete[] ((self sequential-impulse-constraint-solver) ptr)
  (sequential-impulse-constraint-solver/delete-c++-array (ff-pointer self) ptr))

#+(or) (defmethod new[] ((self sequential-impulse-constraint-solver) arg1 ptr)
  (sequential-impulse-constraint-solver/make-c++-array (ff-pointer self) arg1 ptr))

#+(or) (defmethod delete[] ((self sequential-impulse-constraint-solver) arg1 arg2)
  (sequential-impulse-constraint-solver/delete-c++-array (ff-pointer self) arg1 arg2))

(defmethod initialize-instance :after ((obj sequential-impulse-constraint-solver) &key)
  (setf (slot-value obj 'ff-pointer) (bullet-physics-c++::make-sequential-impulse-constraint-solver)))

(defmethod solve-group ((self sequential-impulse-constraint-solver)
                        bodies (num-bodies integer)
                        manifold (num-manifolds integer)
                        constraints (num-constraints integer)
                        info (debug-drawer idebug-draw) dispatcher)
  (bullet-physics-c++::sequential-impulse-constraint-solver/solve-group
   (ff-pointer self) bodies num-bodies manifold num-manifolds constraints num-constraints
   info debug-drawer dispatcher))

(defmethod reset ((self sequential-impulse-constraint-solver))
  (sequential-impulse-constraint-solver/reset (ff-pointer self)))

(defmethod rand-2 ((self sequential-impulse-constraint-solver))
  (sequential-impulse-constraint-solver/bt-rand-2 (ff-pointer self)))

(defmethod rand-int-2 ((self sequential-impulse-constraint-solver) (n integer))
  (sequential-impulse-constraint-solver/bt-rand-int-2 (ff-pointer self) n))

(defmethod (setf rand-seed) ( (seed integer) (self sequential-impulse-constraint-solver))
  (sequential-impulse-constraint-solver/set-rand-seed (ff-pointer self) seed))

(defmethod rand-seed ((self sequential-impulse-constraint-solver))
  (sequential-impulse-constraint-solver/get-rand-seed (ff-pointer self)))

(defmethod solver-type ((self sequential-impulse-constraint-solver))
  (sequential-impulse-constraint-solver/get-solver-type (ff-pointer self)))

