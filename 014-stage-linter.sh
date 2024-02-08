#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate lint --env stage --latest 1
