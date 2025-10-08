#!/bin/bash
set -e

echo "Logging in to GitHub Container Registry..."
echo $GHCR_TOKEN | docker login ghcr.io -u abelfalcon --password-stdin

echo "Pulling latest images..."
docker pull ghcr.io/abelfalcon/frontend:latest
docker pull ghcr.io/abelfalcon/backend:latest

echo "Recreating containers..."
docker compose -f /home/ubuntu/devops-aws-demo/docker-compose.yml down || true
docker compose -f /home/ubuntu/devops-aws-demo/docker-compose.yml up -d

echo "Deployment complete!"
