#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas schema inspect -u "postgres://postgres:password@localhost:5433/demo?sslmode=disable" > db/stage.schema.sql --format "{{ sql . }}" --schema demo