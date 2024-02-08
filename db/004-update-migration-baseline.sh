#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate apply --dir "file://migrations" -u "postgres://postgres:password@localhost:5432/demo?sslmode=disable" --baseline 20230310031200
