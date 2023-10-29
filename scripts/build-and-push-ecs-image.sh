#!/bin/bash

# Exit on any error
set -e

# Get .env file values
eval $(egrep -v '^#' .env | xargs)

# Get the commit SHA
COMMIT_SHA=$(git rev-parse --short HEAD)

echo "$NPM_TOKEN"
# Login to Amazon ECR
echo "Logging in to Amazon ECR..."
aws ecr get-login-password | docker login --username AWS --password-stdin $ECR_REPOSITORY

# Build, tag, and push image to Amazon ECR

echo "Building image from Dockerfile.ecs..."
docker buildx build --platform linux/amd64 -f Dockerfile.ecs --build-arg NPM_TOKEN=$NPM_TOKEN -t $ECR_REPOSITORY:$COMMIT_SHA .
echo "Pushing image to ECR..."
docker push $ECR_REPOSITORY:$COMMIT_SHA
docker tag $ECR_REPOSITORY:$COMMIT_SHA $ECR_REPOSITORY:latest
docker push $ECR_REPOSITORY:latest

echo "Image pushed to ECR."
