# Instructor Notes for Terminal Skills Session

## Overview

This document provides guidance for conducting the one-hour terminal skills pair programming session. As the instructor, your role is to guide the junior developer through hands-on exercises while explaining the underlying concepts and best practices.

## Teaching Philosophy

The session is designed around the principle of **learning by doing**. Rather than lecturing, you should:

- Have the junior developer type commands themselves
- Ask guiding questions rather than giving direct answers
- Encourage experimentation and exploration
- Normalize making mistakes (they're learning opportunities)
- Connect concepts to real-world development scenarios

## Pre-Session Setup

Before starting the session, ensure:

1. **Environment is ready:**
   - Terminal is open and accessible
   - All materials are in the `terminal_session` directory
   - Podman is installed (if covering Module 1)
   - gcc is installed (for Module 3)

2. **Materials are accessible:**
   - Junior developer has access to all module directories
   - They can view README files and scripts
   - Quick reference is available for lookup

3. **Expectations are set:**
   - Session will be hands-on, not passive
   - It's okay to ask questions at any time
   - Making mistakes is part of learning

## Module-by-Module Teaching Guide

### Module 1: Environment Setup & Podman Basics (10 minutes)

**Key Concepts to Emphasize:**
- The terminal is just another interface to the computer
- Containers isolate applications and their dependencies
- Podman is a daemonless alternative to Docker

**Teaching Flow:**
1. Start with orientation commands (`pwd`, `whoami`, `ls`)
2. Explain what each command shows and why it matters
3. Introduce Podman with the hello-world example
4. Show the difference between images and containers
5. Demonstrate the lifecycle: pull → run → stop → remove

**Common Questions:**
- *"What's the difference between Podman and Docker?"* - Podman doesn't require a daemon and can run rootless
- *"Why do we need containers?"* - Consistency across environments, isolation, reproducibility

**Watch Out For:**
- Login credentials for container registry (have them ready or skip if not available)
- First-time pulls can be slow depending on network speed

### Module 2: Python Scripting (12 minutes)

**Key Concepts to Emphasize:**
- Interpreted vs compiled languages
- File permissions and the execute bit
- Shebang lines and how they work
- Command-line arguments

**Teaching Flow:**
1. Show the two ways to run Python scripts
2. Explain what `chmod +x` does and why
3. Demonstrate the shebang line's purpose
4. Walk through the calculator example with different arguments
5. Have them modify the script to add a new operation

**Common Questions:**
- *"Why do we need the shebang?"* - It tells the system which interpreter to use when running directly
- *"What's the difference between `python` and `python3`?"* - Version differences; `python3` is explicit

**Watch Out For:**
- The asterisk (*) in shell needs quoting for calculator
- Students might forget the `./` prefix when running scripts

### Module 3: C Programming & Compilation (13 minutes)

**Key Concepts to Emphasize:**
- Compilation translates source code to machine code
- The compile step catches errors early
- Executables are platform-specific
- Compiled programs run faster than interpreted

**Teaching Flow:**
1. Show the hello.c source code
2. Explain the compilation process step-by-step
3. Compare file types (source vs executable)
4. Demonstrate the speed difference (optional)
5. Show how to move executables around
6. Connect to the next module about PATH

**Common Questions:**
- *"Why compile if Python is easier?"* - Performance, type safety, system-level access
- *"Can I run this executable on Windows?"* - No, it's compiled for Linux

**Watch Out For:**
- Compilation errors can be intimidating; walk through them carefully
- The executable won't have a file extension (unlike .exe on Windows)

### Module 4: File Management & Navigation (10 minutes)

**Key Concepts to Emphasize:**
- Everything in Linux is a file
- The filesystem is a tree structure
- Absolute vs relative paths
- The importance of backups before deletion

**Teaching Flow:**
1. Start with navigation and orientation
2. Explain the standard Linux directory structure
3. Practice creating, copying, and moving files
4. Emphasize the danger of `rm -rf`
5. Show how to find files

**Common Questions:**
- *"What's the difference between `/` and `~`?"* - Root directory vs home directory
- *"Why use `cp -r`?"* - Recursive copy for directories

**Watch Out For:**
- Students might accidentally delete important files
- Confusion between `cp` and `mv`

### Module 5: Users & Permissions (8 minutes)

**Key Concepts to Emphasize:**
- Security through permissions
- The principle of least privilege
- Understanding ownership
- When and why to use sudo

**Teaching Flow:**
1. Start with identity commands
2. Explain the permission string in detail
3. Practice both symbolic and numeric chmod
4. Discuss common permission patterns
5. Explain sudo and its importance

**Common Questions:**
- *"Why can't I just use 777 for everything?"* - Security risk; anyone can modify/execute
- *"What's the difference between owner and group?"* - Owner is one user, group can be multiple

**Watch Out For:**
- Numeric permissions can be confusing initially
- Students might overuse sudo

### Module 6: Environment Variables & PATH (7 minutes)

**Key Concepts to Emphasize:**
- Environment variables configure behavior
- PATH determines where commands are found
- Changes can be temporary or permanent
- Order matters in PATH

**Teaching Flow:**
1. Show common environment variables
2. Explain how PATH works with `which`
3. Demonstrate adding to PATH
4. Connect back to previous modules (running custom scripts)
5. Show how to make changes permanent

**Common Questions:**
- *"Why isn't my custom script found?"* - Not in PATH or not executable
- *"What's the difference between `export` and just setting a variable?"* - Export makes it available to child processes

**Watch Out For:**
- Syntax errors when modifying PATH
- Forgetting to source .bashrc after changes

## Pacing and Time Management

**If Running Ahead:**
- Add challenge exercises from the READMEs
- Discuss advanced topics mentioned in the modules
- Have them create their own scripts
- Explore man pages together

**If Running Behind:**
- Skip the Podman module (least essential for immediate work)
- Reduce hands-on time, increase demonstration
- Focus on core concepts, skip optional exercises
- Provide materials for self-study after the session

## Troubleshooting Common Issues

### Command Not Found
1. Check spelling
2. Check if command is installed
3. Check PATH
4. Check if file is executable

### Permission Denied
1. Check file permissions with `ls -l`
2. Add execute permission if needed
3. Check if sudo is required
4. Verify file ownership

### Compilation Errors
1. Read the error message carefully
2. Check for typos in the code
3. Ensure gcc is installed
4. Verify file extension is .c

## Post-Session Follow-Up

**Encourage Continued Practice:**
- Set up a personal bin directory
- Write a simple automation script
- Explore man pages for commands
- Join a Linux/Unix user group or forum

**Provide Resources:**
- Quick reference cheat sheet
- Links to online tutorials
- Recommended books or courses
- Practice challenge ideas

## Session Success Indicators

By the end of the session, the junior developer should be able to:

- Navigate the filesystem confidently
- Understand the difference between interpreted and compiled languages
- Create and run scripts in both Python and C
- Manage file permissions appropriately
- Modify their PATH to run custom commands
- Troubleshoot common terminal errors

## Final Tips

- **Be patient** - Everyone learns at their own pace
- **Encourage questions** - There are no stupid questions
- **Celebrate progress** - Acknowledge when they get something right
- **Share your experience** - Relate concepts to real development work
- **Make it fun** - The terminal is powerful and exciting!

Good luck with the session!

