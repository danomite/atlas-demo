#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate diff --dir "file://migrations" --to "postgres://postgres:password@localhost:5432/demo?sslmode=disable" --dev-url "docker://postgres/15.2"
