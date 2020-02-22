# SIMD

# Intro
each MMX=hold 1x64bit, 8 registers, mm0-mm7  
SSE=extension to 128b, xmm registers  
AVX=extension to 256b  

# Addition
Note the XMMWORD

movdqu=mov unaligned double quadword (load 16B)  
PADDD (Add Packed Integers)—adds 4 pairs of 32-bit numbers

```
movdqu  xmm0, XMMWORD PTR [rsi+rax]
movdqu  xmm1, XMMWORD PTR [rdx+rax]
paddd   xmm0, xmm1
movups  XMMWORD PTR [rcx+rax], xmm0
```

intrinsic, loading 16B per time, use 16B aligned otherwise may crosses a 
memory page allocated by the OS. mem.page allocated on 16B boundary.
