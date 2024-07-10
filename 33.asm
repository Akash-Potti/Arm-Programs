;Write a program to find GCD and LCM of two byte numbers stored in location
;NUM1 and NUM2. Store the result in GCD and LCM respectively.
; USN: 1DA22CS007
; NAME: Akash Potti
; BATCH: A-1
; Write a program to find GCD and LCM of two byte numbers stored in location
;NUM1 and NUM2. Store the result in GCD and LCM respectively
	area data1, data, readonly
NUM1 	DCB 0x06
NUM2 	DCB 0x03
	area data2, data, readwrite
GCD 	SPACE 2
LCM 	SPACE 2
	area c, code, readonly

	ldr r0, =NUM1
	ldrb r1, [r0], #1
	ldrb r2, [r0]
	mov r3, r1
	mov r4, r2
repeat
	cmp r1, r2
	bhi l1
	beq l2
	sub r2, r2, r1
	b repeat
l1
	sub r1, r1, r2
	b repeat
l2
	ldr r0, =GCD
	strh r1, [r0]
repeat1
	cmp r3, r1
	blt l3
	sub r3, r1
	add r5, #1
	b repeat1
l3
	mul r4, r5, r4
	ldr r0, =LCM
	strh r4, [r0]
stop b stop
		end