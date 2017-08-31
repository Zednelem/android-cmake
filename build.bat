@echo off
cls
del /F /Q CMakeCache.txt CMakeFiles
mkdir build
cd build
@echo on
cmake -DCMAKE_TOOLCHAIN_FILE=%ANDROID_NDK_HOME%\build\cmake\android.toolchain.cmake ^
      -DANDROID_NDK=%ANDROID_NDK_HOME%                       ^
      -DCMAKE_BUILD_TYPE=Debug                     ^
      -DANDROID_ABI="armeabi"          ^
      -DANDROID_PLATFORM=android-21          ^
      -DANDROID_API=android-21          ^
      -DCMAKE_MAKE_PROGRAM=%ANDROID_HOME%\cmake\3.6.4111459\bin\ninja.exe ^
      -GNinja ..
 ::     -DCMAKE_CXX_FLAGS="-std=c++11 -frtti -fexceptions" .

cmake --build .
cd ..