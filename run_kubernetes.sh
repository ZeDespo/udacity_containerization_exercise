#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=adespotakis/udacity_ml_app
podname=udacity-ml-app
podpath=${podname}-64dbfc66c6-tjhrs

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $podname --image $dockerpath --port 80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $podpath 8000:80
