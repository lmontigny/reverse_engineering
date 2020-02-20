struct {
    char a;
    int b;
    char c;
    int d;
};

mov     BYTE PTR -16[rbp], 1
mov     DWORD PTR -12[rbp], 2
mov     BYTE PTR -8[rbp], 3
mov     DWORD PTR -4[rbp], 4

char as 4B instead of 1B
structure copied to the stack
sub esp, 16
would need pointer to avoid copy
