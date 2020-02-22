# add/sub
In addition, the low 32-bit part are added first.
If carry has been occurred while adding, the CF flag is set.

same for substraction

# convert 32b to 64b
The CDQE instruction sign-extends a DWORD (32-bit value) in the EAX 
register to a QWORD (64-bit value) in the RAX register.


```
int64_t f (int32_t a)
{
    return a;
};

f:
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR -4[rbp], edi
        mov     eax, DWORD PTR -4[rbp]
        cdqe
        pop     rbp
        ret
```
