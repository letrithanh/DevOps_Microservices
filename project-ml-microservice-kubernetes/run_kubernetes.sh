#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
dockerpath=ltthanhdev/udacity-fourth-project:1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment.yml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/fourth-project 8000:80
