mkdir -p build_ios && cd build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM=OS64 -GXcode ../../
cd ..
cmake --build build_ios --config Release
mkdir -p ./Plugins/iOS/
cp ./build_ios/Release-iphoneos/libboost_context.a ./Plugins/iOS/libboost_context.a

