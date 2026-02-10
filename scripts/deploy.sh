#!/bin/bash

# Exit on any error
set -e  

./scripts/build.sh

echo "Building React frontend..."
cd src && bun i && bun run build
cd ..

./scripts/start.sh