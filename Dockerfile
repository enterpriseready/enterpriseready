FROM alpine:3.4

# Forked from https://github.com/jojomi/docker-hugo

ENV HUGO_VERSION=0.17

RUN apk add --update wget ca-certificates python py-pip && \
  cd /tmp/ && \
  wget https://github.com/spf13/hugo/releases/download/v0.17/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

RUN pip install Pygments

COPY ./hack/run.sh /run.sh

VOLUME /src
VOLUME /output

WORKDIR /src
CMD ["/run.sh"]

EXPOSE 1313