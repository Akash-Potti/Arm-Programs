;Write a program to add two 32 bit numbers stored in VAL1 and VAL2. Store the sum in RESULT
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
val1 dcd 0x10
val2 dcd 0x20
	area mydata1,data,readwrite
result dcd 0
	area mycode,code,readonly
		ldr r0,=val1
		ldr r1,=val2
		ldr r2,=result
		ldr r3,[r0]
		ldr r4,[r1]
		add r6,r3,r4
		str r6,[r2]
stop b stop 
		end