#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas schema inspect -u "postgres://postgres:password@localhost:5432/demo?sslmode=disable" > schema.sql --format "{{ sql . }}" -s demo
#atlas schema inspect -u -"postgres://postgres:password@localhost:5432/demo?sslmode=disable" > schema.hcl -s demo
