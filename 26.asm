;Define an array of 32 bit numbers of size N with combination of zero, positive and negative. 
;Write a program to count number of zeros, positive and negative numbers and 
;store the count in ZCOUNT, PCOUNT, and NCOUNT respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
a		DCD 0, -5, 12, -7, 0, 9, -3, 0, 15, -10
n 		EQU 10
	area mydata1,data,readwrite
zcount	dcd 0
pcount	dcd 0
ncount 	dcd 0
	area mycode,code,readonly
		ldr r0,=a
		ldr r1,=zcount
		ldr r2,=pcount
		ldr r3,=ncount
		mov r4,#n
l1	ldr r5,[r0],#4
	cmp r5,#0
	beq zero
	blt negative
	ldr r6,[r2]
	add r6,r6,#1
	str r6,[r2]
	b next
zero
	ldr r6,[r1]
	add r6,r6,#1
	str r6,[r3]
	b next
negative
	ldr r6,[r3]
	add r6,r6,#1
	str r6,[r3]
next
	subs r4,r4,#1
	bne l1
stop b stop 
		end
	