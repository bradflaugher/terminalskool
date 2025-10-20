_Generated with love by Manus.ai_

# Module 12: Networking Basics

**Duration:** 12 minutes

## Learning Objectives

In this module, you will learn how to use essential command-line tools for network diagnostics and interaction. These skills are critical for developers who need to test connectivity, interact with APIs, and manage remote servers.

## Key Commands

| Command | Purpose |
| :--- | :--- |
| `ping` | Test network connectivity to a host. |
| `curl` | Transfer data from or to a server (great for APIs). |
| `wget` | Download files from the network. |
| `ssh` | Securely connect to a remote machine. |
| `scp` | Securely copy files between machines. |
| `ss` / `netstat` | Show network connections, routing tables, etc. |
| `dig` / `nslookup` | Query DNS servers. |

## Exercises

### Part 1: Testing Connectivity (`ping`) (2 minutes)

`ping` is the first tool to reach for when you need to know if a server is reachable.

**Practice:**

```bash
# Ping a reliable server (sends packets until you stop with Ctrl+C)
ping google.com

# Send just 4 packets
ping -c 4 google.com
```

### Part 2: Interacting with Web Services (`curl` and `wget`) (4 minutes)

`curl` is a versatile tool for making web requests, while `wget` is specialized for downloading files.

**Practice:**

1.  **Fetch a webpage's content:**

    ```bash
    curl http://example.com
    ```

2.  **Test a REST API endpoint:**

    ```bash
    curl https://api.github.com/users/octocat
    ```

3.  **Download a file:**

    ```bash
    wget https://raw.githubusercontent.com/bradflaugher/bradflaugher.com/main/README.md
    cat README.md
    ```

### Part 3: Remote Server Management (`ssh` and `scp`) (4 minutes)

`ssh` and `scp` are the standard tools for securely working with remote servers.

**Practice (Conceptual - requires a remote server):**

1.  **Connect to a server:**

    ```bash
    # ssh username@your_server_ip
    ```

2.  **Copy a file to the server:**

    ```bash
    # Create a test file
    echo "Hello from local machine" > testfile.txt

    # Copy it over
    # scp testfile.txt username@your_server_ip:~/testfile.txt
    ```

3.  **Run a command remotely:**

    ```bash
    # ssh username@your_server_ip "ls -l ~"
    ```

### Part 4: Inspecting Local Network State (`ss`) (2 minutes)

`ss` (or the older `netstat`) shows what network connections are active on your machine.

**Practice:**

```bash
# Show all listening TCP and UDP ports
ss -tuln

# Check if anything is listening on the SSH port (22)
ss -tuln | grep :22

# In another terminal, run a simple web server
# python3 -m http.server 8000

# Now check for the listening port
ss -tuln | grep :8000
```

## Next Steps

Now that you can interact with the network, the next module will teach you how to manage and bundle files using archives and compression tools.

