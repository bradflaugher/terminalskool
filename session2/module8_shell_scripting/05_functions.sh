#!/bin/bash
# Functions in bash

# Simple function
greet() {
    echo "Hello from a function!"
}

# Function with parameters
greet_user() {
    local name=$1
    echo "Hello, $name!"
}

# Function with return value
add() {
    local a=$1
    local b=$2
    echo $((a + b))
}

# Function with return code
check_file() {
    local filename=$1
    if [ -f "$filename" ]; then
        echo "$filename exists"
        return 0
    else
        echo "$filename does not exist"
        return 1
    fi
}

# Function with multiple parameters
create_greeting() {
    local first=$1
    local last=$2
    local age=$3
    echo "Hello, $first $last! You are $age years old."
}

# Main script execution
echo "=== Calling Functions ==="

greet

greet_user "Alice"
greet_user "Bob"

result=$(add 10 20)
echo "10 + 20 = $result"

check_file "test.txt"
if [ $? -eq 0 ]; then
    echo "File check succeeded"
else
    echo "File check failed"
fi

create_greeting "John" "Doe" 30

# Function that uses global variables
COUNTER=0

increment() {
    COUNTER=$((COUNTER + 1))
    echo "Counter is now: $COUNTER"
}

echo -e "\n=== Using Global Variables ==="
increment
increment
increment
echo "Final counter value: $COUNTER"

# Function with local variables
demonstrate_scope() {
    local local_var="I'm local"
    global_var="I'm global"
    echo "Inside function - local: $local_var"
    echo "Inside function - global: $global_var"
}

echo -e "\n=== Variable Scope ==="
demonstrate_scope
echo "Outside function - global: $global_var"
echo "Outside function - local: $local_var"  # This will be empty

