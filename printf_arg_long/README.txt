 rbp - register base pointer (start of stack)
 rsp - register stack pointer (current location in stack, growing downwards)

gcc -S -masm=intel


push 6,7,8 to the stack
print them in gdb with x/10xg $sp

0x7fffffffe008: 0x0000555555555083      0x0000000000000006
0x7fffffffe018: 0x0000000000000007      0x0000000000000008
0x7fffffffe028: 0x0000000000000000      0x0000000000000000
0x7fffffffe038: 0x00007ffff7e1709b      0x0000000000000000
0x7fffffffe048: 0x00007fffffffe118      0x0000000100040000

