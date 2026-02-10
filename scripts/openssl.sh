#!/bin/bash

# Generate SSL certificates for Drogon HTTPS server

mkdir -p ssl

# Generate self-signed certificate
openssl req -x509 -newkey rsa:4096 \
    -keyout ssl/server.key \
    -out ssl/server.crt \
    -days 365 \
    -nodes \
    -subj "/C=US/ST=State/L=City/O=Development/CN=localhost"

echo "SSL certificates generated:"
echo "  ssl/server.crt"
echo "  ssl/server.key"