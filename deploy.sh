#!/bin/bash

# Exit on any error
set -e  

echo "Building Drogon Server..."
mkdir -p build
cd build
cmake ..
make -j$(nproc)
cd ..

echo "Building React frontend..."
cd src
bun install --production
bun run build
cd ..

echo "⚡ Server running on port 5555"
cd build
./drogo
