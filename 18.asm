;Write a program to define four words in location A. Multiply first element with 
;third element of A and second element with fourth element of A. 
;Store the first result in second position of D and second result in first position of D.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
A		dcd 0x04,0x02,0x03,0x05
	area mydata1,data,readwrite
D		dcd 0,0,0,0
	area mycode,code,readonly
		ldr r0,=A
		ldr r1,=D
		ldr r2,[r0]
		ldr r3,[r0,#8]
		mul r4,r2,r3
		str r4,[r1,#4]
		ldr r5,[r0,#4]
		ldr r6,[r0,#12]
		mul r7,r5,r6
		str r7,[r1]
stop b stop
		end