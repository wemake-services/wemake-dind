# wemake-dind

[![wemake.services](https://img.shields.io/badge/%20-wemake.services-green.svg?label=%20&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABGdBTUEAALGPC%2FxhBQAAAAFzUkdCAK7OHOkAAAAbUExURQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP%2F%2F%2F5TvxDIAAAAIdFJOUwAjRA8xXANAL%2Bv0SAAAADNJREFUGNNjYCAIOJjRBdBFWMkVQeGzcHAwksJnAPPZGOGAASzPzAEHEGVsLExQwE7YswCb7AFZSF3bbAAAAABJRU5ErkJggg%3D%3D)](https://wemake.services)
[![test](https://github.com/wemake-services/wemake-dind/workflows/test/badge.svg)](https://github.com/wemake-services/wemake-dind/actions?query=workflow%3Atest)
[![Dockerhub](https://img.shields.io/docker/pulls/wemakeservices/wemake-dind.svg)](https://hub.docker.com/r/wemakeservices/wemake-dind/) 
[![image size](https://images.microbadger.com/badges/image/wemakeservices/wemake-dind.svg)](https://microbadger.com/images/wemakeservices/wemake-dind) 

Our docker-in-docker image with Python.


## Usage

We use this image in our GitLab-based builds. Like:

- [`wemake-django-template`](https://github.com/wemake-services/wemake-django-template/blob/master/%7B%7Bcookiecutter.project_name%7D%7D/.gitlab-ci.yml#L14)
- [`wemake-vue-template`](https://github.com/wemake-services/wemake-vue-template/blob/master/template/.gitlab-ci.yml#L9)

It really helps us to speed up the build and fix possible errors in one place.


## Tags

We use tags, however in this particular case we enforce using `:latest`.
It should always just work.

Our tag policy is:
- First two version numbers are identical to the `docker` version tag, so `FROM docker:20.10` will always produce `wemake-dind:20.10.x`
- The last version number is a patch release, it is our custom one and is not related to `docker` tags at all
