#!/usr/bin/env bash

set -euo pipefail

# Look through all subdirectories recursively and match all ./charts/ directories
find . -type d -name "charts" | while read -r charts_dir; do
  echo "Cleaning up $charts_dir"
  # Remove the directory
  rm -rf "$charts_dir"
done
