# Module 6: Environment Variables & PATH

**Duration:** 7 minutes

## Learning Objectives

In this module, you will learn about environment variables and the PATH variable. Understanding these concepts is essential for configuring your development environment, running custom scripts, and troubleshooting command-not-found errors.

## Key Concepts

**Environment Variables:**
- Key-value pairs that store configuration information
- Available to all programs running in your shell session
- Used to customize behavior without changing code
- Inherited by child processes

**The PATH Variable:**
- Special environment variable that tells the shell where to find commands
- Contains a colon-separated list of directories
- When you type a command, the shell searches these directories in order
- First match wins

## Exercises

### Part 1: Viewing Environment Variables (2 minutes)

**See all environment variables:**
```bash
env                    # List all variables
printenv               # Same as env
```

**View specific variables:**
```bash
echo $HOME             # Your home directory
echo $USER             # Your username
echo $SHELL            # Your shell program
echo $PWD              # Current directory
echo $PATH             # Command search path
```

**Understanding the output:**
- `$` prefix tells the shell to expand the variable
- Without `$`, you just get the literal text "HOME"

### Part 2: Understanding PATH (2 minutes)

**View your PATH:**
```bash
echo $PATH
```

You'll see something like:
```
/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
```

**What this means:**
When you type `ls`, the shell looks for an executable file named `ls` in:
1. `/usr/local/bin/ls` (not found)
2. `/usr/bin/ls` (found! - this one runs)
3. (stops searching)

**Find where commands are located:**
```bash
which ls               # Shows /usr/bin/ls
which python3          # Shows where python3 is
which gcc              # Shows where gcc is
type ls                # Alternative to which
```

**Try a command not in PATH:**
```bash
which mycustomscript   # Won't be found
```

### Part 3: Creating Environment Variables (1 minute)

**Create temporary variables:**
```bash
export MY_NAME="Developer"
echo $MY_NAME
echo "Hello, $MY_NAME!"

export API_KEY="secret123"
echo $API_KEY
```

**These variables only exist in your current shell session.** If you open a new terminal, they'll be gone.

**Use in a script:**
```bash
./test_env.sh
```

### Part 4: Adding to PATH (2 minutes)

**Create a personal bin directory:**
```bash
mkdir -p ~/bin
```

**Copy an executable there:**
```bash
cp ../module3_c/calc ~/bin/
ls -l ~/bin/
```

**Try to run it:**
```bash
calc 10 + 5            # Won't work - not in PATH
```

**Add ~/bin to PATH:**
```bash
export PATH=$PATH:~/bin
echo $PATH
```

**Now try again:**
```bash
calc 10 + 5            # Works!
which calc             # Shows ~/bin/calc
```

**Understanding the syntax:**
- `PATH=$PATH:~/bin` means "set PATH to its current value, plus ~/bin"
- The colon (`:`) separates directories
- `~/bin` expands to `/home/yourusername/bin`

**Order matters:**
```bash
export PATH=~/bin:$PATH    # Puts ~/bin first (higher priority)
export PATH=$PATH:~/bin    # Puts ~/bin last (lower priority)
```

## Making Changes Permanent

**The changes we made are temporary.** When you close the terminal, they're lost.

**To make them permanent, add to your shell configuration file:**

For bash (most common):
```bash
echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
echo 'export MY_VAR="value"' >> ~/.bashrc
source ~/.bashrc       # Reload configuration
```

For zsh:
```bash
echo 'export PATH=$PATH:~/bin' >> ~/.zshrc
source ~/.zshrc
```

**System-wide variables (requires sudo):**
```bash
sudo nano /etc/environment
# Add: PATH="/usr/local/bin:/usr/bin:/bin:/home/user/bin"
```

## Common Environment Variables

| Variable | Purpose | Example Value |
|----------|---------|---------------|
| `HOME` | Your home directory | `/home/username` |
| `USER` | Your username | `username` |
| `SHELL` | Your default shell | `/bin/bash` |
| `PATH` | Command search path | `/usr/bin:/bin` |
| `PWD` | Current directory | `/home/username/projects` |
| `OLDPWD` | Previous directory | `/home/username` |
| `LANG` | Language/locale | `en_US.UTF-8` |
| `EDITOR` | Default text editor | `vim` or `nano` |
| `TERM` | Terminal type | `xterm-256color` |

## Practical Exercise

**Create a custom command:**

```bash
# 1. Create a script
cat > ~/bin/greet << 'EOF'
#!/bin/bash
echo "Hello, $USER!"
echo "Today is $(date +%A)"
echo "You are in: $PWD"
EOF

# 2. Make it executable
chmod +x ~/bin/greet

# 3. Ensure ~/bin is in PATH
export PATH=$PATH:~/bin

# 4. Run from anywhere
cd /
greet
cd ~
greet
```

## Troubleshooting

**"Command not found" errors:**

1. **Check if the command exists:**
   ```bash
   which commandname
   ls -l /path/to/command
   ```

2. **Check if it's executable:**
   ```bash
   ls -l /path/to/command
   chmod +x /path/to/command
   ```

3. **Check if directory is in PATH:**
   ```bash
   echo $PATH
   export PATH=$PATH:/directory/with/command
   ```

**Variable not expanding:**
```bash
echo $MYVAR            # Wrong if MYVAR isn't set
echo ${MYVAR}          # Same as above
echo ${MYVAR:-default} # Use default if not set
```

## Advanced Topics (Optional)

**Unsetting variables:**
```bash
unset MY_VAR
echo $MY_VAR           # Empty
```

**Local vs exported variables:**
```bash
LOCAL_VAR="test"       # Only in current shell
export EXPORTED_VAR="test"  # Available to child processes
```

**Using variables in scripts:**
```bash
#!/bin/bash
echo "User: $USER"
echo "Home: $HOME"
echo "Custom: ${MY_CUSTOM_VAR:-not set}"
```

## Reference

See `env_exercises.sh` for a complete list of commands to practice.

## Session Complete!

Congratulations! You've completed all six modules of the terminal skills session. You now know how to:

1. ✅ Use Podman for container management
2. ✅ Run Python scripts (interpreted language)
3. ✅ Compile and run C programs (compiled language)
4. ✅ Navigate and manage files in Linux
5. ✅ Understand users, groups, and permissions
6. ✅ Work with environment variables and PATH

**Next steps for continued learning:**
- Practice these skills daily
- Explore shell scripting (bash/zsh)
- Learn about process management (ps, top, kill)
- Study networking commands (ping, curl, ssh)
- Dive deeper into vim or another terminal text editor

