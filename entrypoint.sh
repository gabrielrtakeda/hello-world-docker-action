#!/bin/sh -l

echo "Hello $1"
echo "Goodbye $1"
echo "::debug:: [debug] Hello $1}"
echo "::debug:: [debug-env] Hello $INPUT_WHO_TO_GREET}"
time=$(date)
echo "::set-output name=time::$time"
