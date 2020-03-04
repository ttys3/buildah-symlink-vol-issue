#/bin/sh

IMAGE_NAME=80x86/buildah-symlink-vol-issue

echo "begin build second version ..." && \
podman image rm -f ${IMAGE_NAME}:second

podman image prune -f && \
buildah bud --format=docker \
--network host -f ./Containerfile.second -t ${IMAGE_NAME}:second . && \
echo "end build second version ..."