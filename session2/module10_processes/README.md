_Generated with love by Manus.ai_

# Module 10: Process Management

**Duration:** 12 minutes

## Learning Objectives

In this module, you will learn how to view, manage, and control processes running on your system. Understanding process management is crucial for troubleshooting unresponsive applications, running tasks in the background, and optimizing system resources.

## Key Concepts

- **Process:** An instance of a running program.
- **PID (Process ID):** A unique identifier for each process.
- **Parent Process:** The process that started another process.
- **Background vs. Foreground:** Processes can run interactively (foreground) or independently (background).
- **Signals:** Messages sent to processes to control their behavior (e.g., terminate, suspend).

## Commands Overview

| Command | Purpose |
| :--- | :--- |
| `ps` | Display information about running processes. |
| `top` / `htop` | Interactive process viewers. |
| `jobs` | List background jobs in the current shell. |
| `fg` | Bring a background job to the foreground. |
| `bg` | Send a suspended job to the background. |
| `kill` / `pkill` / `killall` | Terminate processes. |
| `nohup` | Run a command immune to hangups, with output to a non-TTY.
| `disown` | Remove jobs from the shell's job list.

## Exercises

### Part 1: Viewing Processes (`ps`, `top`) (4 minutes)

These commands show you what's running on your system.

**Practice:**

1.  **Your processes:**

    ```bash
    ps
    ```

2.  **All processes (detailed):**

    ```bash
    ps aux
    ps -ef
    ```

3.  **Filter processes:**

    ```bash
    ps aux | grep bash
    ps -ef | grep sshd
    ```

4.  **Interactive viewer:**

    ```bash
    top
    # Press 'q' to quit. Explore 'M' for memory sort, 'P' for CPU sort.
    ```

### Part 2: Background and Foreground Jobs (`&`, `Ctrl+Z`, `jobs`, `fg`, `bg`) (4 minutes)

Running tasks in the background allows you to continue using your terminal while long-running commands execute.

**Practice:**

1.  **Run a command in the background:**

    ```bash
    sleep 30 & # The '&' sends it to the background
    sleep 60 & # Run another one
    jobs       # See your background jobs
    ```

2.  **Suspend and resume:**

    ```bash
    # Start a long-running command (e.g., a simple Python web server)
    python3 -m http.server 8000

    # Press Ctrl+Z to suspend it

    jobs       # It will show as 'Stopped'

    bg         # Send it to the background

    jobs       # Now it's 'Running' in the background

    fg         # Bring it back to the foreground

    # Press Ctrl+C to terminate it
    ```

### Part 3: Killing Processes (`kill`, `killall`, `pkill`) (4 minutes)

Sometimes processes misbehave or get stuck, and you need to terminate them.

**Practice:**

1.  **Start a background process:**

    ```bash
    sleep 120 & # A long sleep process
    jobs
    ```

2.  **Find its PID:**

    ```bash
    ps aux | grep sleep
    pgrep sleep # A simpler way
    ```

3.  **Kill by PID (graceful termination):**

    ```bash
    kill <PID_of_sleep_process>
    jobs # It should disappear or show as terminated
    ```

4.  **Force kill (if graceful fails):**

    ```bash
    sleep 120 & # Start another one
    kill -9 <PID_of_sleep_process>
    ```

5.  **Kill by name:**

    ```bash
    sleep 120 & sleep 180 &
    killall sleep # Kills all processes named 'sleep'
    jobs
    ```

6.  **Run a command that survives logout:**

    ```bash
    nohup sleep 300 & # Will continue running even if you close the terminal
    jobs
    disown %1         # Remove it from the shell's job list
    ```

## Summary Table

| Command | Purpose | Example |
| :--- | :--- | :--- |
| `ps aux` | List all running processes | `ps aux | grep nginx` |
| `top` | Interactive process monitor | `top` |
| `command &` | Run command in background | `python3 server.py &` |
| `Ctrl+Z` | Suspend foreground job | (type `sleep 100`, then `Ctrl+Z`) |
| `jobs` | List background jobs | `jobs` |
| `fg %N` | Bring job N to foreground | `fg %1` |
| `bg %N` | Send suspended job N to background | `bg %1` |
| `kill PID` | Terminate process by PID | `kill 12345` |
| `kill -9 PID` | Force terminate process by PID | `kill -9 12345` |
| `killall NAME` | Terminate processes by name | `killall sleep` |
| `nohup command &` | Run command immune to hangups | `nohup ./long_script.sh &` |
| `disown %N` | Remove job N from shell's job list | `disown %1` |

## Next Steps

Now that you can manage processes, the next module will explore how to control the input and output of these commands using redirection.

