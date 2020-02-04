
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <my_abs>:
int my_abs (int i)
{
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    if (i<0)
   7:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   b:	79 07                	jns    14 <my_abs+0x14>
        return -i;
   d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  10:	f7 d8                	neg    eax
  12:	eb 03                	jmp    17 <my_abs+0x17>
    else
        return i;
  14:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
};
  17:	5d                   	pop    rbp
  18:	c3                   	ret    
