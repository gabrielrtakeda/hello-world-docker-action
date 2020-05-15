#!/bin/sh -e

# Make it accessible from docker containers
echo "::add-path::$(dirname $(which s3cmd))"

# Make it accessible from runner
echo "::add-path::$RUNNER_WORKSPACE/$(basename $GITHUB_REPOSITORY)/bin"
