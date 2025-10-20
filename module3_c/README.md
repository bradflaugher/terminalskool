# Module 3: C Programming & Compilation

**Duration:** 13 minutes

## Learning Objectives

In this module, you will learn how compiled languages work by writing and compiling simple C programs. Understanding the compilation process is essential for working with systems programming, performance-critical applications, and understanding how software is built at a lower level.

## Key Concepts

**Compilation Process:**
1. **Source Code** (.c file) - Human-readable code
2. **Compilation** - Translating source code to machine code
3. **Executable** - Binary file that the computer can run directly

**Differences from Python:**
- Python: Write → Run (interpreted)
- C: Write → Compile → Run (compiled)

**Advantages of Compiled Languages:**
- Faster execution (already translated to machine code)
- Catch errors at compile time
- More control over system resources

**Disadvantages:**
- Extra compilation step
- Platform-specific executables
- Longer development cycle

## Exercises

### Part 1: Hello World in C (4 minutes)

**View the source code:**
```bash
cat hello.c
```

**Compile the program:**
```bash
gcc hello.c -o hello
```

Breaking down this command:
- `gcc` - GNU C Compiler
- `hello.c` - Source file to compile
- `-o hello` - Output file name (the executable)

**Check what was created:**
```bash
ls -l
```

You'll see both `hello.c` (source) and `hello` (executable).

**Run the executable:**
```bash
./hello
```

### Part 2: Understanding Executables (3 minutes)

**Compare file types:**
```bash
file hello.c
file hello
```

The source file is text, but the executable is binary (machine code).

**View executable permissions:**
```bash
ls -l hello
```

Notice the executable is automatically created with execute permissions.

**Try to read the executable:**
```bash
cat hello
```

You'll see gibberish because it's binary, not text.

### Part 3: Interactive C Program (3 minutes)

**Compile and run greet.c:**
```bash
gcc greet.c -o greet
./greet
```

This program demonstrates that compiled programs can still be interactive.

### Part 4: Command-Line Arguments in C (3 minutes)

**Compile the calculator:**
```bash
gcc calc.c -o calc
```

**Run with arguments:**
```bash
./calc 10 + 5
./calc 20 - 8
./calc 6 x 7
./calc 100 / 4
```

Note: Use `x` instead of `*` to avoid shell expansion issues.

**Compare with Python:**
- Python: `python3 calculator.py 10 + 5`
- C: `./calc 10 + 5`

The C version runs faster because it's already compiled to machine code.

### Part 5: Moving Executables (Challenge)

Executables can be moved anywhere in the filesystem. Try this:

```bash
mkdir ~/bin
cp calc ~/bin/
ls -l ~/bin/
```

Now you have a copy of the calculator in your personal bin directory. In the next module, we'll learn how to make it accessible from anywhere using the PATH variable.

## Files in This Module

- `hello.c` - Simple hello world program
- `greet.c` - Interactive program with user input
- `calc.c` - Command-line calculator

## Compilation Errors

If you make a mistake in C code, the compiler will tell you. Try modifying hello.c to introduce an error, then compile it to see what happens.

## Next Steps

In the next module, you'll learn how to organize and move files around the Linux filesystem.

