#!/bin/bash

# Exit on error
set -e

cd ./test/integration/

# Start Docker Compose
echo "Starting Docker Compose..."
docker compose -f docker-compose.yml up -d

# Wait for MySQL to be ready
echo "Waiting for MySQL..."
until docker exec integration-mysql-1 mysqladmin ping -hlocalhost -utest_user -ptest_password --silent; do
  echo "MySQL not ready yet, waiting..."
  sleep 2
done
echo "MySQL is ready"

# Wait for MongoDB to be ready
echo "Waiting for MongoDB..."
until docker exec integration-mongodb-1 mongosh --eval "db.runCommand({ ping: 1 })" --quiet; do
  echo "MongoDB not ready yet, waiting..."
  sleep 2
done
echo "MongoDB is ready"

echo "Running integration tests..."

npx jest test/integration

echo "Integration tests completed."

# Clean up
echo "Stopping Docker Compose..."
docker compose -f docker-compose.yml down
echo "Cleanup complete"
