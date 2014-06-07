(asdf:defsystem :cl-bullet2l
  :description "Bullet Physics 2 Common Lisp bindings"
  :author "Bruce-Robert Fenn Pocock"
  :licence "CC-0 (Public Domain)"

  :depends-on (:alexandria :cffi :closer-mop)

  :encoding :utf-8

  :serial t
  
  ;; If anyone were to be so enthusiastic, it would be fantastic to:
  ;; 
  ;; 1. Work on splitting the DEFCFUN and DEFMETHOD forms related to
  ;;    each class or group of related classes into a single file, as
  ;;    has begun to happen for bt-collision-object and friends,
  ;;    rather than the unorganized soup of bt-wrap-*;
  ;;
  ;; 2. Create a proper dependency tree between modules, rather than
  ;;    relying upon the present brute-force approach of “:SERIAL T”
  ;;
  ;; 3. Inject proper type annotations into each file, using the CLOS
  ;;    class names matching up to each parameter or return type,
  ;;    rather than :POINTER (e.g. btCollisionObject maps to
  ;;    COLLISION-OBJECT)
  ;;
  ;; 4. Consider porting some functions, particularly any in which the
  ;;    overhead of calling into C++ begins to erode any benefits of
  ;;    the current implementation. At this point, I (BRFP; IANAL)
  ;;    would consider that CL-BULLET2L would thereby be “tainted”
  ;;    with the C++ implementation code and would transition to the
  ;;    MIT-style license of Bullet 2.
  
  :components
  ((:file "bullet-package")
   (:file "bt-load-libs")
   (:file "bt-classes")
   (:file "bt-scalar")
   (:file "bt-structs")
   (:file "bt-dvbt-broadphase")
   (:file "bt-generics")
   (:file "bt-param")
   (:file "bt-collision-object")
   (:file "bt-axis-sweep-3")
   (:file "bt-vector34")
   (:file "bt-matrix3x3")
   (:file "bt-dynamics-world")
   (:file "bt-rigid-body")
   (:file "bt-shapes")
   (:file "bt-wrap-a")
   (:file "bt-wrap-b")
   (:file "bt-wrap-c") 
   (:file "bt-wrap-d")
   (:file "bt-wrap-e")
   (:file "bt-wrap-f")
   (:file "bt-wrap-g"))
  
  :perform (asdf:compile-op :before (op component)
                            (asdf:run-shell-command "make -C ..")))

