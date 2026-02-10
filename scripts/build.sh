#!/bin/bash

# Exit on any error
set -e  

echo "Building Drogon Server..."
rm -rf build
mkdir -p build
cd build
cmake ..
make -j$(sysctl -n hw.ncpu)
cd ..

echo "Building React frontend..."
cd src
bun install --production
bun run build
cd ..

echo "⚡ Server started.."
cd build
./drogo
