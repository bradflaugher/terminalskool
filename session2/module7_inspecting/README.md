_Generated with love by Manus.ai_

# Module 7: Inspecting Files and Executables

**Duration:** 12 minutes

## Learning Objectives

In this module, you will learn how to identify different types of files and executables directly from the command line. This skill is crucial for understanding how your system works and for safely handling unknown files. You will learn to distinguish between binary programs, shell scripts, and other common file types.

## Key Concepts

- **File Signatures:** Most files begin with a "magic number," a unique sequence of bytes that identifies the file type. The `file` command reads these signatures.
- **Shebang (`#!`):** The first line of a script that tells the operating system which interpreter to use for execution (e.g., `#!/bin/bash`, `#!/usr/bin/env python3`).
- **Executables:** These can be compiled binaries (machine code) or scripts (text files with a shebang and execute permissions).

## Exercises

### Part 1: Identifying File Types with `file` (4 minutes)

The `file` command is your primary tool for inspecting unknown files. It provides a more reliable identification than file extensions.

**Practice:**

Navigate to the `module7_inspecting` directory and run the following commands. Observe how the output differs for each file.

```bash
# Identify a shell script
file sample_script.sh

# Identify a Python script
file sample_python.py

# Identify a plain text file
file sample_text.txt

# Identify a compiled binary program
file sample_binary

# Run on all files at once
file *
```

### Part 2: Understanding Shebangs (4 minutes)

The shebang line is critical for making scripts directly executable. It turns a simple text file into a runnable command.

**Practice:**

1.  **View the shebang line:** Use the `head -n 1` command to view the first line of each script.

    ```bash
    head -n 1 sample_script.sh
    head -n 1 sample_python.py
    ```

2.  **Compare with non-scripts:** Notice that the binary and text files do not have shebangs.

    ```bash
    head -n 1 sample_binary
    head -n 1 sample_text.txt
    ```

3.  **Find the interpreters:** The `which` command locates the programs specified in the shebang.

    ```bash
    which bash
    which python3
    ```

### Part 3: Inspecting Executable Content (4 minutes)

How you inspect a file depends on its type. Viewing a binary file with `cat` will result in garbled text, while other tools are more appropriate.

**Practice:**

1.  **Reading Text vs. Binary:**

    ```bash
    # Reading a script is safe and easy
    cat sample_script.sh

    # Trying to read a binary file shows garbage
    cat sample_binary
    ```

2.  **Using `strings`:** The `strings` command is a safe way to find readable text within a binary file.

    ```bash
    strings sample_binary
    ```

3.  **Checking for Executability:** Use `ls -l` to see if a file has the execute (`x`) permission.

    ```bash
    ls -l sample_script.sh
    ls -l sample_binary
    ls -l sample_text.txt # Notice the lack of 'x' permission
    ```

## Summary Table

| File Type | How to Identify | How to Inspect Content | Is it Executable? |
| :--- | :--- | :--- | :--- |
| Shell Script | `file` shows "shell script", has `#!/bin/bash` | `cat`, `less`, `head` | Yes, with `+x` permission |
| Python Script | `file` shows "Python script", has `#!/usr/bin/env python3` | `cat`, `less`, `head` | Yes, with `+x` permission |
| Compiled Binary | `file` shows "ELF 64-bit executable..." | `strings`, `ldd` | Yes, by default |
| Text File | `file` shows "ASCII text" | `cat`, `less`, `head` | No |

## Next Steps

Now that you can identify and inspect different types of executables, the next module will teach you how to write your own shell scripts from scratch.

