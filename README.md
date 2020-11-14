# Docker-Gocover
Docker image for generating total coverage of all tests in a Go repository

## Usage

This is to be used from inside the root directory of a go project that is properly placed inside your gopath.

With go modules

```
docker run -v $PWD:/src gomicro/gocoverage
```

Without go modules

```
docker run -v $PWD:/go${PWD#"$GOPATH"} --workdir /go${PWD#"$GOPATH"} gomicro/gocoverage
```

## Versioning

The project will be versioned in accordance with [Semver 2.0.0](https://semver.org). See the [releases](https://github.com/gomicro/docker-gocover/releases) section for the latest version. Until version 1.0.0 the project is considered to be unstable.

It is always highly recommended to vendor the version you are using.

## License
See [LICENSE.md](./LICENSE.md) for more information.
