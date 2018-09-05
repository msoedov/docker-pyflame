# Docker pyflame

[![](https://images.microbadger.com/badges/image/msoedov/pyflame:2.7.svg)](https://microbadger.com/images/msoedov/pyflame:2.7 "Get your own image badge on microbadger.com")
 [![Docker Pulls](https://img.shields.io/docker/pulls/msoedov/pyflame.svg?maxAge=2592000)](https://hub.docker.com/r/msoedov/pyflame/)

This is a [Docker](https://www.docker.com/) image for [Pyflame](https://github.com/uber/pyflame). This image runs with a base of [Python:2.7/3.5/3.6](https://hub.docker.com/_/python/) making it extremely convinient for development environment.

This image can also be found on [Docker Hub](https://hub.docker.com/r/msoedov/pyflame/).

## Usage


```shell

docker run -it --pid=host --privileged --cap-add SYS_PTRACE -v "$(pwd):/pyflame" msoedov/pyflame:2.7 bash
pyflame <PID> | flamegraph.pl > myprofile.svg

```
> * `--cap-add SYS_PTRACE` is required and denied by default within Docker images
> * `--pid=host` is required to allow container access processes of host machine
> * `--privileged` is required to solve `Failed to setns 4: Operation not permitted` problem

This is the bare minimum needed to use this image. Although further customization is made easier with a docker-compose file.
