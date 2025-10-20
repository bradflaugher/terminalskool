# Terminal Skills Quick Reference

This cheat sheet provides a quick overview of all the commands covered in the session.

## Module 1: Podman Basics

| Command | Description |
|---------|-------------|
| `podman --version` | Check Podman version |
| `podman login docker.io` | Login to Docker Hub |
| `podman pull <image>` | Download a container image |
| `podman images` | List downloaded images |
| `podman run <image>` | Run a container |
| `podman run -it <image> sh` | Run interactive container |
| `podman ps` | List running containers |
| `podman ps -a` | List all containers |
| `podman stop <name>` | Stop a container |
| `podman rm <name>` | Remove a container |
| `podman rmi <image>` | Remove an image |

## Module 2: Python Scripting

| Command | Description |
|---------|-------------|
| `python3 script.py` | Run Python script with interpreter |
| `chmod +x script.py` | Make script executable |
| `./script.py` | Run executable script |
| `python3 script.py arg1 arg2` | Run script with arguments |

## Module 3: C Programming

| Command | Description |
|---------|-------------|
| `gcc source.c -o output` | Compile C program |
| `./output` | Run compiled program |
| `file filename` | Check file type |
| `gcc -Wall source.c -o output` | Compile with warnings |

## Module 4: File Management

| Command | Description |
|---------|-------------|
| `pwd` | Print working directory |
| `ls` | List files |
| `ls -la` | List all files with details |
| `cd <path>` | Change directory |
| `cd ~` | Go to home directory |
| `cd -` | Go to previous directory |
| `mkdir <dir>` | Create directory |
| `mkdir -p <path>` | Create nested directories |
| `touch <file>` | Create empty file |
| `cat <file>` | Display file contents |
| `less <file>` | Page through file |
| `cp <src> <dst>` | Copy file |
| `cp -r <src> <dst>` | Copy directory |
| `mv <src> <dst>` | Move or rename |
| `rm <file>` | Remove file |
| `rm -r <dir>` | Remove directory |
| `find <path> -name <pattern>` | Find files by name |
| `find <path> -type f` | Find all files |

## Module 5: Users & Permissions

| Command | Description |
|---------|-------------|
| `whoami` | Show current username |
| `id` | Show user and group IDs |
| `groups` | Show group memberships |
| `ls -l` | List files with permissions |
| `chmod +x <file>` | Add execute permission |
| `chmod u+x <file>` | Add execute for owner |
| `chmod 755 <file>` | Set permissions to rwxr-xr-x |
| `chmod 644 <file>` | Set permissions to rw-r--r-- |
| `sudo <command>` | Run command as root |

### Permission Numbers

| Number | Permissions | Meaning |
|--------|-------------|---------|
| 7 | rwx | Read, write, execute |
| 6 | rw- | Read, write |
| 5 | r-x | Read, execute |
| 4 | r-- | Read only |
| 0 | --- | No permissions |

## Module 6: Environment Variables

| Command | Description |
|---------|-------------|
| `env` | List all environment variables |
| `echo $VAR` | Print variable value |
| `export VAR=value` | Create environment variable |
| `echo $PATH` | Show command search path |
| `which <command>` | Find command location |
| `export PATH=$PATH:/new/path` | Add to PATH |
| `unset VAR` | Remove variable |

### Common Environment Variables

| Variable | Description |
|----------|-------------|
| `$HOME` | Your home directory |
| `$USER` | Your username |
| `$SHELL` | Your shell program |
| `$PATH` | Command search path |
| `$PWD` | Current directory |
| `$EDITOR` | Default text editor |

## General Tips

### Navigation Shortcuts

- `~` - Home directory
- `.` - Current directory
- `..` - Parent directory
- `-` - Previous directory

### Keyboard Shortcuts

- `Ctrl+C` - Cancel current command
- `Ctrl+D` - Exit shell/end input
- `Ctrl+L` - Clear screen
- `Ctrl+R` - Search command history
- `Tab` - Auto-complete
- `↑` / `↓` - Navigate command history

### Getting Help

- `man <command>` - Manual page for command
- `<command> --help` - Quick help for command
- `which <command>` - Find command location
- `type <command>` - Show command type

### File Viewing

- `cat` - Display entire file
- `less` - Page through file (q to quit)
- `head` - First 10 lines
- `tail` - Last 10 lines
- `tail -f` - Follow file updates (logs)

### Redirection

- `>` - Redirect output to file (overwrite)
- `>>` - Redirect output to file (append)
- `<` - Redirect input from file
- `|` - Pipe output to another command

### Examples

```bash
# Redirect output
echo "Hello" > file.txt

# Append to file
echo "World" >> file.txt

# Pipe commands
cat file.txt | grep "search" | wc -l

# Chain commands
mkdir test && cd test && touch file.txt
```

