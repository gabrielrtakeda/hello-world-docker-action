#!/bin/sh -e

mkdir -p $GITHUB_WORKSPACE/bin
echo "echo Hello, world!" > $GITHUB_WORKSPACE/bin/s3cmd
chmod +x $GITHUB_WORKSPACE/bin/s3cmd

echo "::add-path::$GITHUB_WORKSPACE/bin" # Make it accessible from docker containers
echo "::add-path::$RUNNER_WORKSPACE/$(basename $GITHUB_REPOSITORY)/bin" # Make it accessible from runner
