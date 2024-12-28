@echo on

REM cmake install targets removed
REM https://github.com/dcleblanc/SafeInt/issues/67
mkdir %LIBRARY_PREFIX%\include
if errorlevel 1 exit 1

REM As of July, 2022, there is also a C library [...]
REM It consists of two files, safe_math.h, and safe_math_impl.h.
copy SafeInt.hpp %LIBRARY_PREFIX%\include\.
if errorlevel 1 exit 1
copy safe_math.h %LIBRARY_PREFIX%\include\.
if errorlevel 1 exit 1
copy safe_math_impl.h %LIBRARY_PREFIX%\include\.
if errorlevel 1 exit 1
