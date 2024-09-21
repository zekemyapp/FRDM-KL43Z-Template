#!/bin/sh
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE="${MCUX_SDK_DIR}/tools/cmake_toolchain_files/armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=debug  ..
make -j
cmake -DCMAKE_TOOLCHAIN_FILE="${MCUX_SDK_DIR}/tools/cmake_toolchain_files/armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=release  ..
make -j
