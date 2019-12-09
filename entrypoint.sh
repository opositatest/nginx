#!/bin/bash

cp -rf /etc/nginx/configuration/$APP_ENV/* /etc/nginx/conf.d/

echo "Starting: $@"

exec "$@"
