	.file	"all.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/Desktop/lab-wlos_baseline/testbench/all" "all.c"
	.globl	A1
	.data
	.align	2
	.type	A1, @object
	.size	A1, 40
A1:
	.word	893
	.word	40
	.word	3233
	.word	4267
	.word	2669
	.word	2541
	.word	9073
	.word	6023
	.word	5681
	.word	4622
	.globl	A
	.align	2
	.type	A, @object
	.size	A, 64
A:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.globl	B
	.align	2
	.type	B, @object
	.size	B, 64
B:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.globl	result
	.bss
	.align	2
	.type	result, @object
	.size	result, 64
result:
	.zero	64
	.globl	taps
	.data
	.align	2
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.globl	inputbuffer
	.bss
	.align	2
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.globl	inputsignal
	.data
	.align	2
	.type	inputsignal, @object
	.size	inputsignal, 44
inputsignal:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.globl	outputsignal
	.bss
	.align	2
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.text
	.align	2
	.type	flush_cpu_icache, @function
flush_cpu_icache:
.LFB21:
	.file 1 "../../firmware/system.h"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	flush_cpu_icache, .-flush_cpu_icache
	.align	2
	.type	flush_cpu_dcache, @function
flush_cpu_dcache:
.LFB22:
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	flush_cpu_dcache, .-flush_cpu_dcache
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	partition
	.type	partition, @function
partition:
.LFB321:
	.file 2 "all.c"
	.loc 2 7 75
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 2 8 6
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 9 6
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 11 8
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 11 2
	j	.L4
.L6:
	.loc 2 12 8
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 12 5
	lw	a4,-28(s0)
	ble	a4,a5,.L5
	.loc 2 13 6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 14 9
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 2 15 14
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 15 10
	lui	a5,%hi(A1)
	addi	a3,a5,%lo(A1)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 16 10
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L5:
	.loc 2 11 20 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L4:
	.loc 2 11 15 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L6
	.loc 2 19 7
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 19 18
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 19 16
	lui	a3,%hi(A1)
	addi	a3,a3,%lo(A1)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 19 4
	bge	a4,a5,.L7
	.loc 2 20 14
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 20 8
	lui	a4,%hi(A1)
	addi	a4,a4,%lo(A1)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 2 21 7
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 21 15
	lui	a4,%hi(A1)
	addi	a3,a4,%lo(A1)
	lw	a4,-40(s0)
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	.loc 2 21 11
	lui	a3,%hi(A1)
	addi	a3,a3,%lo(A1)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 22 10
	lui	a5,%hi(A1)
	addi	a4,a5,%lo(A1)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L7:
	.loc 2 24 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 25 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	partition, .-partition
	.align	2
	.globl	sort
	.type	sort, @function
sort:
.LFB322:
	.loc 2 27 72
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 2 28 4
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bge	a4,a5,.L11
.LBB2:
	.loc 2 29 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	partition
	sw	a0,-20(s0)
	.loc 2 30 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	mv	a1,a5
	lw	a0,-36(s0)
	call	sort
	.loc 2 31 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	sort
.L11:
.LBE2:
	.loc 2 33 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE322:
	.size	sort, .-sort
	.align	2
	.globl	qsort
	.type	qsort, @function
qsort:
.LFB323:
	.loc 2 35 58
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 36 2
	li	a1,9
	li	a0,0
	call	sort
	.loc 2 37 9
	lui	a5,%hi(A1)
	addi	a5,a5,%lo(A1)
	.loc 2 38 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	qsort, .-qsort
	.globl	__mulsi3
	.align	2
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB324:
	.loc 2 42 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 2 43 6
	sw	zero,-20(s0)
	.loc 2 48 15
	sw	zero,-36(s0)
	.loc 2 49 8
	sw	zero,-20(s0)
	.loc 2 49 2
	j	.L15
.L20:
	.loc 2 50 9
	sw	zero,-24(s0)
	.loc 2 50 3
	j	.L16
.L19:
	.loc 2 51 8
	sw	zero,-32(s0)
	.loc 2 52 10
	sw	zero,-28(s0)
	.loc 2 52 4
	j	.L17
.L18:
	.loc 2 53 16 discriminator 3
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 2 53 20 discriminator 3
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 53 13 discriminator 3
	lui	a4,%hi(A)
	addi	a4,a4,%lo(A)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 53 31 discriminator 3
	lw	a5,-28(s0)
	slli	a4,a5,2
	.loc 2 53 35 discriminator 3
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 53 28 discriminator 3
	lui	a4,%hi(B)
	addi	a4,a4,%lo(B)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 53 25 discriminator 3
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	.loc 2 53 9 discriminator 3
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 2 52 19 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L17:
	.loc 2 52 15 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L18
	.loc 2 54 13 discriminator 2
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 2 54 17 discriminator 2
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 54 22 discriminator 2
	lui	a4,%hi(result)
	addi	a4,a4,%lo(result)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 2 50 19 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L16:
	.loc 2 50 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	ble	a4,a5,.L19
	.loc 2 49 18 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 2 49 13 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L20
	.loc 2 57 9
	lui	a5,%hi(result)
	addi	a5,a5,%lo(result)
	.loc 2 58 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE324:
	.size	matmul, .-matmul
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB325:
	.loc 2 61 61
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB3:
	.loc 2 62 10
	sw	zero,-20(s0)
	.loc 2 62 2
	j	.L23
