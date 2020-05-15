#!/bin/sh -e

echo "::debug:: [flags] $INPUT_FLAGS"
echo "::debug:: [cmd] $INPUT_CMD"
echo "::add-path::$(which s3cmd)"
