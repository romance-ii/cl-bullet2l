(in-package :bullet-physics)


(defcfun ("_wrap_new_btMatrix3x3__SWIG_0"
          make-matrix-3x3/naked) matrix-3x3)

(defcfun ("_wrap_new_btMatrix3x3__SWIG_1"
               make-matrix-3x3/quaternion)
    matrix-3x3
  (q quaternion))

(defcfun ("_wrap_new_btMatrix3x3__SWIG_2"
          make-matrix-3x3/9) matrix-3x3
  (xx scalar)
  (xy scalar)
  (xz scalar)
  (yx scalar)
  (yy scalar)
  (yz scalar)
  (zx scalar)
  (zy scalar)
  (zz scalar))

(defcfun ("_wrap_new_btMatrix3x3__SWIG_3"
          make-matrix-3x3/copy) matrix-3x3
  (other matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_assignValue"
               matrix-3x3/assign-value) matrix-3x3
  (self matrix-3x3)
  (other matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_getColumn"
          matrix-3x3/get-column) vector3
  (self matrix-3x3)
  (i :int))

(defcfun ("_wrap_btMatrix3x3_getRow"
          MATRIX-3X3/GET-ROW) vector3
  (self matrix-3x3)
  (i :int))

(defcfun ("_wrap_btMatrix3x3___aref____SWIG_0"
          matrix-3x3/aref) vector3
  (self matrix-3x3)
  (i :int))
#+ (or)
(defcfun ("_wrap_btMatrix3x3___aref____SWIG_1"
               matrix-3x3/aref) :pointer
  (self matrix-3x3)
  (i :int))

(defcfun ("_wrap_btMatrix3x3_multiplyAndAssign"
               MATRIX-3X3/MULTIPLY-AND-ASSIGN) matrix-3x3
  (self matrix-3x3)
  (m matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_increment"
               MATRIX-3X3/INCREMENT) matrix-3x3
  (self matrix-3x3)
  (m matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_decrement"
               MATRIX-3X3/DECREMENT) matrix-3x3
  (self matrix-3x3)
  (m matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_setFromOpenGLSubMatrix"
               MATRIX-3X3/SET-FROM-OPENGL-SUB-MATRIX) :void
  (self matrix-3x3)
  (m (:array scalar 9)))

(defcfun ("_wrap_btMatrix3x3_setValue"
               MATRIX-3X3/SET-VALUE) :void
  (self matrix-3x3)
  (xx scalar)
  (xy scalar)
  (xz scalar)
  (yx scalar)
  (yy scalar)
  (yz scalar)
  (zx scalar)
  (zy scalar)
  (zz scalar))

(defcfun ("_wrap_btMatrix3x3_setRotation"
               MATRIX-3X3/SET-ROTATION) :void
  (self matrix-3x3)
  (q quaternion))

(defcfun ("_wrap_btMatrix3x3_setEulerYPR"
               MATRIX-3X3/SET-EULER-YPR) :void
  (self matrix-3x3)
  (yaw scalar)
  (pitch scalar)
  (roll scalar))

(defcfun ("_wrap_btMatrix3x3_setEulerZYX"
               MATRIX-3X3/SET-EULER-ZYX) :void
  (self matrix-3x3)
  (eulerX scalar)
  (eulerY scalar)
  (eulerZ scalar))

(defcfun ("_wrap_btMatrix3x3_setIdentity"
               MATRIX-3X3/SET-IDENTITY) :void
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_getIdentity"
          MATRIX-3X3/GET-IDENTITY) :pointer)

(defcfun ("_wrap_btMatrix3x3_getOpenGLSubMatrix"
          MATRIX-3X3/GET-OPENGL-SUB-MATRIX/into-array-passed) :void
  (self matrix-3x3)
  (target (:array scalar)))

(defun matrix-3x3/get-opengl-sub-matrix (self)
  (sb-alien:with-alien ((target (sb-alien:array double-float 9)))
    (MATRIX-3X3/GET-OPENGL-SUB-MATRIX/into-array-passed self target)
    target))

