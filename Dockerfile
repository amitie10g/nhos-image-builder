FROM alpine:edge
RUN apk add --no-cache qemu-img sgdisk parted xxhash
COPY entrypoint /entrypoint
VOLUME /root
WORKDIR /root
ENV NHOS_VERSION=1.1.6
ENTRYPOINT ["/entrypoint"]
