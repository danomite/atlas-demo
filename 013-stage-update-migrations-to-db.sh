#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate diff --dir "file://db/stage-migrations" --to "postgres://postgres:password@localhost:5433/demo?sslmode=disable" --dev-url "docker://postgres/15.2"
atlas migrate apply --env --baseline 20230309070613
