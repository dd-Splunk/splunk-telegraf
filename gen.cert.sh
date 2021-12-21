#!/bin/bash
# Generate Self signed cert for this example
source .env
openssl req -x509 -newkey rsa:4096 -passout pass:${PRIVKEY_PASSWORD} -keyout certs/key.pem -out certs/cert.pem -days 365 -subj /CN=so1
