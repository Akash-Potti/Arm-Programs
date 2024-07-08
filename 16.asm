;Write a program to define 5 bytes of data in location X. copy the middle element of x to the 
;fifth position of Y and last element of X to first position of Y.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
x		dcb 0x10,0x11,0x12,0x13,0x14
	area mydata1,data,readwrite
y		dcb 0,0,0,0,0
	area mycode,code,readonly
		ldr r0,=x
		ldr r1,=y
		ldrb r2,[r0,#2]
		ldrb r3,[r0,#4]
		strb r3,[r1]
		strb r2,[r1,#4]	
stop b stop 
		end