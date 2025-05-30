FROM docker:28.2.1

LABEL maintainer="mail@sobolevn.me"
LABEL vendor="wemake.services"

ENV PIP_NO_CACHE_DIR=1 \
  PIP_DISABLE_PIP_VERSION_CHECK=1 \
  PIP_DEFAULT_TIMEOUT=100

# Installing system deps:
RUN apk update && apk upgrade \
  && apk add --no-cache \
       # Installing Python:
       python3 python3-dev py3-pip \
       # Installing build deps:
       libffi-dev openssl-dev build-base git curl bash \
       # Installing Rust (latest cryptography requires it):
       cargo gcc musl-dev


WORKDIR /build
COPY requirements.txt /build/requirements.txt

# Installing Python dependencies:
RUN pip3 install -r requirements.txt --break-system-packages \
  && rm requirements.txt
