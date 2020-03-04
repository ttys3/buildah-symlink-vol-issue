#/bin/sh

IMAGE_NAME=80x86/buildah-symlink-vol-issue

echo "begin build base version ..." && \
podman image rm -f ${IMAGE_NAME}:base

podman image prune -f && \
buildah bud --format=docker \
--network host -f ./Containerfile -t ${IMAGE_NAME}:base . && \
echo "end build base version ..."
