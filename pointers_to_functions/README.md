# Pointers to functions

# Intro
qsort(), atexit() from the standard C library;
\*NIX OS signals.
thread starting: CreateThread() (win32), pthread_create() (POSIX);

# Example
the function addr is passed as an arguement
```
lea     rcx, comp[rip]
call    qsort@PLT
```
inside qsort() lib, control is passed to this addr.

# Warning
functin take void pointer
easy to mix up two different function with different type
