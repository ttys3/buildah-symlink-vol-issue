FROM alpine:3.11

# Create symbolic links to simplify mounting
 RUN mkdir -p /home/app/.config/qBittorrent \
 && touch /home/app/.config/qBittorrent/.not-mapped \
 && ln -s /home/app/.config/qBittorrent /config

 # ...

 VOLUME ["/config"]


# vim: set ft=dockerfile ts=4 sw=4 et: