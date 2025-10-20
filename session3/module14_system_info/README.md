_Generated with love by Manus.ai_

# Module 14: System Information

**Duration:** 10 minutes

## Learning Objectives

In this module, you will learn how to use command-line tools to get critical information about your system's hardware, software, and current state. This is invaluable for troubleshooting, performance monitoring, and general system administration.

## Key Commands

| Command | Purpose |
| :--- | :--- |
| `uname` | Print system information (kernel, OS). |
| `df` | Report file system **d**isk space usage. |
| `du` | Estimate **d**isk **u**sage of files and directories. |
| `free` | Display amount of free and used memory. |
| `uptime` | Show how long the system has been running. |
| `lscpu` | Display information about the CPU architecture. |
| `lsblk` | List block devices (disks and partitions). |

## Exercises

### Part 1: Hardware and OS Information (3 minutes)

These commands give you a high-level overview of the machine you are on.

**Practice:**

```bash
# Get all system information
uname -a

# See CPU details
lscpu

# See attached disks and partitions
lsblk
```

### Part 2: Disk Usage (`df` and `du`) (4 minutes)

`df` shows you how much space is used on your mounted filesystems, while `du` shows how much space files and directories are using.

**Practice:**

1.  **Check filesystem disk space:**

    ```bash
    # -h for human-readable (GB, MB, etc.)
    df -h
    ```

2.  **Check the size of a specific directory:**

    ```bash
    # -s for summary, -h for human-readable
    du -sh /etc
    ```

3.  **Find the largest directories in your home folder:**

    ```bash
    # --max-depth=1 to only show top-level directories
    du -h --max-depth=1 ~ | sort -rh | head -n 5
    ```

    This pipeline is a classic example of combining tools: `du` gets the data, `sort -rh` sorts it numerically in reverse (largest first), and `head` shows the top 5.

### Part 3: Memory and Uptime (`free` and `uptime`) (3 minutes)

These commands give you a snapshot of your system's current performance and stability.

**Practice:**

1.  **Check memory usage:**

    ```bash
    # -h for human-readable
    free -h
    ```

2.  **Check system uptime and load:**

    ```bash
    uptime
    ```

    The output shows the current time, how long the system has been up, how many users are logged in, and the system load averages over the last 1, 5, and 15 minutes.

## Quick System Health Check

You can combine these commands into a quick script or run them sequentially to get a fast overview of your system's health. This is often the first thing a system administrator does when logging into a machine.

```bash
echo "--- Uptime & Load ---"
uptime
echo "
--- Disk Space ---"
df -h
echo "
--- Memory Usage ---"
free -h
```

## Next Steps

With the ability to query system information, you are now ready to learn about more advanced file operations, including links, permissions, and powerful search techniques.

