;Write program to find the area of triangle, rectangle and square. 
;Assume L and H are the variables for length and breadth for 
;rectangle,base and height for triangle and length for square.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
L		dcw 0x12
H		dcw 0x13
	area mydata1,data,readwrite
A		dcw 0,0,0
	area mycode,code,readonly
		ldr r0,=L
		ldr r1,=H
		ldr r9,=A
		ldrh r2,[r0]
		ldrh r3,[r1]
		lsr r4,r2,#1
		mul r5,r4,r3
		strh r5,[r9]
		mul r6,r2,r3
		strh r6,[r9,#2]
		mul r7,r2,r2
		strh r7,[r9,#4]
stop b stop
		end