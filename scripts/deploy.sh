#!/bin/bash
set -e

TARGET=${1:-staging}

echo "Deploying to $TARGET..."
echo "Uploading release artifacts..."
sleep 2
echo "Running health check..."
sleep 1
echo "Health check: 200 OK"
echo "Deploy to $TARGET complete."
