# Module 5: Users & Permissions

**Duration:** 8 minutes

## Learning Objectives

In this module, you will learn about Linux user management and file permissions. Understanding permissions is critical for security, collaboration, and troubleshooting access issues.

## Key Concepts

**Users and Groups:**
- Every file and process belongs to a user and group
- Users can belong to multiple groups
- Permissions control who can read, write, or execute files

**Permission Types:**
- **Read (r):** View file contents or list directory contents
- **Write (w):** Modify file or add/remove files in directory
- **Execute (x):** Run file as program or enter directory

**Permission Categories:**
- **Owner (u):** The user who owns the file
- **Group (g):** Users in the file's group
- **Others (o):** Everyone else
- **All (a):** All three categories

## Exercises

### Part 1: Understanding Your Identity (2 minutes)

**Find out who you are:**
```bash
whoami                 # Your username
id                     # Your user ID and groups
groups                 # Groups you belong to
```

**Understanding the output of `id`:**
- `uid` - User ID (unique number for your user)
- `gid` - Primary group ID
- `groups` - All groups you're in

### Part 2: Reading File Permissions (2 minutes)

**Create a test file and examine it:**
```bash
echo "test" > testfile.txt
ls -l testfile.txt
```

**Understanding the output:**
```
-rw-r--r-- 1 username groupname 5 Jan 15 10:30 testfile.txt
│││││││││  │ │        │         │ │            │
│││││││││  │ │        │         │ │            └─ filename
│││││││││  │ │        │         │ └─ modification time
│││││││││  │ │        │         └─ file size
│││││││││  │ │        └─ group owner
│││││││││  │ └─ user owner
│││││││││  └─ number of hard links
│││││││││
││└┴┴┴┴┴┴─ permissions for others (r--)
││
│└┴┴───── permissions for group (r--)
│
└┴┴───── permissions for owner (rw-)
```

### Part 3: Changing Permissions (3 minutes)

**Symbolic method (using letters):**
```bash
chmod +x testfile.txt      # Add execute for everyone
ls -l testfile.txt
chmod -x testfile.txt      # Remove execute
chmod u+x testfile.txt     # Add execute for owner only
chmod g+w testfile.txt     # Add write for group
chmod o-r testfile.txt     # Remove read for others
ls -l testfile.txt
```

**Numeric method (using numbers):**

Each permission has a value:
- Read (r) = 4
- Write (w) = 2
- Execute (x) = 1

Add them together for each category:
- 7 = rwx (4+2+1)
- 6 = rw- (4+2)
- 5 = r-x (4+1)
- 4 = r-- (4)
- 0 = --- (no permissions)

**Practice:**
```bash
chmod 755 testfile.txt     # rwxr-xr-x
ls -l testfile.txt
chmod 644 testfile.txt     # rw-r--r--
ls -l testfile.txt
chmod 700 testfile.txt     # rwx------
ls -l testfile.txt
```

**Common permission patterns:**
- `755` - Executable files (owner can modify, everyone can run)
- `644` - Regular files (owner can modify, everyone can read)
- `700` - Private files (only owner has access)
- `777` - Fully open (usually not recommended for security)

### Part 4: Understanding sudo (1 minute)

**What is sudo?**
- Stands for "superuser do"
- Allows you to run commands as root (administrator)
- Required for system-wide changes

**Examples:**
```bash
sudo apt update            # Update package lists (requires root)
sudo systemctl restart service  # Restart a service
sudo -i                    # Become root user (exit to return)
```

**Why use sudo instead of root?**
- Safer (you have to explicitly request elevated privileges)
- Auditable (system logs who used sudo)
- Temporary (only that command runs as root)

## Practical Exercise

**Create a script and make it executable:**

```bash
# Create a simple script
cat > hello.sh << 'EOF'
#!/bin/bash
echo "Hello from a shell script!"
echo "Current user: $USER"
EOF

# Try to run it (will fail)
./hello.sh

# Check permissions
ls -l hello.sh

# Make it executable
chmod +x hello.sh

# Check permissions again
ls -l hello.sh

# Now run it
./hello.sh
```

## Permission Troubleshooting

**Common issues:**

1. **"Permission denied" when running a script**
   - Solution: `chmod +x script.sh`

2. **"Permission denied" when reading a file**
   - Check: `ls -l filename`
   - Solution: `chmod +r filename` or `chmod 644 filename`

3. **Can't modify a file**
   - Check: `ls -l filename`
   - Solution: `chmod +w filename` (if you own it)
   - Or: `sudo chmod +w filename` (if you don't)

## Security Best Practices

- **Never use 777 permissions** unless absolutely necessary
- **Don't run everything as sudo** - only use when needed
- **Check file permissions** before sharing sensitive files
- **Use 600 or 700** for private files (SSH keys, passwords)

## Reference

See `user_exercises.sh` for a complete list of commands to practice.

## Next Steps

In the final module, you'll learn about environment variables and the PATH, which will tie together everything you've learned about running programs and scripts.

