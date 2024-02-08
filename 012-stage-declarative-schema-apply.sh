#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas schema apply --env stage --exclude "atlas_schema_revisions"
