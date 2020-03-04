
```
❯ sudo ./build-base.sh
begin build base version ...
STEP 1: FROM alpine:3.11
STEP 2: RUN mkdir -p /home/app/.config/qBittorrent  && touch /home/app/.config/qBittorrent/.not-mapped  && ln -s /home/app/.config/qBittorrent /config
STEP 3: VOLUME ["/config"]
STEP 4: COMMIT 80x86/buildah-symlink-vol-issue:base
Getting image source signatures
Copying blob 5216338b40a7 skipped: already exists  
Copying blob db8513c3145d done  
Copying config d003e1c82c done  
Writing manifest to image destination
Storing signatures
d003e1c82c95655300171875baa24b2eb79da2304e5f05e31cf8b7541980492f
d003e1c82c95655300171875baa24b2eb79da2304e5f05e31cf8b7541980492f
end build base version ...
```


```
❯ sudo ./build-second.sh
begin build second version ...
STEP 1: FROM 80x86/buildah-symlink-vol-issue:base
STEP 2: RUN apk --update add --no-cache wget
error building at STEP "RUN apk --update add --no-cache wget": error resolving mountpoints for container "24fbbdfe233f0a36a4107ba61361af41b11c61502c741fcf0c90d718aba1c882": error creating directory "/var/lib/containers/storage/overlay/a2a7c5fb57492ee7f06061acf53699198624d31e57cd3e8dd49fb3e7a4028356/merged/config" for volume "/config": chown /var/lib/containers/storage/overlay/a2a7c5fb57492ee7f06061acf53699198624d31e57cd3e8dd49fb3e7a4028356/merged/config: no such file or directory
```