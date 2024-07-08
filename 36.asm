;Write a program to generate N Fibonacci numbers and store in variable FIBO.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
n		equ 10
	area mydata1,data,readwrite
fibo	space n*4
	area mycode,code,readonly
		ldr r0,=fibo
		mov r1,#0
		str r1,[r0],#4
		mov r2,#2
l1	ldr r3,[r0,#-8]
	ldr r4,[r0,#-4]
	add r1,r3,r4
	str r1,[r0],#4
	add r2,r2,#1
	cmp r2,n
	blt l1
stop b stop 	
		end