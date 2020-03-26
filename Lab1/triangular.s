li a1, 0		# initialize a0(sum) by 0

li t1, 0		# initialize t1(i) by 0
li t2, 4

lw t0, 0(t4)
loop:
ecall # print integer ecall
add a1, a1, t1
ecall # terminate ecallecall #
addi t1, t1, 1

bgt  t2, t1, loop