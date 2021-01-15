FROM alpine:3.13.0

ENV RCLONE_VERSION=1.48.0

RUN apk add --no-cache --virtual=.build-deps wget \
    && wget "https://github.com/rclone/rclone/releases/download/v$RCLONE_VERSION/rclone-v$RCLONE_VERSION-linux-amd64.zip" -O rclone.zip \
    && unzip rclone.zip -d /tmp \
    && mv /tmp/rclone-v$RCLONE_VERSION-linux-amd64/rclone /bin/rclone \
    && apk del .build-deps \
    && rm rclone.zip \
    && rm -fr /tmp/rclone-v$RCLONE_VERSION-linux-amd64

# deps
RUN apk add --no-cache \
    ca-certificates

CMD ["rclone"]
