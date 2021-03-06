#!/bin/sh
# Docker entrypoint script.

set -e

# Wait for Postgres to become available.
until psql -h postgres_db -U "postgres" -c '\q' 2>/dev/null; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
cd assets && npm install
cd leia-elm && npm install
cd ..
cd ..

# Potentially Set up the database
mix ecto.create
mix ecto.migrate

echo "\nTesting the installation..."
mix test


mix phx.server
