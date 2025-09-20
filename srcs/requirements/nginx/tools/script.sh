#!/bin/sh

set -ex

mkdir -p /etc/nginx/certs 
openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 \
    -keyout /etc/nginx/certs/nginx.key \
    -out   /etc/nginx/certs/nginx.crt \
    -subj "/C=US/ST=State/L=BG/O=ExampleOrg/OU=msbai42/CN=msbai.42.fr"
