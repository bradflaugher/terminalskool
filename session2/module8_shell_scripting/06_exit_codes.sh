#!/bin/bash
# Exit codes and error handling

echo "=== Exit Codes ==="

# Check exit code of last command
ls /tmp > /dev/null
echo "ls exit code: $?"

ls /nonexistent 2> /dev/null
echo "ls (failed) exit code: $?"

# Exit codes: 0 = success, non-zero = failure

echo -e "\n=== Error Handling ==="

# Simple error handling
if ls /tmp > /dev/null 2>&1; then
    echo "/tmp exists"
else
    echo "/tmp does not exist"
fi

# Using || and &&
echo -e "\n=== Logical Operators ==="

# && runs second command only if first succeeds
echo "Using &&:"
ls /tmp > /dev/null && echo "Success!"

# || runs second command only if first fails
echo "Using ||:"
ls /nonexistent 2> /dev/null || echo "Command failed!"

# Chaining commands
mkdir -p test_dir && cd test_dir && touch file.txt && echo "Created file in test_dir"
cd .. && rm -rf test_dir

# Set -e: exit on error
echo -e "\n=== Exit on Error ==="
# Uncomment to see the effect:
# set -e
# ls /nonexistent  # This would cause script to exit
# echo "This won't print if set -e is active"

# Set -u: exit on undefined variable
echo -e "\n=== Exit on Undefined Variable ==="
# Uncomment to see the effect:
# set -u
# echo $UNDEFINED_VAR  # This would cause script to exit

# Custom exit codes
check_and_exit() {
    if [ $# -eq 0 ]; then
        echo "Error: No arguments provided"
        exit 1
    fi
    echo "Arguments provided: $@"
    exit 0
}

# Trap errors
cleanup() {
    echo "Cleaning up..."
    rm -f temp_file.txt
}

trap cleanup EXIT

echo "Creating temp file..."
touch temp_file.txt
echo "Script will clean up on exit"

# Exit with specific code
# exit 0  # Success
# exit 1  # General error
# exit 2  # Misuse of command

