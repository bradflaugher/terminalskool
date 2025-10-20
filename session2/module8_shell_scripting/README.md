_Generated with love by Manus.ai_

# Module 8: Shell Scripting Basics

**Duration:** 15 minutes

## Learning Objectives

In this module, you will learn the fundamentals of shell scripting. This is a powerful skill for automating repetitive tasks, creating custom commands, and managing your system. You will learn how to use variables, conditionals, loops, and functions to create useful scripts.

## Key Concepts

- **Automation:** Scripts allow you to execute a series of commands with a single instruction.
- **Variables:** Store and reuse data within your script.
- **Control Flow:** Use `if`, `for`, and `while` to control the logic and execution of your script.
- **Functions:** Group reusable blocks of code for better organization.

## Exercises

All exercise scripts are located in the `module8_shell_scripting` directory. Make them executable before running:

```bash
chmod +x *.sh
```

### Part 1: Your First Script (3 minutes)

A shell script is a text file containing a sequence of commands. The shebang line `#!/bin/bash` at the top is crucial.

**Practice:**

1.  **Examine the script:**

    ```bash
    cat 01_hello.sh
    ```

2.  **Run the script:**

    ```bash
    ./01_hello.sh
    ```

### Part 2: Variables and Command Substitution (4 minutes)

Variables store data, and command substitution `$(...)` captures the output of a command.

**Practice:**

1.  **Examine the script:**

    ```bash
    cat 02_variables.sh
    ```

2.  **Run and observe:**

    ```bash
    ./02_variables.sh
    ```

    Notice how the script uses both user-defined variables (`NAME`) and the output of commands (`date`, `ls | wc -l`).

### Part 3: Conditionals (`if`/`then`/`else`) (4 minutes)

Conditional statements allow your script to make decisions.

**Practice:**

1.  **Examine the script:**

    ```bash
    cat 03_conditionals.sh
    ```

2.  **Run the script:**

    ```bash
    ./03_conditionals.sh
    ```

3.  **Experiment:** Create a file named `sample.txt` (`touch sample.txt`) and run the script again to see the output change.

### Part 4: Loops (`for`/`while`) (4 minutes)

Loops allow you to repeat actions. `for` loops iterate over a list of items, while `while` loops continue as long as a condition is true.

**Practice:**

1.  **Examine the script:**

    ```bash
    cat 04_loops.sh
    ```

2.  **Run and analyze the output:**

    ```bash
    ./04_loops.sh
    ```

    Pay attention to the different ways a `for` loop can be used (with a list, a range, and files).

## Summary of Concepts

| Concept | Syntax | Purpose |
| :--- | :--- | :--- |
| Variable | `VAR="value"` | Store data |
| Command Substitution | `VAR=$(command)` | Capture command output |
| `if` Statement | `if [ condition ]; then ... fi` | Make decisions |
| `for` Loop | `for i in 1 2 3; do ... done` | Iterate over a list |
| `while` Loop | `while [ condition ]; do ... done` | Loop while condition is true |
| Function | `my_func() { ... }` | Create reusable code blocks |

## Next Steps

With the basics of shell scripting covered, the next module will dive into one of the most powerful features of the command line: text processing and piping.

