all: bullet-physics-clos.lisp libcl-bullet2l.so

clean:	
	rm -f $(shell cat .gitignore)

bullet-physics-clos.lisp: $(shell find ../bullet2/ -name \*.h) cl-bullet2l.i
	./build

cl-bullet2l_wrap.cxx: ../bullet2/ld/lib/libBulletCollision.a \
	../bullet2/ld/lib/libBulletDynamics.a \
	cl-bullet2l.i
	./build

CXXFLAGS += -I ../bullet2/ld/include/bullet
CXXFLAGS += -I ../bullet2/src
CXXFLAGS += -l ../bullet2/ld/lib
CXXFLAGS += -fPIC

libcl-bullet2l.so:	cl-bullet2l_wrap.o \
	../bullet2/ld/lib/libBulletCollision.a \
	../bullet2/ld/lib/libBulletDynamics.a
	$(CXX) -shared \
		cl-bullet2l.o \
		-L../bullet2/ld/lib/libBulletCollision.a \
		-L../bullet2/ld/lib/libBulletDynamics.a \
		-o $@