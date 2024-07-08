;Define half word array X of size N with signed numbers (both positive and negative). 
;Write a program to calculate sum of positive and negative numbers and 
;store the sum in PSUM and NSUM respectively
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
n	equ 8
x	dcw 1,-2,3,-4,5,-6,7,-8
	area mydata1,data,readwrite
psum	dcd 0
nsum	dcd 0
	area mycode,code,readonly
		ldr r0,=x
		ldr r1,=psum
		ldr r2,=nsum
		mov r3,#n
		mov r4,#0
		mov r5,#0
l1
		ldrsh r6,[r0],#2
		cmp r6,#0
		blt negative
		add r4,r4,r6
		b next
negative
		add r5,r5,r6
next
		sub r3,r3,#1
		bne l1
		str r4,[r1]
		str r5,[r2]
stop b stop
		end