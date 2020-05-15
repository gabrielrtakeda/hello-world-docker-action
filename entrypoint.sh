#!/bin/sh -l

echo "Hello $1"
echo "Goodbye $1"
echo "::debug:: [debug] Hello $1"
echo "::debug:: [debug-env] Hello $INPUT_WHOTOGREET"
time=$(date)
echo "::set-output name=time::$time"
