# docker-node (alpine linux)

[![Security](https://github.com/zeroconfigio/docker-node/actions/workflows/anchore.yml/badge.svg?branch=main)](https://github.com/zeroconfigio/docker-node/actions/workflows/anchore.yml)
[![Hadolint](https://github.com/zeroconfigio/docker-node/actions/workflows/hadolint.yml/badge.svg?branch=main)](https://github.com/zeroconfigio/docker-node/actions/workflows/hadolint.yml)
[![Publish](https://github.com/zeroconfigio/docker-node/actions/workflows/publish.yml/badge.svg?branch=main)](https://github.com/zeroconfigio/docker-node/actions/workflows/publish.yml)

## Unofficial Docker image for NodeJS (alpine linux) deployments

### Contents

- Alpine Linux
- Python3
- Node (multiple versions)
- awscli

### Architectures

#### Supported

- amd64
- arm64/v8

#### Not Supported

- arm/v7
- arm/v6
- ppc64le
- s390x


## Usage

Command:

```bash
docker run -it --rm zeroconfigio/node:16-alpine "node --version"
```

Output Example:

```bash
v16.20.0
```

## Author

[ZeroConfig.io](https://github.com/zeroconfigio)

## License

MIT Licensed. See [LICENSE](https://github.com/zeroconfigio/docker-node/blob/master/LICENSE) for full details.
