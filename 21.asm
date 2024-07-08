;Write a program to add sum of array of 16 bit numbers of size N. 
;Calculate size of array dynamically
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
A		dcw 0x10,0x20,0x30
	area mydata1,data,readwrite
SUM		dcw 0
	area mycode,code,readonly
		ldr r0,=A
		ldr r3,=SUM
		mov r5,#0
l1	ldrh r1,[r0],#2
	add r5,r5,#1
	cmp r1,#00
	bne l1
	ldr r0,=A
l2	ldrh r1,[r0],#2
	add r4,r1,r4
	subs r5,r5,#1
	bne l2
	strh r4,[r3]
stop b stop
		end
		