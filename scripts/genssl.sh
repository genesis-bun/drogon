#!/bin/bash

# Generate SSL certificates for Drogon HTTPS server

rm -rf lib/ssl && mkdir -p lib/ssl

# Generate self-signed certificate
openssl req -x509 -newkey rsa:4096 \
    -keyout lib/ssl/server.key \
    -out lib/ssl/server.crt \
    -days 365 \
    -nodes \
    -subj "/C=US/ST=State/L=City/O=Development/CN=drogo"

echo "SSL certificates generated:"
echo "  lib/ssl/server.crt"
echo "  lib/ssl/server.key"