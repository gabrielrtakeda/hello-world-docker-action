#!/bin/sh -e

mkdir -p $GITHUB_WORKSPACE/bin
mv $(which s3cmd) $GITHUB_WORKSPACE/bin/

# Make it accessible from docker containers
echo "::add-path::$GITHUB_WORKSPACE/bin"

# Make it accessible from runner
echo "::add-path::$RUNNER_WORKSPACE/$(basename $GITHUB_REPOSITORY)/bin"
