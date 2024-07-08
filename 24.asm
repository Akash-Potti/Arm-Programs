;Write a program to check signed byte defined in the location 
;VALUE is zero or positive or negative.Move 0x11 or 0x22 or 0x33 
;to TYPE if the number is zero or positive or negative respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
VALUE	dcd -0x13
	area mydata1,data,readwrite
TYPE 	dcd 0x11
	area mycode,code,readonly
		ldr r0,=VALUE
		ldr r1,=TYPE
		ldrsb r2,[r0]
		lsls r2,#1
		bmi l1
		mov r3,#0x22
		strb r3,[r1]
l1		
		bpl l2
		mov r3,#0x33
		strb r3,[r1]
l2
stop b stop
		end