.L24:
	.loc 2 63 18 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 64 19 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 62 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L23:
	.loc 2 62 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L24
.LBE3:
	.loc 2 66 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE325:
	.size	initfir, .-initfir
	.align	2
	.globl	firfilter
	.type	firfilter, @function
firfilter:
.LFB326:
	.loc 2 68 76
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
.LBB4:
	.loc 2 69 10
	li	a5,10
	sw	a5,-20(s0)
	.loc 2 69 2
	j	.L26
.L27:
	.loc 2 70 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	.loc 2 70 31 discriminator 3
	lui	a4,%hi(inputbuffer)
	addi	a4,a4,%lo(inputbuffer)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 70 18 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a3,a5,%lo(inputbuffer)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 69 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L26:
	.loc 2 69 20 discriminator 1
	lw	a5,-20(s0)
	bgt	a5,zero,.L27
.LBE4:
	.loc 2 72 17
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 2 74 6
	sw	zero,-24(s0)
.LBB5:
	.loc 2 75 10
	sw	zero,-28(s0)
	.loc 2 75 2
	j	.L28
.L29:
	.loc 2 76 23 discriminator 3
	lui	a5,%hi(taps)
	addi	a4,a5,%lo(taps)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 76 38 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 76 26 discriminator 3
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	.loc 2 76 16 discriminator 3
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 75 22 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L28:
	.loc 2 75 16 discriminator 1
	lw	a4,-28(s0)
	li	a5,10
	ble	a4,a5,.L29
.LBE5:
	.loc 2 78 9
	lw	a5,-24(s0)
	.loc 2 79 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE326:
	.size	firfilter, .-firfilter
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB327:
	.loc 2 81 56
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 82 2
	call	initfir
.LBB6:
	.loc 2 83 10
	sw	zero,-20(s0)
	.loc 2 83 2
	j	.L32
