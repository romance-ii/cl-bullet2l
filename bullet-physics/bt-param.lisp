(in-package :bullet)

(defgeneric param (thing num &optional axis))
(defgeneric (setf param) (thing num value &optional axis))


(defcfun ("_wrap_btTypedConstraint_setParam__SWIG_0"
          #.(lispify "btTypedConstraint_setParam_withAxis" 'function))
    :void
  (self (:pointer typed-constraint))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btTypedConstraint_setParam__SWIG_1"
          #.(lispify "btTypedConstraint_setParam_withoutAxis" 'function))
    :void
  (self (:pointer typed-constraint))
  (num :int)
  (value :float))


(defcfun ("_wrap_btTypedConstraint_getParam__SWIG_0"
          #.(lispify "btTypedConstraint_getParam_withAxis" 'function))
    :float
  (self (:pointer typed-constraint))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btTypedConstraint_getParam__SWIG_1"
          #.(lispify "btTypedConstraint_getParam_withoutAxis" 'function))
    :float
  (self (:pointer typed-constraint))
  (num :int))


(defcfun ("_wrap_btPoint2PointConstraint_setParam__SWIG_0"
          #.(lispify "btPoint2PointConstraint_setParam_withAxis" 'function))
    :void
  (self (:pointer point->point-constraint))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btPoint2PointConstraint_setParam__SWIG_1"
          #.(lispify "btPoint2PointConstraint_setParam_withoutAxis" 'function))
    :void
  (self (:pointer point->point-constraint))
  (num :int)
  (value :float))


(defcfun ("_wrap_btPoint2PointConstraint_getParam__SWIG_0"
          #.(lispify "btPoint2PointConstraint_getParam_withAxis" 'function))
    :float
  (self (:pointer point->point-constraint))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btPoint2PointConstraint_getParam__SWIG_1"
          #.(lispify "btPoint2PointConstraint_getParam_withoutAxis" 'function))
    :float
  (self (:pointer point->point-constraint))
  (num :int))


(defcfun ("_wrap_btHingeConstraint_setParam__SWIG_0"
          #.(lispify "btHingeConstraint_setParam_withAxis" 'function))
    :void
  (self (:pointer hinge-constraint))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btHingeConstraint_setParam__SWIG_1"
          HINGE-CONSTRAINT/SET-PARAM/without-axis) :void
  (self (:pointer hinge-constraint))
  (num :int)
  (value :float))


(defcfun ("_wrap_btHingeConstraint_getParam__SWIG_0"
          HINGE-CONSTRAINT/GET-PARAM/WITH-AXIS)
    :float
  (self (:pointer hinge-constraint))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btHingeConstraint_getParam__SWIG_1"
          HINGE-CONSTRAINT/GET-PARAM/without-axis) :float
  (self (:pointer hinge-constraint))
  (num :int))


(defcfun ("_wrap_btConeTwistConstraint_setParam__SWIG_0"
          CONE-TWIST-CONSTRAINT/SET-PARAM/WITH-AXIS)
    :void
  (self (:pointer cone-twist-constraint))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btConeTwistConstraint_setParam__SWIG_1"
          CONE-TWIST-CONSTRAINT/SET-PARAM/without-axis) :void
  (self (:pointer CONE-TWIST-CONSTRAINT))
  (num :int)
  (value :float))


(defcfun ("_wrap_btConeTwistConstraint_getParam__SWIG_0"
          CONE-TWIST-CONSTRAINT/GET-PARAM/WITH-AXIS)
    :float
  (self (:pointer CONE-TWIST-CONSTRAINT))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btConeTwistConstraint_getParam__SWIG_1"
          CONE-TWIST-CONSTRAINT/GET-PARAM/without-axis) :float
  (self (:pointer CONE-TWIST-CONSTRAINT))
  (num :int))


(defcfun ("_wrap_btGeneric6DofConstraint_setParam__SWIG_0"
          GENERIC-6-DOF-CONSTRAINT/SET-PARAM/WITH-AXIS)
    :void
  (self (:pointer GENERIC-6-DOF-CONSTRAINT))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btGeneric6DofConstraint_setParam__SWIG_1"
          GENERIC-6-DOF-CONSTRAINT/SET-PARAM/without-axis) :void
  (self (:pointer GENERIC-6-DOF-CONSTRAINT))
  (num :int)
  (value :float))


(defcfun ("_wrap_btGeneric6DofConstraint_getParam__SWIG_0"
          GENERIC-6-DOF-CONSTRAINT/GET-PARAM/WITH-AXIS)
    :float
  (self (:pointer GENERIC-6-DOF-CONSTRAINT))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btGeneric6DofConstraint_getParam__SWIG_1"
          GENERIC-6-DOF-CONSTRAINT/GET-PARAM/without-axis) :float
  (self (:pointer GENERIC-6-DOF-CONSTRAINT))
  (num :int))


