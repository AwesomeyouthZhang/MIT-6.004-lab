.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit
factorial:
    # YOUR CODE HERE
li t1, 1
ble a1, t1, rtn		#the recursive export is a1<1
addi sp, sp, -4
sw ra, 0(sp)
addi a1, a1, -1
call mul
jal ra, factorial
lw ra, 0(sp)
addi sp, sp, 4
rtn:
ret
mul:				#procedure of mutipliaction
addi sp, sp, -4
sw ra, 0(sp)
mul a0, a0, a1
lw ra, 0(sp)
addi sp, sp, 4
ret