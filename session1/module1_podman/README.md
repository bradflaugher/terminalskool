# Module 1: Environment Setup & Podman Basics

**Duration:** 10 minutes

## Learning Objectives

In this module, you will learn how to orient yourself in the terminal environment and understand basic container operations using Podman. This foundation is critical for modern development workflows where containerization is standard practice.

## Prerequisites

Before starting, ensure Podman is installed on your system. You can check by running `podman --version`. If not installed, follow the installation instructions for your operating system at [podman.io](https://podman.io).

## Exercises

### Part 1: Terminal Orientation (3 minutes)

Start by understanding your current environment. The terminal is your interface to the operating system, and knowing where you are and who you are is essential.

**Commands to practice:**
- `pwd` - Print working directory (shows your current location)
- `whoami` - Shows your current username
- `hostname` - Shows your computer's name
- `ls` - List files in current directory
- `ls -la` - List all files with detailed information

### Part 2: Podman Basics (7 minutes)

Podman is a container engine that allows you to run applications in isolated environments. Unlike Docker, Podman runs containers without requiring a daemon and can run rootless containers for better security.

**Key Concepts:**
- **Container:** A lightweight, standalone package that includes everything needed to run software
- **Image:** A template used to create containers
- **Registry:** A repository for storing and distributing container images

**Hands-on Practice:**

1. Check Podman installation: `podman --version`
2. Pull a test image: `podman pull hello-world`
3. View downloaded images: `podman images`
4. Run the container: `podman run hello-world`
5. List containers: `podman ps -a`

**Challenge Exercise:**

Pull and run an interactive Alpine Linux container, explore inside it, then exit:
```bash
podman run -it alpine sh
# Inside the container, try: ls, pwd, whoami, exit
```

## Reference

See `podman_exercises.sh` for a complete list of commands to practice.