(defcfun ("_wrap_btSliderConstraint_setParam__SWIG_0"
          SLIDER-CONSTRAINT/SET-PARAM/WITH-AXIS)
    :void
  (self (:pointer SLIDER-CONSTRAINT))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btSliderConstraint_setParam__SWIG_1"
          SLIDER-CONSTRAINT/SET-PARAM/without-axis) :void
  (self (:pointer SLIDER-CONSTRAINT))
  (num :int)
  (value :float))


(defcfun ("_wrap_btSliderConstraint_getParam__SWIG_0"
          SLIDER-CONSTRAINT/GET-PARAM/with-axis) :float
  (self (:pointer SLIDER-CONSTRAINT))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btSliderConstraint_getParam__SWIG_1"
          SLIDER-CONSTRAINT/GET-PARAM/without-axis) :float
  (self (:pointer SLIDER-CONSTRAINT))
  (num :int))


(defcfun ("_wrap_btGearConstraint_setParam__SWIG_0"
          gear-constraint/set-param/with-axis) :void
  (self (:pointer gear-constraint))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btGearConstraint_setParam__SWIG_1"
          gear-constraint/set-param/without-axis) :void
  (self (:pointer gear-constraint))
  (num :int)
  (value :float))


(defcfun ("_wrap_btGearConstraint_getParam__SWIG_0"
          gear-constraint/get-param/with-axis) :float
  (self (:pointer gear-constraint))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btGearConstraint_getParam__SWIG_1"
          gear-constraint/get-param/without-axis) :float
  (self (:pointer gear-constraint))
  (num :int))


(defcfun ("_wrap_btFixedConstraint_setParam__SWIG_0"
          FIXED-CONSTRAINT/SET-PARAM/with-axis) :void
  (self (:pointer FIXED-CONSTRAINT))
  (num :int)
  (value :float)
  (axis :int))


(defcfun ("_wrap_btFixedConstraint_setParam__SWIG_1"
          FIXED-CONSTRAINT/SET-PARAM/without-axis) :void
  (self (:pointer FIXED-CONSTRAINT))
  (num :int)
  (value :float))


(defcfun ("_wrap_btFixedConstraint_getParam__SWIG_0"
          FIXED-CONSTRAINT/GET-PARAM/with-axis) :float
  (self (:pointer FIXED-CONSTRAINT))
  (num :int)
  (axis :int))


(defcfun ("_wrap_btFixedConstraint_getParam__SWIG_1"
          FIXED-CONSTRAINT/GET-PARAM/without-axis) :float
  (self (:pointer FIXED-CONSTRAINT))
  (num :int))

(defmethod (setf param) ((self typed-constraint) (num integer) (value number)
                         &optional (axis nil axis?))
  (if axis?
      (TYPED-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (TYPED-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self #.(lispify "bt-typed-constraint" 'classname)) (num integer) &optional (axis nil axis?))
  (if axis?
      (TYPED-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (TYPED-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self point->point-constraint)
                         (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (POINT-2-POINT-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (POINT-2-POINT-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self point->point-constraint) (num integer) &optional (axis nil axis?))
  (if axis?
      (POINT-2-POINT-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (POINT-2-POINT-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self HINGE-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (HINGE-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (HINGE-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self HINGE-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (HINGE-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (HINGE-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self CONE-TWIST-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (CONE-TWIST-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (CONE-TWIST-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self CONE-TWIST-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (CONE-TWIST-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (CONE-TWIST-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self GENERIC-6-DOF-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (GENERIC-6-DOF-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (GENERIC-6-DOF-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self GENERIC-6-DOF-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (GENERIC-6-DOF-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (GENERIC-6-DOF-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self SLIDER-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (SLIDER-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (SLIDER-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self SLIDER-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (SLIDER-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (SLIDER-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self GEAR-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (GEAR-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (GEAR-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self GEAR-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (GEAR-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (GEAR-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

(defmethod (setf param) ((self FIXED-CONSTRAINT) (num integer) (value number) &optional (axis nil axis?))
  (if axis?
      (FIXED-CONSTRAINT/SET-PARAM/WITH-AXIS (ff-pointer self) num value axis)
      (FIXED-CONSTRAINT/SET-PARAM/WITHOUT-AXIS (ff-pointer self) num value)))

(defmethod param ((self FIXED-CONSTRAINT) (num integer) &optional (axis nil axis?))
  (if axis?
      (FIXED-CONSTRAINT/GET-PARAM/WITH-AXIS (ff-pointer self) num axis)
      (FIXED-CONSTRAINT/GET-PARAM/WITHOUT-AXIS (ff-pointer self) num)))

