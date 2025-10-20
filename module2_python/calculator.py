#!/usr/bin/env python3
"""
Simple calculator to demonstrate command-line arguments
"""

import sys

def main():
    if len(sys.argv) != 4:
        print("Usage: python3 calculator.py <num1> <operator> <num2>")
        print("Example: python3 calculator.py 10 + 5")
        sys.exit(1)
    
    num1 = float(sys.argv[1])
    operator = sys.argv[2]
    num2 = float(sys.argv[3])
    
    if operator == '+':
        result = num1 + num2
    elif operator == '-':
        result = num1 - num2
    elif operator == '*':
        result = num1 * num2
    elif operator == '/':
        result = num1 / num2
    else:
        print(f"Unknown operator: {operator}")
        sys.exit(1)
    
    print(f"{num1} {operator} {num2} = {result}")

if __name__ == "__main__":
    main()

