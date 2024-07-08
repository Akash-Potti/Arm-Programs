;Write a program to multiply array M and N which can hold 8 bit numbers of size 4. 
;Store the product in array P.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
m		dcb 1,2,3,4
n		dcb 8,7,6,5
s		equ 4
	area mydata1,data,readwrite
d		dcb 0,0,0,0
	area mycode,code,readonly
		ldr r0,=m
		ldr r1,=n
		ldr r2,=d
		mov r3,#s
l1	ldrb r4,[r0],#1
	ldrb r5,[r1],#1
	mul r6,r4,r5
	strb r6,[r2],#1
	subs r3,r3,#1
	bne l1
stop b stop 
		end