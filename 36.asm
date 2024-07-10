;Write a program to generate N Fibonacci numbers and store in variable FIBO.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

N 	EQU 8
	area data1, data, readwrite
FIBO 	SPACE 10
	area c, code, readonly
	ldr r0, =FIBO
	mov r1, #0
	mov r2, #1
	mov r3, #N
	strb r1, [r0], #1
	strb r2, [r0], #1
	mov r4, #2
loop
	add r5, r1, r2
	mov r1, r2
	mov r2, r5
	strb r5, [r0],#1
	add r4, #1
	cmp r4, r3
	ble loop
	b stop
stop b stop
end