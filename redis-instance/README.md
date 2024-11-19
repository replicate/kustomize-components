# redis-tls

This component wraps the bitnami redis helm chart.

You may want to directly reference the values file so that you can override
specific values.  In particular you may want to override:

- `auth.existingSecret` to match a Secret you create
- `master.resources.limits.memory` and `commonConfiguration` (to set `maxmemory`)
- `tls.existingSecret` to match a Secret provided by redis-base

The value in `auth.existingSecret` needs to identify a `Generic`-type
`secretGenerator`, with two keys:

- `redis-url`: a full redis URL, including auth string (eg `rediss://:abcd1234@redis-master.$NAMESPACE.svc.cluster.local:6378/0`)
- `redis-password`: the bare password on its own (eg `abcd1234`)
