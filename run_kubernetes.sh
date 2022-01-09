#!/usr/bin/env bash
dockerpath=ashish223281/devops
# Run the Docker Hub container with kubernetes
#kubectl run container --image=$dockerpath --image-pull-policy="Always"
kubectl create deployment udacityproject1 --image=$dockerpath



# Step 3:
# List kubernetes pods
kubectl get pods

sleep 5

# Step 4:
# Forward the container port to a host

kubectl port-forward udacityproject1-64456c757b-86rzt 8080:80
