FROM alpine:3.11.3

ARG GRAPHVIZ_VERSION=2.42.3-r0

WORKDIR /graphviz

RUN apk add --update graphviz=$GRAPHVIZ_VERSION font-bitstream-type1 ghostscript-fonts \
 && rm -rf /var/cache/apk/* \
 && dot -V
