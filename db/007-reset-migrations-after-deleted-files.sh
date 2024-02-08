#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate hash
atlas schema apply -u "postgres://postgres:password@localhost:5432/demo?sslmode=disable" --to "file://migrations" --dev-url "docker://postgres/15.2" --exclude "atlas_schema_revisions"
