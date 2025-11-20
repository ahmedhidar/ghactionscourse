#!/bin/bash
# src/test.sh

EXPECTED="Hello, test!"
OUTPUT=$(node -e "console.log(require('./src/app.js')('test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed: expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi
