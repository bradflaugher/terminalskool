#!/bin/bash
# Loops in bash

echo "=== For Loop Examples ==="

# Simple for loop
echo "Counting 1 to 5:"
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# For loop with range
echo -e "\nCounting 1 to 10:"
for i in {1..10}; do
    echo -n "$i "
done
echo ""

# For loop with files
echo -e "\nFiles in current directory:"
for file in *; do
    echo "  - $file"
done

# C-style for loop
echo -e "\nC-style loop:"
for ((i=0; i<5; i++)); do
    echo "Iteration $i"
done

echo -e "\n=== While Loop Examples ==="

# While loop
COUNT=1
echo "While loop counting to 5:"
while [ $COUNT -le 5 ]; do
    echo "Count: $COUNT"
    COUNT=$((COUNT + 1))
done

# Read file line by line
echo -e "\nReading a file line by line:"
echo -e "Line 1\nLine 2\nLine 3" > temp.txt
while IFS= read -r line; do
    echo "Read: $line"
done < temp.txt
rm temp.txt

echo -e "\n=== Until Loop Example ==="

# Until loop (opposite of while)
NUM=1
echo "Until loop:"
until [ $NUM -gt 5 ]; do
    echo "Number: $NUM"
    NUM=$((NUM + 1))
done

echo -e "\n=== Loop Control ==="

# Break and continue
echo "Using break (stop at 5):"
for i in {1..10}; do
    if [ $i -eq 5 ]; then
        break
    fi
    echo -n "$i "
done
echo ""

echo "Using continue (skip 5):"
for i in {1..10}; do
    if [ $i -eq 5 ]; then
        continue
    fi
    echo -n "$i "
done
echo ""

