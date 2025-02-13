#!/bin/bash

# Stop all running containers
echo "Stopping all running containers..."
docker stop $(docker ps -q)

# Remove all containers
echo "Removing all containers..."
docker rm $(docker ps -a -q)

# Remove all images
echo "Removing all images..."
docker rmi $(docker images -q)

# Remove all volumes
echo "Removing all volumes..."
docker volume rm $(docker volume ls -q)

# Remove all networks
echo "Removing all networks..."
docker network rm $(docker network ls -q)

# Prune unused Docker resources (includes containers, images, volumes, and networks)
echo "Pruning unused Docker resources..."
docker system prune -a --volumes --force

echo "Docker configuration cleanup complete."
