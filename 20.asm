;Write a program to evaluate the following expressions
;a)	Result=(val1+val2)*(val1-val2)    and sum=(val1*val2)+(val1/2)
;Assume variable of size 32 bits
;b)	F1=A’CD’+AC’D+A’C’D+ACD    and F2=(A+C+D)(A’+C+D’)(A’+C’+D)
;Assume variables of size 32 bits
;c)	D1=(A2+C2)* (A2-C2)    and D2=(A3+C3)+ (A3+C3)
;Assume variables of size 8 bits
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area data1, data, readonly
Val1 	DCD 0x22222222
Val2 DCD 0x11111111
	area data2, data, readwrite
Result 	SPACE 8
Sum 	SPACE 8
	area c, code, readonly
		ldr r0, =Val1
		ldr r1, =Val2
		ldr r2, =Result
		ldr r3, =Sum
		ldr r4, [r0]
		ldr r5, [r1]
		add r6, r4, r5
		sub r7, r4, r5
		umull r8, r9, r6, r7
		str r8, [r2]
		str r9, [r2, #4]
		umull r6, r7, r4, r5
		lsr r8, r5, #1
		adds r9, r8, r6
		adc r10, r7, #0
		str r9, [r3]
		str r10, [r3, #4]
stop b stop
end