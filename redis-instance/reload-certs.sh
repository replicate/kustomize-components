#!/bin/sh

set -eu

apk add --no-cache redis

# Note: using REDIS_URL works because we know there's a single replica.
# If we ever introduce read replicas, we'd need to connect to each one to force cert reload.
redis_args="-e --tls -u $REDIS_URL"

if [ -e /srv/redis-ca-bundle/ca-certs.crt ]; then
    redis_args="$redis_args --cacert /srv/redis-ca-bundle/ca-certs.crt"
fi

redis-cli $redis_args --raw CONFIG GET tls-key-file | tail -n1 | head -c -1 | redis-cli $redis_args -x CONFIG SET tls-key-file
