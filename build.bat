

@ECHO OFF

rem ant

SETLOCAL

mkdir src\swigtest1\generated
del src\swigtest1\generated\*.java
swig -c++ -java -package swigtest1.generated -outdir src\swigtest1\generated swigdll\swigdll.i

SET VCDIR=C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC
call "%VCDIR%\vcvarsall.bat" x86
rem call "%VCDIR%\vcvarsall.bat" x64

echo on

Devenv swigdll\swigdll.sln /rebuild Release
IF ERRORLEVEL 1 GOTO ERR

rem copy mylib\Release\mylib.dll src\

copy swigdll\Release\*.dll .\

mkdir src\swigtest1\generated
copy swigdll\*.java src\swigtest1\generated\

call ant jar

java -jar dist\SwigTest1.jar

goto SUCCESS

:SUCCESS
echo 正常に終了しました。
goto END

:ERR
echo エラーが発生しました。
goto END

:END

ENDLOCAL

PAUSE
