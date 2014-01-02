%module bullet2l

%feature("export","1");
%feature("intern_function","1");

%{

#include "../bullet2/ld/include/bullet/Bullet-C-Api.h"

%}

%include "../bullet2/ld/include/bullet/Bullet-C-Api.h"
