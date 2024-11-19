# redis-base

This component implements base resources supporting a redis instance - but not the redis instance itself.

It creates a cert-manager Certificate object; you need to patch this certificate
to have the appropriate DNS name and issuer details.

You need to provide a `Generic`-type `secretGenerator` named `redis`, with two keys:

- `redis-url`: a full redis URL, including auth string (eg `rediss://:abcd1234@redis-master.$NAMESPACE.svc.cluster.local:6378/0`)
- `redis-password`: the bare password on its own (eg `abcd1234`)
