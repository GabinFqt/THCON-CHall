#!/bin/bash

# Éteindre les conteneurs
docker-compose down

# Reconstruire les conteneurs
docker-compose build

# Build and execute docker-compose
docker-compose up -d

# Create a new terminal for each container and execute a command : docker exec -it client bash
gnome-terminal -- docker exec -it part2 bash
gnome-terminal -- nc localhost 3002
