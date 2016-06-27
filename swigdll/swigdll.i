/* http://web.mit.edu/svn/src/swig-1.3.25/Examples/java/class/index.html */
%module swigdll

%include "std_wstring.i"

%{
#include "ResultClass.h"
#include "SwigClass.h"
%}

%include "vector.i"
%template(InteVector) std::vector<int>;
//%template(DoubleVector) std::vector<double>;
//%template(ByteVector) std::vector<signed char>;
%template(StringVector) std::vector<std::wstring>;



%include "ResultClass.h"
%include "SwigClass.h"

%pragma(java) jniclasscode=%{
    static {
        System.loadLibrary("swigdll");
    }
%}

%template(vecint) myvector<int>;
%template(vecdouble) myvector<double>;
