#!/bin/bash
# Conditionals in bash

# Simple if statement
if [ -f "sample.txt" ]; then
    echo "sample.txt exists"
else
    echo "sample.txt does not exist"
fi

# Numeric comparison
NUMBER=42
if [ $NUMBER -gt 50 ]; then
    echo "$NUMBER is greater than 50"
elif [ $NUMBER -eq 42 ]; then
    echo "$NUMBER is the answer to everything!"
else
    echo "$NUMBER is less than 50"
fi

# String comparison
NAME="Alice"
if [ "$NAME" = "Alice" ]; then
    echo "Hello, Alice!"
else
    echo "You're not Alice!"
fi

# Check if command exists
if command -v python3 &> /dev/null; then
    echo "Python 3 is installed"
    python3 --version
else
    echo "Python 3 is not installed"
fi

# Multiple conditions
AGE=25
if [ $AGE -ge 18 ] && [ $AGE -lt 65 ]; then
    echo "You are an adult of working age"
fi

# File tests
FILE="test.txt"
if [ -e "$FILE" ]; then
    echo "$FILE exists"
fi

if [ -r "$FILE" ]; then
    echo "$FILE is readable"
fi

if [ -w "$FILE" ]; then
    echo "$FILE is writable"
fi

if [ -x "$FILE" ]; then
    echo "$FILE is executable"
fi

