;Write program to add two array A and C of size N for byte elements, 
;store the result in array D. Assume N=8
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
a		dcb 1,2,3,4,5,6,7,8
c		dcb 8,7,6,5,4,3,2,1
n		equ 8
	area mydata1,data,readwrite
d		dcb 0,0,0,0,0,0,0,0
	area mycode,code,readonly
		ldr r0,=a
		ldr r1,=c
		ldr r2,=d
		mov r3,#n
l1	ldrb r4,[r0],#1
	ldrb r5,[r1],#1
	adds r6,r4,r5
	strb r6,[r2],#1
	subs r3,r3,#1
	bne l1
stop b stop 
		end