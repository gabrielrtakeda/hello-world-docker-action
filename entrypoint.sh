#!/bin/sh -e

echo "::debug:: [cmd] $INPUT_CMD"

s3cmd \
  --verbose \
  --stop-on-error \
  --no-check-certificate \
  --human-readable-sizes \
  $INPUT_CMD

