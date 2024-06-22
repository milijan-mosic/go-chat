#!/bin/bash




set -e

docker pull alpine:3.20
docker run -it -p 8080:8080 alpine:3.20