.L33:
	.loc 2 84 21 discriminator 3
	lui	a5,%hi(inputsignal)
	addi	a4,a5,%lo(inputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	firfilter
	mv	a3,a0
	.loc 2 84 19 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 2 83 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 2 83 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L33
.LBE6:
	.loc 2 86 9
	lui	a5,%hi(outputsignal)
	addi	a5,a5,%lo(outputsignal)
	.loc 2 87 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE327:
	.size	fir, .-fir
	.section	.mprj,"ax",@progbits
	.align	2
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB328:
	.loc 2 91 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 2 92 10
	nop
.L36:
	.loc 2 92 14 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 92 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L36
	.loc 2 93 6
	li	a5,805306368
	addi	a5,a5,4
	.loc 2 93 39
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 94 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE328:
	.size	uart_write, .-uart_write
	.align	2
	.globl	uart_write_char
	.type	uart_write_char, @function
uart_write_char:
.LFB329:
	.loc 2 97 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 98 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L40
	.loc 2 99 3
	li	a0,13
	call	uart_write_char
.L40:
	.loc 2 102 10
	nop
.L39:
	.loc 2 102 14 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 102 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L39
	.loc 2 103 6
	li	a5,805306368
	addi	a5,a5,4
	.loc 2 103 39
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 2 104 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE329:
	.size	uart_write_char, .-uart_write_char
	.align	2
	.globl	uart_write_string
	.type	uart_write_string, @function
uart_write_string:
.LFB330:
	.loc 2 107 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 2 108 11
	j	.L42
.L43:
	.loc 2 109 28
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 2 109 9
	lbu	a5,0(a5)
	mv	a0,a5
	call	uart_write_char
.L42:
	.loc 2 108 12
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L43
	.loc 2 110 1
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE330:
	.size	uart_write_string, .-uart_write_string
	.align	2
	.globl	uart_read_char
	.type	uart_read_char, @function
uart_read_char:
.LFB331:
	.loc 2 114 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 116 12
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 116 44
	srli	a5,a5,5
	.loc 2 116 7
	bne	a5,zero,.L45
	.loc 2 116 67 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 116 99 discriminator 1
	srli	a5,a5,4
	.loc 2 116 60 discriminator 1
	bne	a5,zero,.L45
.LBB7:
	.loc 2 117 17
	sw	zero,-24(s0)
	.loc 2 117 9
	j	.L46
.L47:
	.loc 2 118 13 discriminator 3
 #APP
# 118 "all.c" 1
	nop
# 0 "" 2
	.loc 2 117 32 discriminator 3
 #NO_APP
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L46:
	.loc 2 117 26 discriminator 1
	lw	a5,-24(s0)
	ble	a5,zero,.L47
.LBE7:
	.loc 2 120 16
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 120 13
	sb	a5,-17(s0)
.L45:
	.loc 2 123 12
	lbu	a5,-17(s0)
	.loc 2 124 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE331:
	.size	uart_read_char, .-uart_read_char
	.align	2
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB332:
	.loc 2 127 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 129 12
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 129 44
	srli	a5,a5,5
	.loc 2 129 7
	bne	a5,zero,.L50
	.loc 2 129 67 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 129 99 discriminator 1
	srli	a5,a5,4
	.loc 2 129 60 discriminator 1
	bne	a5,zero,.L50
.LBB8:
	.loc 2 130 17
	sw	zero,-24(s0)
	.loc 2 130 9
	j	.L51
.L52:
	.loc 2 131 13 discriminator 3
 #APP
# 131 "all.c" 1
	nop
# 0 "" 2
	.loc 2 130 32 discriminator 3
 #NO_APP
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L51:
	.loc 2 130 26 discriminator 1
	lw	a5,-24(s0)
	ble	a5,zero,.L52
.LBE8:
	.loc 2 133 16
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 133 13
	sw	a5,-20(s0)
.L50:
	.loc 2 136 12
	lw	a5,-20(s0)
	.loc 2 137 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE332:
	.size	uart_read, .-uart_read
	.text
.Letext0:
	.file 3 "all.h"
	.file 4 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x434
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	0x3d
	.4byte	0x36
	.byte	0x8
	.4byte	0x36
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x9
	.string	"A1"
	.byte	0x6
	.byte	0x5
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	A1
	.byte	0x7
	.4byte	0x3d
	.4byte	0x64
	.byte	0x8
	.4byte	0x36
	.byte	0xf
	.byte	0
	.byte	0x9
	.string	"A"
	.byte	0xe
	.byte	0x6
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	A
	.byte	0x9
	.string	"B"
	.byte	0x13
	.byte	0x6
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	B
	.byte	0x5
	.4byte	.LASF3
	.byte	0x18
	.byte	0x6
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	result
	.byte	0x7
	.4byte	0x3d
	.4byte	0xa3
	.byte	0x8
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x5
	.4byte	.LASF4
	.byte	0x21
	.byte	0x5
	.4byte	0x93
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x5
	.4byte	.LASF5
	.byte	0x22
	.byte	0x5
	.4byte	0x93
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x5
	.4byte	.LASF6
	.byte	0x23
	.byte	0x5
	.4byte	0x93
	.byte	0x5
	.byte	0x3
	.4byte	inputsignal
	.byte	0x5
	.4byte	.LASF7
	.byte	0x24
	.byte	0x5
	.4byte	0x93
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.byte	0x10
	.4byte	.LASF34
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x11d
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0xb
	.4byte	.LASF16
	.byte	0x7e
	.byte	0x2f
	.4byte	0x3d
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.byte	0x1
	.byte	0x9c
	.4byte	0x169
	.byte	0x1
	.string	"num"
	.byte	0x80
	.byte	0x9
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.string	"i"
	.byte	0x82
	.byte	0x11
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.byte	0x71
	.byte	0x30
	.4byte	0x1a7
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a7
	.byte	0x1
	.string	"num"
	.byte	0x73
	.byte	0x7
	.4byte	0x1a7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x4
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.string	"i"
	.byte	0x75
	.byte	0x11
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x11
	.4byte	0x1a7
	.byte	0xa
	.4byte	.LASF19
	.byte	0x6a
	.byte	0x30
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d5
	.byte	0x3
	.string	"s"
	.byte	0x6a
	.byte	0x4e
	.4byte	0x1d5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xc
	.4byte	0x1ae
	.byte	0xa
	.4byte	.LASF20
	.byte	0x60
	.byte	0x30
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fc
	.byte	0x3
	.string	"c"
	.byte	0x60
	.byte	0x45
	.4byte	0x1a7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x12
	.4byte	.LASF21
	.byte	0x2
	.byte	0x5a
	.byte	0x30
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.byte	0x1
	.byte	0x9c
	.4byte	0x21f
	.byte	0x3
	.string	"n"
	.byte	0x5a
	.byte	0x3f
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.string	"fir"
	.byte	0x2
	.byte	0x51
	.byte	0x33
	.4byte	0x250
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.byte	0x1
	.byte	0x9c
	.4byte	0x250
	.byte	0x4
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.string	"i"
	.byte	0x53
	.byte	0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x3d
	.byte	0x14
	.4byte	.LASF27
	.byte	0x2
	.byte	0x44
	.byte	0x32
	.4byte	0x3d
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bd
	.byte	0x15
	.4byte	.LASF22
	.byte	0x2
	.byte	0x44
	.byte	0x40
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF23
	.byte	0x4a
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x2a6
	.byte	0x1
	.string	"i"
	.byte	0x45
	.byte	0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x4
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.string	"i"
	.byte	0x4b
	.byte	0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF35
	.byte	0x2
	.byte	0x3d
	.byte	0x33
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ea
	.byte	0x4
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x1
	.string	"i"
	.byte	0x3e
	.byte	0xa
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF24
	.byte	0x2
	.byte	0x29
	.byte	0x33
	.4byte	0x250
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.byte	0x1
	.byte	0x9c
	.4byte	0x350
	.byte	0x1
	.string	"i"
	.byte	0x2b
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1
	.string	"j"
	.byte	0x2c
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1
	.string	"k"
	.byte	0x2d
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1
	.string	"sum"
	.byte	0x2e
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x19
	.string	"kk"
	.byte	0x2
	.byte	0x2f
	.byte	0x6
	.4byte	0x3d
	.byte	0x6
	.4byte	.LASF25
	.byte	0x30
	.byte	0xf
	.4byte	0x36
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x2
	.byte	0x23
	.byte	0x33
	.4byte	0x250
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1b
	.byte	0x33
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ad
	.byte	0x3
	.string	"low"
	.byte	0x1b
	.byte	0x3c
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.string	"hi"
	.byte	0x1b
	.byte	0x45
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x1
	.string	"p"
	.byte	0x1d
	.byte	0x7
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF28
	.byte	0x2
	.byte	0x7
	.byte	0x32
	.4byte	0x3d
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x417
	.byte	0x3
	.string	"low"
	.byte	0x7
	.byte	0x40
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.string	"hi"
	.byte	0x7
	.byte	0x48
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.4byte	.LASF29
	.byte	0x8
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1
	.string	"i"
	.byte	0x9
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1
	.string	"j"
	.byte	0x9
	.byte	0x10
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.4byte	.LASF30
	.byte	0xa
	.byte	0x6
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF32
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x25
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.Ltext0
	.4byte	.Letext0
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0x6
	.4byte	.LFB322
	.4byte	.LFE322
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323
	.byte	0x6
	.4byte	.LFB324
	.4byte	.LFE324
	.byte	0x6
	.4byte	.LFB325
	.4byte	.LFE325
	.byte	0x6
	.4byte	.LFB326
	.4byte	.LFE326
	.byte	0x6
	.4byte	.LFB327
	.4byte	.LFE327
	.byte	0x6
	.4byte	.LFB328
	.4byte	.LFE328
	.byte	0x6
	.4byte	.LFB329
	.4byte	.LFE329
	.byte	0x6
	.4byte	.LFB330
	.4byte	.LFE330
	.byte	0x6
	.4byte	.LFB331
	.4byte	.LFE331
	.byte	0x6
	.4byte	.LFB332
	.4byte	.LFE332
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"inputsignal"
.LASF35:
	.string	"initfir"
.LASF21:
	.string	"uart_write"
.LASF26:
	.string	"sort"
.LASF16:
	.string	"uart_read"
.LASF24:
	.string	"matmul"
.LASF36:
	.string	"qsort"
.LASF12:
	.string	"unsigned char"
.LASF19:
	.string	"uart_write_string"
.LASF14:
	.string	"long unsigned int"
.LASF30:
	.string	"temp"
.LASF13:
	.string	"short unsigned int"
.LASF34:
	.string	"uint32_t"
.LASF33:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF23:
	.string	"outputsample"
.LASF28:
	.string	"partition"
.LASF31:
	.string	"flush_cpu_dcache"
.LASF2:
	.string	"unsigned int"
.LASF17:
	.string	"uart_read_char"
.LASF4:
	.string	"taps"
.LASF15:
	.string	"long long unsigned int"
.LASF3:
	.string	"result"
.LASF27:
	.string	"firfilter"
.LASF32:
	.string	"flush_cpu_icache"
.LASF20:
	.string	"uart_write_char"
.LASF7:
	.string	"outputsignal"
.LASF11:
	.string	"long long int"
.LASF18:
	.string	"char"
.LASF25:
	.string	"count"
.LASF9:
	.string	"short int"
.LASF5:
	.string	"inputbuffer"
.LASF10:
	.string	"long int"
.LASF29:
	.string	"pivot"
.LASF8:
	.string	"signed char"
.LASF22:
	.string	"inputsample"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"all.c"
.LASF1:
	.string	"/home/ubuntu/Desktop/lab-wlos_baseline/testbench/all"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
