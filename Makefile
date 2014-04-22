all: libcl-bullet2l.so

clean:	
	git clean -X -f
	-$(MAKE) -C ./bullet2 clean
	cd bullet2; git clean -X -f
	-$(RM) -rf bullet2/ld/*

bullet.lisp: $(shell find ./bullet2/ -name \*.h) cl-bullet2l.i
	swig -c++ -Wall \
		-DBT_USE_DOUBLE_PRECISION \
		-I./bullet2/ld/include/bullet -I./bullet2/src \
		-outcurrentdir \
		-v -cffi cl-bullet2l.i

./bullet2/configure:	./bullet2/autogen.sh
	cd ./bullet2; CXXFLAGS=-DBT_USE_DOUBLE_PRECISION ./autogen.sh

./bullet2/Makefile:	./bullet2/configure
	cd ./bullet2; CXXFLAGS=-DBT_USE_DOUBLE_PRECISION \
		./configure --prefix=$$(pwd)/ld \
		--enable-static --enable-shared --enable-debug

./bullet2/ld/lib/libBulletCollision.a: ./bullet2/Makefile
	CXXFLAGS=-DBT_USE_DOUBLE_PRECISION $(MAKE) -C ./bullet2
	CXXFLAGS=-DBT_USE_DOUBLE_PRECISION $(MAKE) -C ./bullet2 install

cl-bullet2l_wrap.cxx: ./bullet2/ld/lib/libBulletCollision.a \
	cl-bullet2l.i
	swig -c++ -Wall \
		-DBT_USE_DOUBLE_PRECISION \
		-I./bullet2/ld/include/bullet \
		-outcurrentdir \
		-v -cffi cl-bullet2l.i

CXXFLAGS += -I ./bullet2/ld/include/bullet
CXXFLAGS += -I ./bullet2/src
CXXFLAGS += -l ./bullet2/ld/lib
CXXFLAGS += -fPIC -Wl,--gc-sections -shared
CXXFLAGS += -DBT_USE_DOUBLE_PRECISION

libcl-bullet2l.so:	cl-bullet2l_wrap.o	\
	scalars.o	\
	./bullet2/ld/lib/libBulletCollision.a
	$(CXX) -shared \
		-lstdc++ \
		-lm -lc -shared-libgcc \
		cl-bullet2l_wrap.o \
		scalars.o \
		bullet2/src/.libs/*.o \
		-o $@
# 		--whole-archive \
		-L ./bullet2/ld/lib/libBulletSoftBody.a	\
		-L ./bullet2/ld/lib/libBulletDynamics.a	\
		-L ./bullet2/ld/lib/libBulletCollision.a	\
		-L ./bullet2/ld/lib/libLinearMath.a	\

	nm -C libcl-bullet2l.so | grep '   U' | cut -c20- \
		| grep -v '@@CXXABI_' | grep -v '@@GLIBC_' \
		| grep -v '@@GLIBCXX_' | grep -v '@@GCC_' \
		| sort | uniq > unresolved
	wc -l unresolved | grep -q '0 unresolved' && false || true

%.o:	%.cxx
	$(CXX) $(CXXFLAGS) -c $^ -o $@

cl-bullet2l_wrap.o:	cl-bullet2l_wrap.cxx
	$(CXX) $(CXXFLAGS) -c $^ -o $@



