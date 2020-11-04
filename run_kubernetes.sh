#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="bamuse/udacity_pro4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run  make-pred --image=$dockerpath --generator=run-pod/v1 --port=80 --labels app=make-pred


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward make-pred 8000:80

