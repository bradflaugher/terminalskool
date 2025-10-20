_Generated with love by Manus.ai_

# Module 9: Text Processing and Piping

**Duration:** 13 minutes

## Learning Objectives

This module covers one of the most powerful and fundamental concepts of the Unix philosophy: **piping**. You will learn how to chain together simple, single-purpose commands to perform complex text manipulation. This skill is essential for data analysis, log parsing, and system administration.

## Key Concepts

- **Piping (`|`):** The pipe operator takes the standard output (stdout) of the command on its left and uses it as the standard input (stdin) for the command on its right.
- **Filters:** Many command-line tools are designed as filters; they read from stdin, transform the data, and write to stdout. Common filters include `grep`, `cut`, `sort`, `uniq`, `sed`, and `awk`.
- **Composition:** By combining these simple filters, you can build sophisticated data processing pipelines without writing any code.

## Core Commands

| Command | Purpose |
| :--- | :--- |
| `grep` | Search for patterns in text. |
| `cut` | Extract columns (fields) from text. |
| `sort` | Sort lines of text. |
| `uniq` | Filter out adjacent, duplicate lines. |
| `wc` | Count lines, words, and characters. |
| `sed` | Perform basic text transformations on an input stream. |
| `awk` | A powerful pattern-scanning and processing language. |

## Exercises

All exercises use the `sample_data.txt` file. First, inspect the file to understand its structure:

```bash
cat sample_data.txt
```

### Part 1: Finding and Filtering with `grep` (3 minutes)

`grep` is your primary tool for searching text.

**Practice:**

```bash
# Find all lines containing "Developer"
grep 'Developer' sample_data.txt

# Pipe the output of `cat` to `grep` (a common pattern)
cat sample_data.txt | grep 'Developer'

# Find all running processes related to 'bash'
ps aux | grep 'bash'
```

### Part 2: Extracting Columns with `cut` (3 minutes)

`cut` is used to slice text vertically.

**Practice:**

```bash
# Get a list of all jobs from the data file
cut -d',' -f3 sample_data.txt

# Find all engineers and show only their names and cities
grep 'Engineer' sample_data.txt | cut -d',' -f1,4
```

### Part 3: Sorting and Finding Uniques (`sort` and `uniq`) (4 minutes)

`sort` and `uniq` are often used together. `uniq` requires sorted input to work correctly.

**Practice:**

```bash
# Get a list of all unique job titles
cut -d',' -f3 sample_data.txt | sort | uniq

# Count how many people have each job title
cut -d',' -f3 sample_data.txt | sort | uniq -c

# Find the most common job title
cut -d',' -f3 sample_data.txt | sort | uniq -c | sort -rn | head -n 1
```

### Part 4: Putting It All Together (3 minutes)

Complex data processing can be achieved by building a pipeline of commands.

**Challenge:** Find the names of all developers, sort them alphabetically, and save the list to a file named `developers.txt`.

**Solution:**

```bash
grep 'Developer' sample_data.txt | cut -d',' -f1 | sort > developers.txt
cat developers.txt
```

## Real-World Example

Imagine you have a web server log file (`access.log`). You can use piping to find the top 10 most frequent IP addresses visiting your site:

```bash
# This is a conceptual example
cat access.log | cut -d' ' -f1 | sort | uniq -c | sort -rn | head -n 10
```

This single line of code performs a complete data analysis task, demonstrating the power and elegance of the piping model.

## Next Steps

Now that you can manipulate data and build command pipelines, the next module will teach you how to manage the processes that run these commands.

