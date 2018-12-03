#!/bin/bash

#enable https redicection
if [[ ! "$HTTPS_FORCE" = "on" ]]; then
   echo "" > /etc/nginx/https_force.conf
fi

#enable https redicection
echo "Executing in $APP_ENV mode"
if [[ "$APP_ENV" = "dev" ]]; then
   echo "" > /etc/nginx/conf.d/20_non-www-redirect.conf
fi

echo "Starting: $@"

exec "$@"
