mkdir build
cd build

set CC=cl.exe
set CXX=cl.exe

cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE="Release" ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_LIBDIR=%LIBRARY_PREFIX%\lib ^
    -DLLVM_INCLUDE_TESTS=OFF ^
<<<<<<< HEAD
    -DLLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN=ON ^
    %SRC_DIR%/lld

=======
    %SRC_DIR%/lld
>>>>>>> forge/17.x
if %ERRORLEVEL% neq 0 exit 1

cmake --build . --target install
if %ERRORLEVEL% neq 0 exit 1
