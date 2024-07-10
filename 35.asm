;Write a program to copy 5 byte data from location X to Y. 
;Sort the elements in location Y in ascending order using bubble sort method.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area data1, data, readonly
X 		DCB 8, 6, 3, 9, 2
	area data2, data, readwrite
Y 		SPACE 5
	area c, code, readonly


	ldr r0, =X
	ldrb r1, [r0], #1
	ldr`b r2, [r0], #1
	ldrb r3, [r0], #1
	ldrb r4, [r0], #1
	ldrb r5, [r0]
	mov r7, #5
l1
	cmp r1, r2
	movhi r6, r1
	movhi r1, r2
	movhi r2, r6
	cmp r2, r3
	movhi r6, r2
	movhi r2, r3
	movhi r3, r6
	cmp r3, r4
	movhi r6, r3
	movhi r3, r4
	movhi r4, r6
	cmp r4, r5
	movhi r6, r4
	movhi r4, r5
	movhi r5, r6
	subs r7,r7, #1
	bne l1
	ldr r0, =Y
	strb r1, [r0], #1
	strb r2, [r0], #1
	strb r3, [r0], #1
	strb r4, [r0], #1
	strb r5, [r0]
stop b stop
		end