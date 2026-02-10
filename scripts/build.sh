#!/bin/sh

echo "Building Drogon Server..."
rm -rf build && mkdir -p build
cd build && cmake .. && make -j$(sysctl -n hw.ncpu)
cd ..