#!/bin/sh
set -e

echo "Running database migrations..."
npx drizzle-kit migrate || echo "Migration failed or already up to date"

echo "Starting Pages CMS..."
exec node server.js
