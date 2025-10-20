_Generated with love by Manus.ai_

# Module 13: Archives and Compression

**Duration:** 10 minutes

## Learning Objectives

In this module, you will learn how to create and extract common archive and compression formats. This is a fundamental skill for packaging projects, downloading software, and managing backups.

## Key Concepts

- **Archiving:** Combining multiple files and directories into a single file (e.g., with `tar`). This preserves file permissions and directory structures but does not compress.
- **Compression:** Reducing the size of a file (e.g., with `gzip`, `bzip2`, `xz`).
- **Combined Operation:** The most common practice is to archive and compress in a single step, creating files like `.tar.gz`.

## Core Commands

| Command | Purpose | Common Usage |
| :--- | :--- | :--- |
| `tar` | The standard tool for creating and extracting archives. | `tar -czf archive.tar.gz directory/` |
| `gzip` | The most common and fastest compression utility. | `gzip file.txt` (creates `file.txt.gz`) |
| `gunzip` | Decompresses `.gz` files. | `gunzip file.txt.gz` |
| `zip` | Creates `.zip` archives, common on Windows. | `zip -r archive.zip directory/` |
| `unzip` | Extracts `.zip` archives. | `unzip archive.zip` |

## Exercises

### Part 1: Creating Archives with `tar` (4 minutes)

Let's create some files to work with.

```bash
mkdir -p my_project/{src,data}
touch my_project/src/main.c
echo "Sample data" > my_project/data/input.txt
```

Now, let's archive them.

**Practice:**

1.  **Create a gzipped tarball (`.tar.gz`):** This is the most common format.

    ```bash
    # c - create, z - gzip, v - verbose, f - file
    tar -czvf project-backup.tar.gz my_project/
    ```

2.  **List the contents** without extracting:

    ```bash
    # t - list
    tar -tvf project-backup.tar.gz
    ```

### Part 2: Extracting Archives (4 minutes)

Now that you have an archive, let's practice extracting it.

**Practice:**

1.  **Create a new directory** to extract into, to avoid overwriting your original files.

    ```bash
    mkdir extracted_project
    mv project-backup.tar.gz extracted_project/
    cd extracted_project/
    ```

2.  **Extract the archive:**

    ```bash
    # x - extract
    tar -xzvf project-backup.tar.gz
    ```

3.  **Verify the contents:**

    ```bash
    ls -R my_project/
    ```

### Part 3: Using `zip` (2 minutes)

`.zip` is another common format, especially when sharing files with Windows users.

**Practice:**

1.  **Create a zip archive:**

    ```bash
    # Go back to the parent directory
    cd ..

    # -r for recursive
    zip -r project.zip my_project/
    ```

2.  **Extract the zip archive:**

    ```bash
    unzip project.zip -d unzipped_project/
    ls -R unzipped_project/
    ```

## Summary of `tar` Flags

| Flag | Meaning | Used For |
| :--- | :--- | :--- |
| `-c` | **c**reate | Creating archives |
| `-x` | **e**xtract | Extracting archives |
| `-t` | **t**est (list) | Listing archive contents |
| `-v` | **v**erbose | Showing progress |
| `-f` | **f**ile | Specifying the archive filename (must be last) |
| `-z` | g**z**ip | Using gzip compression (`.tar.gz`) |
| `-j` | b**j**ip2 | Using bzip2 compression (`.tar.bz2`) |
| `-J` | x**z** | Using xz compression (`.tar.xz`) |

## Next Steps

Being able to bundle and compress files is essential. Next, you'll learn how to query your system for important information about its status and configuration.

