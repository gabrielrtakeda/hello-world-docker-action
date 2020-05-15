#!/bin/sh -e

echo "::debug:: [access_key] $INPUT_ACCESS_KEY"
echo "::debug:: [secret_key] $INPUT_SECRET_KEY"
echo "::debug:: [cmd] $INPUT_CMD"

s3cmd \
  --no-check-certificate \
  --access_key=$INPUT_ACCESS_KEY \
  --secret_key=$INPUT_SECRET_KEY \
  --verbose \
  --human-readable-sizes \
  --stop-on-error \
  $INPUT_CMD

