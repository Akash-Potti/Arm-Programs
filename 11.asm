;Write a program to define 5 byte data in location X and copy these bytes to registers
;R1,R2,R3,R4 and R5 respectively using auto index addressing
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
x		dcb 0x10,0x11,0x12,0x13,0x14
	area mycode,code,readonly
		ldr r0,=x
		ldrb r1,[r0]
		ldrb r2,[r0,#1]
		ldrb r3,[r0,#2]
		ldrb r4,[r0,#3]
		ldrb r5,[r0,#4]
stop b stop 	
		end
