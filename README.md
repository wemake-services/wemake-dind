# wemake-dind

[![wemake.services](https://img.shields.io/badge/%20-wemake.services-green.svg?label=%20&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABGdBTUEAALGPC%2FxhBQAAAAFzUkdCAK7OHOkAAAAbUExURQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP%2F%2F%2F5TvxDIAAAAIdFJOUwAjRA8xXANAL%2Bv0SAAAADNJREFUGNNjYCAIOJjRBdBFWMkVQeGzcHAwksJnAPPZGOGAASzPzAEHEGVsLExQwE7YswCb7AFZSF3bbAAAAABJRU5ErkJggg%3D%3D)](https://wemake.services) 

Our docker-in-docker image with Python.


## Usage

We use this image in our GitLab-based builds. Like:

- [`wemake-django-template`](https://github.com/wemake-services/wemake-django-template/blob/master/%7B%7Bcookiecutter.project_name%7D%7D/.gitlab-ci.yml#L14)
- [`wemake-vue-template`](https://github.com/wemake-services/wemake-vue-template/blob/master/template/.gitlab-ci.yml#L9)

It really helps us to speed up the build and fix possible errors in one place.


## Tags

We use tags, however in this particular case we enforce using `:latest`.
It should always just work.
