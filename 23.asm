;Write a program to find number of ones and zeros in a 32 bit number defined in the location A. 
;store the count  of ones and zeros in the location ONECOUNT and ZEROCOUNT respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
a		dcd 0x12
	area mydata1,data,readwrite
ONECOUNT dcd 0
ZEROCOUNT dcd 0
	area mycode,code,readonly
		ldr r0,=a
		ldr r1,=ONECOUNT
		ldr r2,=ZEROCOUNT
		mov r3,#0
		mov r4,#0
		mov r10,#32
		ldr r5,[r0]
loop	lsrs r5,#1
		bcs l1
		add r4,r4,#1
		b l2
l1		add r3,r3,#1
l2		subs r10,r10,#1
		bne loop
		str r3,[r1]
		str r4,[r2]
stop b stop 
		end
	