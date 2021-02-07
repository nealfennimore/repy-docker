#! /bin/bash

# shellcheck disable=SC1091
source "/root/.profile"

for file in /root/src/*.r2py; do
    ln -sf "$file" "/root/repy/$(basename "$file")"
done

exec "$@"