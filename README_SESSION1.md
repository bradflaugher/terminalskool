# Terminal Skills Pair Programming Session

Welcome to the Terminal Skills Pair Programming Session! This repository contains all materials for a one-hour hands-on session designed to build foundational command-line skills for junior developers.

## What's Included

This session covers six essential modules:

1. **Environment Setup & Podman Basics** - Container management and terminal orientation
2. **Python Scripting** - Running interpreted languages and understanding shebangs
3. **C Programming & Compilation** - Compiling code and understanding executables
4. **File Management & Navigation** - Navigating the Linux filesystem
5. **Users & Permissions** - Understanding and managing file permissions
6. **Environment Variables & PATH** - Configuring your development environment

## Directory Structure

```
terminal_session/
├── README.md                      # This file
├── session_guide.md               # Complete session overview
├── instructor_notes.md            # Teaching guide for instructors
├── quick_reference.md             # Command cheat sheet
├── module1_podman/
│   ├── README.md                  # Module guide
│   └── podman_exercises.sh        # Practice commands
├── module2_python/
│   ├── README.md                  # Module guide
│   ├── hello.py                   # Simple Python script
│   └── calculator.py              # Command-line calculator
├── module3_c/
│   ├── README.md                  # Module guide
│   ├── hello.c                    # Simple C program
│   ├── greet.c                    # Interactive C program
│   └── calc.c                     # Command-line calculator in C
├── module4_files/
│   ├── README.md                  # Module guide
│   └── file_exercises.sh          # File management commands
├── module5_users/
│   ├── README.md                  # Module guide
│   └── user_exercises.sh          # Permission commands
└── module6_env/
    ├── README.md                  # Module guide
    ├── env_exercises.sh           # Environment variable commands
    └── test_env.sh                # Test script for variables
```

## Getting Started

### For Junior Developers

1. **Start with the session guide**: Read `session_guide.md` for an overview
2. **Work through each module**: Follow the README in each module directory
3. **Practice the exercises**: Run the commands and scripts in each module
4. **Keep the quick reference handy**: Use `quick_reference.md` for command lookup
5. **Experiment and explore**: Don't be afraid to try things!

### For Instructors

1. **Review instructor notes**: Read `instructor_notes.md` for teaching guidance
2. **Prepare the environment**: Ensure all prerequisites are installed
3. **Follow the timeline**: Each module has a suggested duration
4. **Encourage hands-on practice**: Have the student type commands themselves
5. **Be flexible**: Adjust pacing based on the student's progress

## Prerequisites

- A Linux or macOS terminal (or WSL on Windows)
- Python 3 installed
- gcc compiler installed (for C module)
- Podman installed (optional, for Module 1)

### Installing Prerequisites

**On Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install -y python3 gcc podman
```

**On macOS:**
```bash
brew install python3 gcc podman
```

**On Fedora/RHEL:**
```bash
sudo dnf install -y python3 gcc podman
```

## Session Timeline

| Module | Topic | Duration |
|--------|-------|----------|
| 1 | Environment Setup & Podman Basics | 10 min |
| 2 | Python Scripting | 12 min |
| 3 | C Programming & Compilation | 13 min |
| 4 | File Management & Navigation | 10 min |
| 5 | Users & Permissions | 8 min |
| 6 | Environment Variables & PATH | 7 min |
| **Total** | | **60 min** |

## Learning Objectives

By the end of this session, you will be able to:

- Navigate the Linux filesystem confidently
- Understand the difference between interpreted and compiled languages
- Create and execute Python scripts
- Compile and run C programs
- Manage files and directories
- Understand and modify file permissions
- Work with environment variables and PATH
- Use Podman for basic container operations

## Tips for Success

- **Type everything yourself** - Don't copy/paste; muscle memory matters
- **Read error messages** - They usually tell you what's wrong
- **Use Tab completion** - Press Tab to auto-complete file and command names
- **Explore man pages** - Type `man <command>` to learn more about any command
- **Practice regularly** - Use these skills daily to build proficiency
- **Ask questions** - If something is unclear, ask!

## Additional Resources

- [Linux Command Line Basics](https://ubuntu.com/tutorials/command-line-for-beginners)
- [Podman Documentation](https://docs.podman.io/)
- [Python Documentation](https://docs.python.org/3/)
- [GCC Documentation](https://gcc.gnu.org/onlinedocs/)

## Troubleshooting

### Command Not Found
- Check spelling
- Verify the command is installed
- Check your PATH variable

### Permission Denied
- Check file permissions with `ls -l`
- Add execute permission with `chmod +x`
- Use `sudo` if needed (carefully!)

### Compilation Errors
- Read the error message carefully
- Check for typos in your code
- Ensure you're using the correct file extension

## Next Steps

After completing this session:

1. Practice these commands daily
2. Explore shell scripting (bash/zsh)
3. Learn about process management (ps, top, kill)
4. Study networking commands (ping, curl, ssh)
5. Master a terminal text editor (vim, nano, emacs)

## Feedback and Contributions

This is a living document. If you find errors or have suggestions for improvement, please share your feedback!

---

**Happy learning, and enjoy your journey into the terminal!**
