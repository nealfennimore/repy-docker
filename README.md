# Docker repy

Docker image for [repyv2](https://github.com/SeattleTestbed/repy_v2)

## Setup
[Install docker](https://docs.docker.com/get-docker/) on your system.


After installation, use a terminal pull down the latest image.
```sh
docker pull ghcr.io/nealfennimore/repy:latest
```

### Running

After installation, the following should return the help menu.

```sh
docker run -it --rm ghcr.io/nealfennimore/repy
```

### Building Locally

If you need to make changes to the build locally:

```sh
docker build . -t ghcr.io/nealfennimore/repy:latest
```

## Examples

See [loading source code](examples/loading-source-code)