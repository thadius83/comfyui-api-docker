#!/bin/bash
# Update ComfyUI to latest version inside the container

set -e

CONTAINER="comfyui-standalone"

echo "Updating ComfyUI..."
docker exec $CONTAINER git -C /root/ComfyUI pull

echo "Updating requirements..."
docker exec $CONTAINER pip install -r /root/ComfyUI/requirements.txt

echo "Restarting container..."
docker restart $CONTAINER

echo "Done. Waiting for startup..."
sleep 5
docker logs --tail 20 $CONTAINER
