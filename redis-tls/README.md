# redis-tls

This component implements a redis that listens on a TLS port.

It assumes the existence of a `kubernetes.io/tls`-type secret named `redis-tls`
that gets mounted as a volume named `redis-certificates`. If you create multiple
instances of this component that need separate certificates, you should probably
patch the volume to point at a different secret.

This secret MUST have `tls.crt`, `tls.key` and `ca.crt` files, or you must patch
the redis-certificates volume to something that contains these (either another
secret or a projected volume).

You also need to have a `Generic`-type `secretGenerator` named `redis`, with two keys:

- `redis-url`: a full redis URL, including auth string (eg `rediss://:abcd1234@redis.ns.svc.cluster.local:6378/0`)
- `redis-password`: the bare password on its own (eg `abcd1234`)
