FROM alpine:3.10.4

ARG GRAPHVIZ_VERSION=2.40.1-r1

WORKDIR /graphviz

RUN apk add --update graphviz=$GRAPHVIZ_VERSION font-bitstream-type1 ghostscript-fonts \
 && rm -rf /var/cache/apk/* \
 && dot -V
