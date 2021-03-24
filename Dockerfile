FROM alpine:latest

# Forked from https://github.com/jojomi/docker-hugo

# config
ENV HUGO_VERSION=0.82.0
#ENV HUGO_TYPE=
ENV HUGO_TYPE=_extended

ENV HUGO_ID=hugo${HUGO_TYPE}_${HUGO_VERSION}
RUN wget -O - https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ID}_Linux-64bit.tar.gz | tar -xz -C /tmp \
    && mkdir -p /usr/local/sbin \
    && mv /tmp/hugo /usr/local/sbin/hugo \
    && rm -rf /tmp/${HUGO_ID}_linux_amd64 \
    && rm -rf /tmp/LICENSE.md \
    && rm -rf /tmp/README.md

COPY ./hack/run.sh /run.sh

RUN apk add --update git asciidoctor libc6-compat libstdc++ \
    && apk upgrade \
    && apk add --no-cache ca-certificates \
    && chmod 0777 /run.sh

RUN apk add --update --no-cache wget py-pip

RUN pip install Pygments

VOLUME /src
VOLUME /output

WORKDIR /src
CMD ["/run.sh"]

EXPOSE 1313