# kustomize-components

This is a set of components suitable for pulling in via kustomize.

See:

- [redis-base](./redis-base) - base config for redis with TLS (certs, cert rotation, network policies etc)
- [redis-instance](./redis-instance) - a thin wrapper around the redis helm
  chart. you may want to directly reference the values.yaml file and extend it
- [redis-tls](./redis-tls) - the above two, combined
- [valkey](./valkey) - a helm chart that provides standalone, HA, and sentinel mode valkey deployments

## development setup

Running `setup` will do _some things_:

```
./script/setup
```

And you will also need:

- [kind](https://kind.sigs.k8s.io/)
- [shfmt](https://github.com/mvdan/sh)
- [shellcheck](https://www.shellcheck.net/)
