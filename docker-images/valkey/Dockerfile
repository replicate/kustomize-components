# syntax=docker/dockerfile:1.4

FROM valkey/valkey:8.1-alpine
RUN apk add --no-cache bash bind-tools jq

COPY valkey-entrypoint/ /opt/valkey/entrypoint/
RUN chmod +x /opt/valkey/entrypoint/*

ENTRYPOINT ["/opt/valkey/entrypoint/entrypoint"]
