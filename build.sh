#!/bin/bash




set -e

docker build -t chat_app .
# docker run -p 8080:8080 chat_app
