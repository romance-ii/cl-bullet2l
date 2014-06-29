#include "btBulletCollisionCommon.h"
#include "btBulletDynamicsCommon.h"


extern "C" btScalar
b2l_peek (btScalar* pointer) {
  return *pointer;
}

extern "C" btScalar*
b2l_poke (btScalar value) {
  btScalar* pointer = (btScalar*) malloc (sizeof (btScalar));
  *pointer = value;
  return pointer;
}

extern "C" btVector3*
b2l_makeVector3 (btScalar x, btScalar y, btScalar z)
{
  try {
    return (new btVector3 (x, y, z));
  } catch (...) {
    return NULL;
  }
}


/* These should not be here, but they're stubbed in to keep from
   having them as undefined symbols (for now) */

#include "BulletCollision/BroadphaseCollision/btAxisSweep3.h"

template <>
void
btAxisSweep3Internal<unsigned int>
::processAllOverlappingPairs (btOverlapCallback* x)
{ }

template <>
void
btAxisSweep3Internal<unsigned short>
::processAllOverlappingPairs (btOverlapCallback* x)
{ }

void
CProfileIterator::Enter_Largest_Child () {}

#include "BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h"

void
btMultiSapBroadphase
::quicksort (btAlignedObjectArray<btBroadphasePair>& x,
             int y, int z) {}

