#/bin/sh

IMAGE_NAME=80x86/buildah-symlink-vol-issue

echo "begin build workaround version ..." && \
podman image exists ${IMAGE_NAME}:workaround && podman image rm -f ${IMAGE_NAME}:workaround

podman image prune -f && \
buildah bud --format=docker \
--network host -f ./Containerfile.workaround -t ${IMAGE_NAME}:workaround . && \
echo "end build workaround version ..."
