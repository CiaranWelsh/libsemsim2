echo ON
echo "Configuring the environment for x64 visual studio 16 2019 compilers"
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

echo "put all deps in INSTALL"
if not exist INSTALL  mkdir INSTALL

echo "building dependency package 1"
cd libsemsim-deps1
if not exist build mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" ..
MSBuild ALL_BUILD.vcxproj
MSBuild INSTALL.vcxproj
cd ../../
PAUSE

echo "building dependency package 2"
cd libsemsim-deps2
if not exist build mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" ..
MSBuild ALL_BUILD.vcxproj
MSBuild INSTALL.vcxproj
cd ../../
PAUSE


echo "building dependency package 3"
cd libsemsim-deps3
if not exist build mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" ..
MSBuild ALL_BUILD.vcxproj
MSBuild INSTALL.vcxproj
cd ../../
PAUSE


echo "building dependency package 4"
cd libsemsim-deps4
if not exist build mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" ..
MSBuild ALL_BUILD.vcxproj
MSBuild INSTALL.vcxproj
cd ../../
PAUSE







