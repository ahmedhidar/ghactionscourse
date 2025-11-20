#!bin/bash
#src/tes.sh
EXPEXTED= "Hello, test!"
OUTPUT=$(node -e "console.log(require('src/app.js')('test'))" )
if [ "$OUTPUT" == "$EXPEXTED" ]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed: expected '$EXPEXTED' but got '$OUTPUT'"
    exit 1
fi