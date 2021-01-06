FROM mesosphere/aws-cli as PKG

RUN apk --no-cache add openssl \
    && wget -q -O kubectl https://storage.googleapis.com/kubernetes-release/release/v1.20.0/bin/linux/amd64/kubectl \
    && wget -q -O gomplate https://github.com/hairyhenderson/gomplate/releases/download/v2.4.0/gomplate_linux-amd64-slim \
    && chmod +x kubectl gomplate \
    && mv kubectl gomplate /usr/local/bin

ENTRYPOINT ["/bin/sh","-c"]
CMD [""]
USER 1234567890

WORKDIR /tmp