#!/bin/bash

# Deployment script for landing page
# Usage: ./deploy.sh [production|staging|local]

set -e

ENVIRONMENT=${1:-production}
IMAGE_NAME="landing-page"
TAG=${2:-latest}

echo "🚀 Starting deployment for $ENVIRONMENT environment..."

# Build the Docker image
echo "📦 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

case $ENVIRONMENT in
  "production")
    echo "🏭 Deploying to production..."
    # Stop existing container if running
    docker-compose down || true
    # Start new containers
    docker-compose up -d
    echo "✅ Production deployment completed!"
    echo "🌐 Application is available at http://localhost:3000"
    ;;
  
  "staging")
    echo "🧪 Deploying to staging..."
    # You can add staging-specific deployment commands here
    docker run -d -p 3001:3000 --name landing-page-staging $IMAGE_NAME:$TAG
    echo "✅ Staging deployment completed!"
    echo "🌐 Staging application is available at http://localhost:3001"
    ;;
  
  "local")
    echo "💻 Running locally..."
    docker run -p 3000:3000 --name landing-page-local $IMAGE_NAME:$TAG
    ;;
  
  *)
    echo "❌ Unknown environment: $ENVIRONMENT"
    echo "Usage: ./deploy.sh [production|staging|local] [tag]"
    exit 1
    ;;
esac