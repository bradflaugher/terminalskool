_Generated with love by Manus.ai_

# Module 15: Advanced File Operations

**Duration:** 13 minutes

## Learning Objectives

In this module, you will go beyond basic file management and learn about powerful tools for creating links, finding files with complex criteria, and performing batch operations. These skills are essential for efficient system administration and development workflows.

## Key Commands

| Command | Purpose |
| :--- | :--- |
| `ln` | Create links between files. |
| `find` | Search for files in a directory hierarchy. |
| `xargs` | Build and execute command lines from standard input. |
| `diff` | Compare files line by line. |
| `stat` | Display file or file system status. |

## Exercises

### Part 1: Links (`ln`) (4 minutes)

Links are pointers to other files. There are two types: symbolic (soft) and hard.

-   **Symbolic Link:** A pointer to a file's *name*. It can cross filesystems and can point to a non-existent file (becoming a "broken link").
-   **Hard Link:** A pointer to the file's *data* (inode). It cannot cross filesystems and the file is only deleted when all hard links to it are removed.

**Practice:**

1.  **Create a test file:**

    ```bash
    echo "This is the original file" > original.txt
    ```

2.  **Create a symbolic link:**

    ```bash
    ln -s original.txt symlink.txt
    ls -l
    # Notice the 'l' at the beginning of the permissions and the -> pointer
    cat symlink.txt
    ```

3.  **Create a hard link:**

    ```bash
    ln original.txt hardlink.txt
    ls -li
    # Notice they share the same inode number (the first column)
    ```

### Part 2: Advanced `find` (5 minutes)

The `find` command is incredibly powerful for locating files based on various criteria.

**Practice:**

1.  **Find by modification time:**

    ```bash
    # Find files modified in the last 24 hours in the current directory
    find . -mtime 0
    ```

2.  **Find by size:**

    ```bash
    # Find files larger than 1 kilobyte in /etc (errors redirected)
    find /etc -size +1k 2>/dev/null
    ```

3.  **Find and execute a command:** The `-exec` flag performs an action on each found file.

    ```bash
    # Find all .md files and show their line count
    find ../ -name "*.md" -exec wc -l {} \;
    ```

### Part 3: Batch Processing with `xargs` (4 minutes)

`xargs` takes the output of one command and uses it as the arguments for another. It's a powerful way to perform batch operations.

**Practice:**

1.  **Create some test files:**

    ```bash
    touch file1.txt file2.log file3.tmp
    ```

2.  **Use `find` and `xargs` to delete specific files:**

    ```bash
    # Find all .tmp files and delete them
    find . -name "*.tmp" | xargs rm
    ls
    ```

3.  **A more powerful example:** Find all `.md` files in the parent directory and `grep` for the word "module" in them.

    ```bash
    find ../ -name "*.md" | xargs grep -l "module"
    ```

## `find -exec` vs. `xargs`

| | `find -exec` | `xargs` |
| :--- | :--- | :--- |
| **How it works** | Runs a command for *each* file found. | Bundles found files and runs the command once (or a few times). |
| **Efficiency** | Slower, as it forks a new process for every file. | Faster, as it runs the command fewer times. |
| **Complexity** | Syntax is more complex (`{}` and `\;`). | Simpler syntax, works well with pipes. |
| **Best for** | Simple, safe operations. | Batch operations on many files. |

Generally, `xargs` is preferred for performance when dealing with a large number of files.

## Next Steps

You are now equipped with some of the most powerful tools in the Linux arsenal. The final module will focus on personalizing your environment and boosting your day-to-day productivity in the terminal.

