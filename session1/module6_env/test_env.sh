#!/bin/bash
# Test environment variables script

echo "=== Environment Information ==="
echo "User: $USER"
echo "Home Directory: $HOME"
echo "Current Directory: $PWD"
echo "Shell: $SHELL"
echo ""

if [ -n "$MY_VAR" ]; then
    echo "Custom Variable MY_VAR: $MY_VAR"
else
    echo "Custom Variable MY_VAR is not set"
fi

echo ""
echo "PATH directories:"
echo "$PATH" | tr ':' '\n'

