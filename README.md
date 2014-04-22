cl-bullet2l
===========

Common Lisp bindings to Bullet Physics 2.8x

“Bullet 2 for Lisp” = “BULLET2L”


What this is
------------

Bullet Physics http://bulletphysics.org/ is a rather complete physics
model written in C++.

This project provides a thin, and hopefully somewhat effecient,
wrapper layer binding the C++ objects to Common Lisp objects.

The low-level "C" wrapper functions are being generated using SWIG;
the higher-level Lisp bindings were originally created by SWIG, but
probably due as much to my own inexperience with SWIG as the horrors
of binding anything to C++, have been largely hand-rewritten on the
upper (CLOS) level.

The lower (C-wrapper-wrapper) layer is a nightmare of auto-generated
and hand-tweaked functions with names that bring fear to all who
invoke them. I'm sorry.

Does it work?
-------------

No. No, it doesn't. Not yet…

Precision
---------

This is designed for Bullet compiled in double-precision (only).


Documentation
-------------

There really isn't much/any documentation just yet. However, the C++
documentation should be somewhat useful.

In general, you can find (make-instance 'bullet:CLASS …) replaces the
C++ "new btCLASS"

All classes and functions have been stripped of their "bt" or "m_"
prefixes, and naturally, make-instance takes keyword arguments that
more-or-less match the C++ arguments' names.

Most names have been decorated appropriately and methods often have a
number of keyword arguments available, particularly if they're set up
with a lot of overridden methods in C++.

I intend to have some documentation incorporated at some point.

License
-------

This really isn't worth licensing. I've placed it under the CC-0
(public domain) license. However, Bullet itself has an MIT-style
license (q.v.)

Author
------

Bruce-Robert Fenn Pocock
GitHub: brpocock

Home Page
---------

Github is pretty much “it.” http://github.com/romance-ii/cl-bullet2l


