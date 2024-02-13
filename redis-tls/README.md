# redis-tls

This component implements a redis that listens on a TLS port.

It assumes the existence of a `kubernetes.io/tls`-type secret named `redis-tls`
that gets mounted as a volume named `redis-certificates`. If you create multiple
instances of this component that need separate certificates, you should probably
patch the volume to point at a different secret.

This secret MUST have `tls.crt`, `tls.key` and `ca.crt` files, or you must patch
the redis-certificates volume to something that contains these (either another
secret or a projected volume).
