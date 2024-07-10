;Write a program to evaluate the following expressions
;           Result = (val1+val2>>4)*(val1<<4-val2)    
;                  Sum = (val1*val2) + (val1/2)
;Assume variable of size 32 bits
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area data1, data, readonly
X 	DCD 0x01
Y 	DCD 0x02
	area data2, data, readwrite
RESULT SPACE 4
SUM SPACE 4
	area c, code, readonly
		ldr r0, =X
		ldr r1, =Y
		ldr r10, =RESULT
		ldr r11, =SUM
		ldr r7, [r0] ; r7 = X
		ldr r8, [r1] ; r8 = Y
		add r2, r7, r8, lsr #4
		rsb r3, r8, #4
		lsl r4, r1, r3
		mul r5, r2, r4
		str r5, [r10]
		mul r2,r7, r8
		lsr r3, r7, #1
		add r4, r2, r3
		str r4, [r11]
stop b stop
end