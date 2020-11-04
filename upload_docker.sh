#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub


# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="bamuse/udacity_pro4"

# Step 2:  
# Authenticate & tag
docker login  --username "bamuse" &&\
docker image tag myapp  $dockerpath

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push bamuse/udacity_pro4