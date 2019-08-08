# docker-rclone

## Usage

```sh
docker run --rm -it \
-v ~/.config:/root/.config \
-v /tmp/data:/app \
-w /app \
sstc/rclone \
/bin/sh
```
