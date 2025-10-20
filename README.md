# Terminal Skool: A 3-Hour Terminal Proficiency Course

Welcome to **Terminal Skool**, a comprehensive, hands-on course designed to take you from terminal novice to proficient command-line user in just three hours. This course is structured as a series of pair programming sessions, perfect for mentoring junior developers or self-study.

## Course Overview

This course consists of three one-hour sessions, each building upon the previous one. By the end, you will have mastered the essential skills needed to navigate, automate, and manage systems using the command line.

### Session 1: Foundational Terminal Skills (60 minutes)

Learn the basics of terminal navigation, scripting, and system management.

| Module | Topic | Duration |
| :--- | :--- | :--- |
| 1 | Environment Setup & Podman Basics | 10 min |
| 2 | Python Scripting | 12 min |
| 3 | C Programming & Compilation | 13 min |
| 4 | File Management & Navigation | 10 min |
| 5 | Users & Permissions | 8 min |
| 6 | Environment Variables & PATH | 7 min |

### Session 2: Intermediate Terminal Skills (60 minutes)

Build on the foundation with shell scripting, text processing, and process management.

| Module | Topic | Duration |
| :--- | :--- | :--- |
| 7 | Inspecting Files and Executables | 12 min |
| 8 | Shell Scripting Basics | 15 min |
| 9 | Text Processing and Piping | 13 min |
| 10 | Process Management | 12 min |
| 11 | Input/Output Redirection | 8 min |

### Session 3: Advanced Terminal Skills (60 minutes)

Master advanced topics including networking, archives, and productivity tools.

| Module | Topic | Duration |
| :--- | :--- | :--- |
| 12 | Networking Basics | 12 min |
| 13 | Archives and Compression | 10 min |
| 14 | System Information | 10 min |
| 15 | Advanced File Operations | 13 min |
| 16 | Terminal Productivity & Screen | 15 min |

## What You'll Learn

By completing this course, you will be able to:

-   Navigate the Linux filesystem with confidence
-   Write and execute scripts in Python, Bash, and C
-   Compile programs and understand the difference between interpreted and compiled languages
-   Manage files, directories, and permissions
-   Use environment variables and customize your PATH
-   Inspect and identify different types of executables
-   Write shell scripts with variables, loops, conditionals, and functions
-   Perform sophisticated text processing using pipes and filters
-   Manage background and foreground processes
-   Redirect input and output streams
-   Use networking tools like `curl`, `wget`, `ssh`, and `scp`
-   Create and extract archives with `tar`, `gzip`, and `zip`
-   Query system information for troubleshooting and monitoring
-   Perform advanced file operations with `find`, `xargs`, and links
-   Boost productivity with aliases, history, and `screen`

## Prerequisites

-   A Linux or macOS terminal (or WSL on Windows)
-   Python 3 installed
-   gcc compiler installed (for C module)
-   Podman installed (optional, for Module 1)

### Installing Prerequisites

**On Ubuntu/Debian:**

```bash
sudo apt update
sudo apt install -y python3 gcc podman screen
```

**On macOS:**

```bash
brew install python3 gcc podman screen
```

**On Fedora/RHEL:**

```bash
sudo dnf install -y python3 gcc podman screen
```

## Getting Started

1.  **Clone this repository** (or download the materials).

    ```bash
    git clone https://github.com/bradflaugher/terminalskool.git
    cd terminalskool
    ```

2.  **Start with Session 1:**

    ```bash
    cd session1
    cat README.md
    ```

3.  **Work through each module in order,** reading the README and practicing the exercises.

## Directory Structure

```
terminalskool/
├── README.md                      # This file
├── instructor_notes.md            # Teaching guide for instructors
├── quick_reference.md             # Command cheat sheet
├── session1/
│   ├── README.md                  # Session 1 overview
│   ├── module1_podman/
│   ├── module2_python/
│   ├── module3_c/
│   ├── module4_files/
│   ├── module5_users/
│   └── module6_env/
├── session2/
│   ├── README.md                  # Session 2 overview
│   ├── module7_inspecting/
│   ├── module8_shell_scripting/
│   ├── module9_text_processing/
│   ├── module10_processes/
│   └── module11_io_redirection/
└── session3/
    ├── README.md                  # Session 3 overview
    ├── module12_networking/
    ├── module13_archives/
    ├── module14_system_info/
    ├── module15_advanced_files/
    └── module16_productivity/
```

## Tips for Success

-   **Type everything yourself** - Don't copy/paste; muscle memory matters.
-   **Read error messages** - They usually tell you what's wrong.
-   **Use Tab completion** - Press Tab to auto-complete file and command names.
-   **Explore man pages** - Type `man <command>` to learn more about any command.
-   **Practice regularly** - Use these skills daily to build proficiency.
-   **Ask questions** - If something is unclear, ask!

## For Instructors

If you are using this course to teach a junior developer, please review the `instructor_notes.md` file for guidance on pacing, common questions, and troubleshooting.

## Contributing

This is a living document. If you find errors or have suggestions for improvement, please open an issue or submit a pull request!

## License

This course is provided as-is for educational purposes.

---

**Happy learning, and welcome to Terminal Skool!**

