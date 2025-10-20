# Module 2: Python Scripting

**Duration:** 12 minutes

## Learning Objectives

In this module, you will learn how to create and execute Python scripts from the command line. Python is an interpreted language, which means it doesn't need to be compiled before running. Understanding how to work with scripts is fundamental for automation and development tasks.

## Key Concepts

**Interpreted vs Compiled Languages:**
- **Interpreted:** Code is executed line-by-line by an interpreter (Python, JavaScript, Ruby)
- **Compiled:** Code is translated to machine code before execution (C, C++, Rust)

**Shebang Line:** The `#!/usr/bin/env python3` at the top of a script tells the system which interpreter to use.

## Exercises

### Part 1: Running Python Scripts (4 minutes)

Python scripts can be executed in two ways:

**Method 1: Using the Python interpreter explicitly**
```bash
python3 hello.py
```

**Method 2: Making the script executable**
```bash
chmod +x hello.py
./hello.py
```

The second method requires a shebang line at the top of the file.

**Practice:**
1. View the hello.py script: `cat hello.py`
2. Run it using method 1: `python3 hello.py`
3. Make it executable: `chmod +x hello.py`
4. Check permissions: `ls -l hello.py`
5. Run it using method 2: `./hello.py`

### Part 2: Understanding File Permissions (3 minutes)

When you run `ls -l hello.py`, you'll see something like:
```
-rw-r--r-- 1 user group 245 Jan 15 10:30 hello.py
```

After `chmod +x`:
```
-rwxr-xr-x 1 user group 245 Jan 15 10:30 hello.py
```

The `x` indicates execute permission. Without it, you cannot run the file directly.

### Part 3: Command-Line Arguments (5 minutes)

Scripts can accept input from the command line, making them more flexible and reusable.

**Practice with calculator.py:**
```bash
python3 calculator.py 10 + 5
python3 calculator.py 20 - 8
python3 calculator.py 6 '*' 7
python3 calculator.py 100 / 4
```

Note: The asterisk (*) needs quotes because it's a special character in the shell.

**Challenge Exercise:**

Modify calculator.py to add a modulo operator (%) that returns the remainder of division.

## Files in This Module

- `hello.py` - Basic Python script with user input
- `calculator.py` - Command-line calculator demonstrating arguments

## Next Steps

In the next module, you'll learn about compiled languages and see how C programs differ from Python scripts.