(defcfun ("_wrap_btMatrix3x3_getRotation"
               MATRIX-3X3/GET-ROTATION) :void
  (self matrix-3x3)
  (q :pointer))

(defcfun ("_wrap_btMatrix3x3_getEulerYPR"
               MATRIX-3X3/GET-EULER-YPR) :void
  (self matrix-3x3)
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer))

(defcfun ("_wrap_btMatrix3x3_getEulerZYX__SWIG_0"
               MATRIX-3X3/GET-EULER-ZYX/WITH-SOLUTION#) :void
  (self matrix-3x3)
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer)
  (solution-number :unsigned-int))

(defcfun ("_wrap_btMatrix3x3_getEulerZYX__SWIG_1"
               MATRIX-3X3/GET-EULER-ZYX/WITHOUT-SOLUTION#) :void
  (self matrix-3x3)
  (yaw :pointer)
  (pitch :pointer)
  (roll :pointer))

(defun MATRIX-3X3/GET-EULER-ZYX (self yaw pitch roll
                                 &optional solution#)
  (if solution#
      (MATRIX-3X3/GET-EULER-ZYX/WITH-SOLUTION# self yaw pitch roll solution#)
      (MATRIX-3X3/GET-EULER-ZYX/WITHOUT-SOLUTION# self yaw pitch roll)))

(defcfun ("_wrap_btMatrix3x3_scaled"
               MATRIX-3X3/SCALED) :pointer
  (self matrix-3x3)
  (s :pointer))

(defcfun ("_wrap_btMatrix3x3_determinant"
               MATRIX-3X3/DETERMINANT) :float
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_adjoint"
               MATRIX-3X3/ADJOINT) :pointer
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_absolute"
               MATRIX-3X3/ABSOLUTE) :pointer
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_transpose"
               MATRIX-3X3/TRANSPOSE) :pointer
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_inverse"
               MATRIX-3X3/INVERSE) :pointer
  (self matrix-3x3))

(defcfun ("_wrap_btMatrix3x3_transposeTimes"
               MATRIX-3X3/TRANSPOSE-TIMES) :pointer
  (self matrix-3x3)
  (m :pointer))

(defcfun ("_wrap_btMatrix3x3_timesTranspose"
               MATRIX-3X3/TIMES-TRANSPOSE) :pointer
  (self matrix-3x3)
  (m :pointer))

(defcfun ("_wrap_btMatrix3x3_tdotx"
               MATRIX-3X3/TDOTX) :float
  (self matrix-3x3)
  (v :pointer))

(defcfun ("_wrap_btMatrix3x3_tdoty"
               MATRIX-3X3/TDOTY) :float
  (self matrix-3x3)
  (v :pointer))

(defcfun ("_wrap_btMatrix3x3_tdotz"
               MATRIX-3X3/TDOTZ) :float
  (self matrix-3x3)
  (v :pointer))

(defcfun ("_wrap_btMatrix3x3_diagonalize"
               MATRIX-3X3/DIAGONALIZE) :void
  (self matrix-3x3)
  (rot :pointer)
  (threshold :float)
  (maxSteps :int))

(defcfun ("_wrap_btMatrix3x3_cofac"
               MATRIX-3X3/COFAC) :float
  (self matrix-3x3)
  (r1 :int)
  (c1 :int)
  (r2 :int)
  (c2 :int))

(defcfun ("_wrap_btMatrix3x3_serialize"
               MATRIX-3X3/SERIALIZE) :void
  (self matrix-3x3)
  (dataOut :pointer))

(defcfun ("_wrap_btMatrix3x3_serializeFloat"
               MATRIX-3X3/SERIALIZE-FLOAT) :void
  (self matrix-3x3)
  (dataOut :pointer))

(defcfun ("_wrap_btMatrix3x3_deSerialize"
               MATRIX-3X3/DE-SERIALIZE) :void
  (self matrix-3x3)
  (dataIn :pointer))

(defcfun ("_wrap_btMatrix3x3_deSerializeFloat"
               MATRIX-3X3/DE-SERIALIZE-FLOAT) :void
  (self matrix-3x3)
  (dataIn :pointer))

(defcfun ("_wrap_btMatrix3x3_deSerializeDouble"
               MATRIX-3X3/DE-SERIALIZE-DOUBLE) :void
  (self matrix-3x3)
  (dataIn :pointer))

(defcfun ("_wrap_delete_btMatrix3x3"
               DELETE/BT-MATRIX-3X3) :void
  (self matrix-3x3))

(defmethod initialize-instance :after ((obj MATRIX-3X3) &key
                                                          (q nil q?) (mat nil mat?)
                                                          (other nil other?))
  (setf (slot-value obj 'ff-pointer) 
        (cond
          ((and mat? (not q?) (not other?))
           (check-type mat array) ; FIXME 3x3
           (MAKE-MATRIX-3X3/with-values
            (aref mat 0 0) (aref mat 0 1) (aref mat 0 2)
            (aref mat 1 0) (aref mat 1 1) (aref mat 1 2)
            (aref mat 2 0) (aref mat 2 1) (aref mat 2 2)))
          ((and q? (not mat?) (not other?))
           (check-type q quaternion)
           (MAKE-MATRIX-3X3/with-q q))
          ((and other (not q?) (not mat?))
           (check-type other matrix-3x3)
           (MAKE-MATRIX-3X3/with-other (ff-pointer other)))
          (t (MAKE-MATRIX-3X3/naked)))))
(defmethod SCALED ((self MATRIX-3X3) (s VECTOR3))
  (MATRIX-3X3/SCALED (ff-pointer self) s))

(defmethod TDOTX ((self MATRIX-3X3) (v VECTOR3))
  (MATRIX-3X3/TDOTX (ff-pointer self) v))

(defmethod TDOTY ((self MATRIX-3X3) (v VECTOR3))
  (MATRIX-3X3/TDOTY (ff-pointer self) v))

(defmethod TDOTZ ((self MATRIX-3X3) (v VECTOR3))
  (MATRIX-3X3/TDOTZ (ff-pointer self) v))

(defmethod matrix= ((self MATRIX-3X3) (other MATRIX-3X3))
  (MATRIX-3X3/ASSIGN-VALUE (ff-pointer self) (ff-pointer other)))
(defmethod COLUMN ((self MATRIX-3X3) (i integer))
  (MATRIX-3X3/GET-COLUMN (ff-pointer self) i))
(defmethod ROW ((self MATRIX-3X3) (i integer))
  (MATRIX-3X3/GET-ROW (ff-pointer self) i))
(defmethod matrix-aref ((self MATRIX-3X3) (i integer))
  (MATRIX-3X3/AREF (ff-pointer self) i))
(defmethod n* ((self MATRIX-3X3) (m MATRIX-3X3))
  (MATRIX-3X3/MULTIPLY-AND-ASSIGN (ff-pointer self) (ff-pointer m)))
(defmethod n+ ((self MATRIX-3X3) (m MATRIX-3X3))
  (MATRIX-3X3/INCREMENT (ff-pointer self) (ff-pointer m)))
(defmethod n- ((self MATRIX-3X3) (m MATRIX-3X3))
  (MATRIX-3X3/DECREMENT (ff-pointer self) (ff-pointer m)))
(defmethod (SETF OPENGL-SUBMATRIX) ((self MATRIX-3X3) m)
  (MATRIX-3X3/SET-FROM-OPENGL-SUB-MATRIX (ff-pointer self) m))
(defmethod (SETF VALUE) ((self MATRIX-3X3) xx xy xz yx yy yz zx zy zz)
  (MATRIX-3X3/SET-VALUE (ff-pointer self) xx xy xz yx yy yz zx zy zz))
(defmethod (SETF ROTATION) ((self MATRIX-3X3) (q QUATERNION))
  (MATRIX-3X3/SET-ROTATION (ff-pointer self) q))
(defmethod (SETF EULER-YPR) ((self MATRIX-3X3) yaw pitch roll)
  (MATRIX-3X3/SET-EULER-YPR (ff-pointer self) yaw pitch roll))
(defmethod (SETF EULER-XYZ)
    ((self MATRIX-3X3) (eulerX number) (eulerY number) (eulerZ number))
  (MATRIX-3X3/SET-EULER-ZYX (ff-pointer self) eulerX eulerY eulerZ))
(defmethod SET-IDENTITY ((self MATRIX-3X3))
  (MATRIX-3X3/SET-IDENTITY (ff-pointer self)))
(defmethod OPENGL-SUBMATRIX ((self MATRIX-3X3) m)
  (MATRIX-3X3/GET-OPENGL-SUB-MATRIX (ff-pointer self) m))
(defmethod ROTATION-ELT ((self MATRIX-3X3) (q QUATERNION))
  (MATRIX-3X3/GET-ROTATION (ff-pointer self) q))
(defmethod EULER-YPR ((self MATRIX-3X3) yaw pitch roll &optional solution-number)
  (cond
    (solution-number (check-type solution-number integer)
                     (MATRIX-3X3/GET-EULER-YPR/with-solution (ff-pointer self)
                                                             yaw pitch roll solution-number))
    (t
     (MATRIX-3X3/GET-EULER-YPR (ff-pointer self) yaw pitch roll))))
(defmethod EULER-XYZ ((self MATRIX-3X3) yaw pitch roll)
  (MATRIX-3X3/GET-EULER-ZYX (ff-pointer self) yaw pitch roll))
(defmethod DETERMINANT ((self MATRIX-3X3))
  (MATRIX-3X3/DETERMINANT (ff-pointer self)))
(defmethod ADJOINT ((self MATRIX-3X3))
  (MATRIX-3X3/ADJOINT (ff-pointer self)))
(defmethod ABSOLUTE ((self MATRIX-3X3))
  (MATRIX-3X3/ABSOLUTE (ff-pointer self)))
(defmethod TRANSPOSE ((self MATRIX-3X3))
  (MATRIX-3X3/TRANSPOSE (ff-pointer self)))
(defmethod INVERSE-MATRIX ((self MATRIX-3X3))
  (MATRIX-3X3/INVERSE (ff-pointer self)))
(defmethod TRANSPOSE-TIMES ((self MATRIX-3X3) (m MATRIX-3X3))
  (MATRIX-3X3/TRANSPOSE-TIMES (ff-pointer self) (ff-pointer m)))
(defmethod TIMES-TRANSPOSE ((self MATRIX-3X3) (m MATRIX-3X3))
  (MATRIX-3X3/TIMES-TRANSPOSE (ff-pointer self) (ff-pointer m)))
(defmethod DIAGONALIZE ((self MATRIX-3X3) (rot MATRIX-3X3) (threshold number) (maxSteps integer))
  (MATRIX-3X3/DIAGONALIZE (ff-pointer self) (ff-pointer rot) threshold maxSteps))
(defmethod COFAC ((self MATRIX-3X3) (r1 integer) (c1 integer) (r2 integer) (c2 integer))
  (MATRIX-3X3/COFAC (ff-pointer self) r1 c1 r2 c2))
(defmethod ->serial ((self MATRIX-3X3) &KEY data-Out &allow-other-keys)
  (MATRIX-3X3/SERIALIZE (ff-pointer self) data-Out))
(defmethod ->serial/FLOAT ((self MATRIX-3X3) &KEY data-Out &allow-other-keys)
  (MATRIX-3X3/SERIALIZE-FLOAT (ff-pointer self) data-Out))
(defmethod <-SERIAL ((self MATRIX-3X3) &KEY data-In &allow-other-keys)
  (MATRIX-3X3/DE-SERIALIZE (ff-pointer self) data-In))
(defmethod <-SERIAL/FLOAT ((self MATRIX-3X3) &KEY data-In &allow-other-keys)
  (MATRIX-3X3/DE-SERIALIZE-FLOAT (ff-pointer self) data-In))
(defmethod <-SERIAL/DOUBLE ((self MATRIX-3X3) &KEY data-In &allow-other-keys)
  (MATRIX-3X3/DE-SERIALIZE-DOUBLE (ff-pointer self) data-In))



