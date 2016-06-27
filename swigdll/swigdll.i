/* http://web.mit.edu/svn/src/swig-1.3.25/Examples/java/class/index.html */
%module swigdll

%include "std_wstring.i"

%{
#include "SwigClass.h"
%}

%include "SwigClass.h"

%pragma(java) jniclasscode=%{
    static {
        System.loadLibrary("swigdll");
    }
%}
