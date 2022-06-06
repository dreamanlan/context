mkdir build64 & pushd build64
cmake -G "Visual Studio 15 2017" -A x64 ..\..
popd
cmake --build build64 --config Debug --target boost_context ZERO_CHECK

md Plugins\x86_64
copy /Y build64\Debug\boost_context.lib Plugins\x86_64\boost_context.lib

rem rmdir /s /q .\build64

pause