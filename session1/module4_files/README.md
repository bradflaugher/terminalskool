# Module 4: File Management & Navigation

**Duration:** 10 minutes

## Learning Objectives

In this module, you will learn how to navigate the Linux filesystem, manage files and directories, and understand the standard directory structure. These skills are fundamental for any work in the terminal.

## Key Concepts

**Linux Filesystem Hierarchy:**
- `/` - Root directory (top of the filesystem)
- `/home` - User home directories
- `/usr/bin` - User binaries (programs)
- `/etc` - System configuration files
- `/var` - Variable data (logs, databases)
- `/tmp` - Temporary files
- `~` - Shortcut for your home directory

**Absolute vs Relative Paths:**
- **Absolute:** Starts from root, e.g., `/home/user/file.txt`
- **Relative:** Starts from current directory, e.g., `./file.txt` or `../parent/file.txt`

**Special Directory Symbols:**
- `.` - Current directory
- `..` - Parent directory
- `~` - Home directory
- `-` - Previous directory

## Exercises

### Part 1: Navigation (3 minutes)

**Practice moving around:**
```bash
pwd                    # Where am I?
cd /                   # Go to root
ls                     # Look around
cd /home               # Go to home directory
cd ~                   # Go to your home
cd -                   # Go back to previous location
```

**Explore the filesystem:**
```bash
ls /usr/bin            # See available programs
ls /etc                # See configuration files
ls -la ~               # See all files in your home (including hidden)
```

### Part 2: Creating Files and Directories (2 minutes)

**Create a practice area:**
```bash
cd ~
mkdir practice
cd practice
pwd
```

**Create files:**
```bash
touch empty.txt                    # Create empty file
echo "Hello World" > greeting.txt  # Create file with content
echo "Second line" >> greeting.txt # Append to file
cat greeting.txt                   # View content
```

**Create nested directories:**
```bash
mkdir -p projects/web/frontend
ls -R projects                     # Recursive listing
```

### Part 3: Copying and Moving (2 minutes)

**Copy files:**
```bash
cp greeting.txt backup.txt
ls
cat backup.txt
```

**Copy directories:**
```bash
cp -r projects projects_backup
ls
```

**Move/rename files:**
```bash
mv backup.txt greeting_backup.txt
ls
```

**Move to different location:**
```bash
mv greeting_backup.txt projects/
ls projects/
```

### Part 4: Finding Files (2 minutes)

**Find by name:**
```bash
find . -name "*.txt"
find . -name "greeting*"
```

**Find by type:**
```bash
find . -type f         # All files
find . -type d         # All directories
```

**Find recently modified:**
```bash
find . -mtime -1       # Modified in last 24 hours
```

### Part 5: Practical Exercise (1 minute)

**Challenge:** Create this directory structure:
```
~/practice/
  ├── scripts/
  │   ├── python/
  │   └── shell/
  └── data/
      ├── input/
      └── output/
```

**Solution:**
```bash
cd ~/practice
mkdir -p scripts/python scripts/shell data/input data/output
tree .  # Or use: find . -type d
```

## Important Safety Tips

**Dangerous commands to be careful with:**
- `rm -rf /` - NEVER run this (deletes everything)
- `rm -rf *` - Deletes everything in current directory
- Always double-check before using `rm -rf`

**Safer practices:**
- Use `ls` before `rm` to verify what you're deleting
- Use `rm -i` for interactive confirmation
- Keep backups of important files

## Common File Operations Cheat Sheet

```bash
# Navigation
pwd                    # Print working directory
cd <path>             # Change directory
ls                    # List files
ls -la                # List all files with details

# Creating
touch <file>          # Create empty file
mkdir <dir>           # Create directory
mkdir -p <path>       # Create nested directories

# Viewing
cat <file>            # Display entire file
less <file>           # Page through file
head <file>           # First 10 lines
tail <file>           # Last 10 lines

# Copying
cp <src> <dst>        # Copy file
cp -r <src> <dst>     # Copy directory

# Moving/Renaming
mv <src> <dst>        # Move or rename

# Deleting
rm <file>             # Remove file
rm -r <dir>           # Remove directory
rm -rf <dir>          # Force remove (careful!)

# Finding
find <path> -name <pattern>
find <path> -type f   # Find files
find <path> -type d   # Find directories
```

## Next Steps

In the next module, you'll learn about users, groups, and file permissions.

