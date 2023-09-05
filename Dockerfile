FROM docker:24.0

LABEL maintainer="sobolevn@wemake.services"
LABEL vendor="wemake.services"

ENV PIP_NO_CACHE_DIR=1 \
  PIP_DISABLE_PIP_VERSION_CHECK=1 \
  PIP_DEFAULT_TIMEOUT=100

# Installing system deps:
RUN apk update && apk upgrade \
  && apk add --no-cache \
       # Installing Python:
       python3 python3-dev \
       # Installing build deps:
       libffi-dev openssl-dev build-base git curl bash \
       # Installing Rust (latest cryptography requires it):
       cargo gcc musl-dev \
  # Installing pip:
  && curl 'https://bootstrap.pypa.io/get-pip.py' -o get-pip.py \
  && python3 get-pip.py \
  && rm get-pip.py


WORKDIR /build
COPY requirements.txt /build/requirements.txt

# Installing Python dependencies:
RUN pip3 install -U pip \
  && pip3 install -r requirements.txt \
  && rm requirements.txt
