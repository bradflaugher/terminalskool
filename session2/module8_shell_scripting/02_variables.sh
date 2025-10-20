#!/bin/bash
# Variables in bash

# Simple variable assignment
NAME="DevUser"
AGE=25
CITY="San Francisco"

# Using variables
echo "Name: $NAME"
echo "Age: $AGE"
echo "City: $CITY"

# Command substitution
CURRENT_DATE=$(date +%Y-%m-%d)
FILE_COUNT=$(ls | wc -l)

echo "Today's date: $CURRENT_DATE"
echo "Files in current directory: $FILE_COUNT"

# Environment variables
echo "Your home: $HOME"
echo "Your shell: $SHELL"

# Read user input
echo -n "Enter your favorite color: "
read COLOR
echo "Your favorite color is: $COLOR"

