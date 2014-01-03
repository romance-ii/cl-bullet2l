%module "bullet"

%feature("export","1");
%feature("intern_function","cl-bullet2l-lispify");
%feature("inline");

//fix up operator overrides.
%rename (set) *::operator =;
%rename (equals) *::operator ==;
%rename (lessThanP) *::operator <;
%rename (greaterThanP) *::operator >;
%rename (minus) *::operator -;
%rename (notEquals) *::operator !=;                         
%rename (plus) *::operator +;
%rename (multiply) *::operator *;
%rename (divide) *::operator /;
%rename (increment) *::operator +=;
%rename (decrement) *::operator -=;
%rename (multiplyAndSet) *::operator *=;
%rename (divideAndSet) *::operator /=;



%insert ("lisphead")
%{

(defpackage bullet-physics
 (:use :cl :alexandria)
 (:nicknames bullet)
 (:documentation "Bullet is a Collision Detection and Rigid Body Dynamics
 Library.  The Library is Open Source and free for commercial use, under the
 zlib.  The C++ documentation is at bulletphysics.org; this is a simple
 wrapper to make Bullet available to Common Lisp programs."))

(in-package :bullet-physics)

(cffi:define-foreign-library cl-bullet2l
	(t (:default "libcl-bullet2l")))
(cffi:use-foreign-library cl-bullet2l)

(defun cl-bullet2l-lispify (identifier expression &optional package)
  (when (equal (subseq identifier 0 4) "new_")
    (setf identifier (concatenate 'string (subseq identifier 4) "*")))
  (when (or (equal (subseq identifier 0 3) "bt_")
            (equal (subseq identifier 0 3) "bt-"))
    (setf identifier (subseq identifier 3)))
  (when (equal (subseq identifier 0 2) "bt")
    (setf identifier (subseq identifier 2)))
  (swig-lispify identifier expression package))


%}

%insert ("header")
%{

#include "btBulletCollisionCommon.h"
#include "btBulletDynamicsCommon.h"

%}

%include "btBulletCollisionCommon.h"
%include "btBulletDynamicsCommon.h"
%include "LinearMath/btScalar.h"
%include "BulletCollision/CollisionDispatch/btCollisionWorld.h"
%include "BulletCollision/CollisionDispatch/btCollisionObject.h"
%include "BulletCollision/CollisionShapes/btBoxShape.h"
%include "BulletCollision/CollisionShapes/btSphereShape.h"
%include "BulletCollision/CollisionShapes/btCapsuleShape.h"
%include "BulletCollision/CollisionShapes/btCylinderShape.h"
%include "BulletCollision/CollisionShapes/btConeShape.h"
%include "BulletCollision/CollisionShapes/btStaticPlaneShape.h"
%include "BulletCollision/CollisionShapes/btConvexHullShape.h"
%include "BulletCollision/CollisionShapes/btTriangleMesh.h"
%include "BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h"
%include "BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h"
%include "BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h"
%include "BulletCollision/CollisionShapes/btTriangleMeshShape.h"
%include "BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h"
%include "BulletCollision/CollisionShapes/btCompoundShape.h"
%include "BulletCollision/CollisionShapes/btTetrahedronShape.h"
%include "BulletCollision/CollisionShapes/btEmptyShape.h"
%include "BulletCollision/CollisionShapes/btMultiSphereShape.h"
%include "BulletCollision/CollisionShapes/btUniformScalingShape.h"
%include "BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h"
%include "BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h"
%include "BulletCollision/CollisionDispatch/btCollisionDispatcher.h"
%include "BulletCollision/BroadphaseCollision/btSimpleBroadphase.h"
%include "BulletCollision/BroadphaseCollision/btAxisSweep3.h"
%include "BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h"
%include "BulletCollision/BroadphaseCollision/btDbvtBroadphase.h"
%include "LinearMath/btQuaternion.h"
%include "LinearMath/btTransform.h"
%include "LinearMath/btDefaultMotionState.h"
%include "LinearMath/btQuickprof.h"
%include "LinearMath/btIDebugDraw.h"
%include "LinearMath/btSerializer.h"
%include "btBulletCollisionCommon.h"
%include "BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h"
%include "BulletDynamics/Dynamics/btSimpleDynamicsWorld.h"
%include "BulletDynamics/Dynamics/btRigidBody.h"
%include "BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h"
%include "BulletDynamics/ConstraintSolver/btHingeConstraint.h"
%include "BulletDynamics/ConstraintSolver/btConeTwistConstraint.h"
%include "BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h"
%include "BulletDynamics/ConstraintSolver/btSliderConstraint.h"
%include "BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h"
%include "BulletDynamics/ConstraintSolver/btUniversalConstraint.h"
%include "BulletDynamics/ConstraintSolver/btHinge2Constraint.h"
%include "BulletDynamics/ConstraintSolver/btGearConstraint.h"
%include "BulletDynamics/ConstraintSolver/btFixedConstraint.h"
%include "BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h"
%include "BulletDynamics/Vehicle/btRaycastVehicle.h"
