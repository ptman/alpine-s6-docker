FROM alpine:3.12
LABEL author="John Regan <john@jrjrtech.com>"

COPY rootfs /

RUN wget https://github.com/just-containers/s6-overlay/releases/download/v2.0.0.1/s6-overlay-amd64.tar.gz -O /tmp/s6-overlay.tar.gz \
 && tar xvfz /tmp/s6-overlay.tar.gz -C / \
 && rm -f /tmp/s6-overlay.tar.gz

ENTRYPOINT [ "/init" ]
