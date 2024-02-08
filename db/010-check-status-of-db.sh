
#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate status -u "postgres://postgres:password@localhost:5432/demo?sslmode=disable" --dir "file://migrations"
