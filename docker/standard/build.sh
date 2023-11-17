#!/bin/bash

IMAGE_VERSION='0.3.1'

docker rmi -f jorvis/gales-gce
docker build --no-cache -t jorvis/gales-gce:latest -t jorvis/gales-gce:${IMAGE_VERSION} .
docker images

echo "If ready for release, run: "
echo "  docker push jorvis/gales-gce:latest"
echo "  docker push jorvis/gales-gce:${IMAGE_VERSION}"

echo "  git tag v${IMAGE_VERSION} && git push --tags"
