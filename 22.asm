;Write a program to find largest and smallest number in an 
;array of 32 bit numbers of size N. Assume N=10.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
a		dcd 0x10,0x12,0x13,0x14,0x31,0x16,0x17,0x18,0x19,0x20
n		dcd 10
	area mydata1,data,readwrite
max		dcd 0
min 	dcd 255
	area mycode,code,readonly
		ldr r0,=a
		ldr r1,=max
		ldr r2,=min
		ldr r3,[r0]
		ldr r4,[r1]
		ldr r5,[r2]
		ldr r6,=n
		ldr r7,[r6]
		mov r8,r7
l1		ldr r9,[r0],#4
		cmp r9,r1
		
		bgt l2
		mov r10,r9
l2		
		mov r1,r9
		str r4,[r1]
		str r5,[r2]
		subs r7,r7,#1
		bne l1
stop b stop
		end
	