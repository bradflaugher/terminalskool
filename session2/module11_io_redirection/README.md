_Generated with love by Manus.ai_

# Module 11: Input/Output Redirection

**Duration:** 8 minutes

## Learning Objectives

In this module, you will learn how to control the input and output of commands. Redirection is a fundamental feature of the shell that allows you to save command output to files, read input from files, and manage error messages.

## Key Concepts

- **Standard Streams:** In a Unix-like system, every process gets three standard file descriptors:
    1.  **Standard Input (stdin):** Where the process reads from (default: keyboard).
    2.  **Standard Output (stdout):** Where the process writes its normal output (default: screen).
    3.  **Standard Error (stderr):** Where the process writes its error messages (default: screen).
- **Redirection Operators:** Special characters (`>`, `>>`, `<`, `2>`) used to change where these streams point.

## Redirection Operators

| Operator | Purpose | Example |
| :--- | :--- | :--- |
| `>` | Redirect stdout to a file (overwrites). | `ls -la > files.txt` |
| `>>` | Redirect stdout to a file (appends). | `echo "Log entry" >> app.log` |
| `<` | Redirect stdin from a file. | `sort < unsorted_list.txt` |
| `2>` | Redirect stderr to a file. | `find / -name "*.log" 2> errors.txt` |
| `2>&1` | Redirect stderr to the same place as stdout. | `command > all_output.txt 2>&1` |
| `&>` | Redirect both stdout and stderr to a file (bash shortcut). | `command &> all_output.txt` |
| `|` | Pipe stdout to another command's stdin. | `ps aux | grep nginx` |

## Exercises

### Part 1: Redirecting Standard Output (`>` and `>>`) (3 minutes)

This is the most common form of redirection, used for saving command output.

**Practice:**

1.  **Save a directory listing:**

    ```bash
    ls -la > directory_listing.txt
    cat directory_listing.txt
    ```

2.  **Overwrite the file:**

    ```bash
    date > directory_listing.txt
    cat directory_listing.txt # The listing is gone!
    ```

3.  **Append to a log file:**

    ```bash
    echo "[INFO] Starting process..." > app.log
    echo "[WARN] Low memory." >> app.log
    echo "[INFO] Process finished." >> app.log
    cat app.log
    ```

### Part 2: Redirecting Standard Error (`2>`) (3 minutes)

This is crucial for separating error messages from normal output, especially in scripts.

**Practice:**

1.  **Generate an error:**

    ```bash
    ls /nonexistent_directory
    # The error message appears on the screen (stderr)
    ```

2.  **Redirect the error to a file:**

    ```bash
    ls /nonexistent_directory 2> error.log
    # Nothing appears on the screen
    cat error.log
    ```

3.  **Separate output and errors:**

    ```bash
    # This command produces both stdout and stderr
    find /etc -name "*.conf" > output.log 2> errors.log
    cat output.log
    cat errors.log
    ```

4.  **Redirect both to the same file:**

    ```bash
    find /etc -name "*.conf" &> all_output.log
    cat all_output.log
    ```

### Part 3: Redirecting Standard Input (`<`) (2 minutes)

This is useful for providing input to commands that normally read from the keyboard.

**Practice:**

1.  **Create a list of words:**

    ```bash
    echo -e "banana\napple\ncherry" > fruits.txt
    ```

2.  **Use the file as input for `sort`:**

    ```bash
    sort < fruits.txt
    ```

3.  **Combine with output redirection:**

    ```bash
    sort < fruits.txt > sorted_fruits.txt
    cat sorted_fruits.txt
    ```

## The Power of Composition

Redirection and piping are complementary. You can build a pipeline and then redirect its final output or initial input.

**Example:** Find all Python processes, count them, and save the count to a file.

```bash
ps aux | grep python | wc -l > python_process_count.txt
```

## Next Steps

Congratulations, you have completed Session 2! You now have a solid understanding of intermediate terminal skills. Session 3 will build on this foundation, covering networking, archives, and advanced productivity techniques.

