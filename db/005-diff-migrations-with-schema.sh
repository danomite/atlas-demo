#!/usr/bin/env bash
set -euo pipefail

# Debug output
set -x

atlas migrate diff --dir "file://migrations" --to "file://schema.sql" --dev-url "docker://postgres/15.2";
