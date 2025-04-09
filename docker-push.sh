#!/bin/bash

# Step 1: Build JARs
for d in service-registry user-service order-service api-gateway; do
  echo "Building JAR for $d..."
  (cd $d && mvn clean package -DskipTests)
done

# Step 2: Build Docker images
docker-compose build

# Step 3: Tag images
docker tag service-registry anirudhnallala/service-registry:latest
docker tag user-service anirudhnallala/user-service:latest
docker tag order-service anirudhnallala/order-service:latest
docker tag api-gateway anirudhnallala/api-gateway:latest

# Step 4: Login
echo "🔐 Login to Docker Hub..."
docker login

# Step 5: Push images
docker push anirudhnallala/service-registry:latest
docker push anirudhnallala/user-service:latest
docker push anirudhnallala/order-service:latest
docker push anirudhnallala/api-gateway:latest

