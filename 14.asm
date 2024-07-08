;Write a program to add two 64 bit numbers defined in location X and Y and 
;store the result in location Z.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
x		dcd 0x10,0x15
	area mydata1,data,readonly	
y		dcd 0x20,0x25
	area mydata2,data,readwrite
z		dcd 0
	area mycode,code,readonly
		ldr r0,=x
		ldr r1,=y
		ldr r2,=z
		ldr r3,[r0]
		ldr r4,[r0,#4]
		ldr r5,[r1]
		ldr r6,[r1,#4]
		add r7,r3,r4
		add r8,r5,r6
		add r9,r7,r8
		str r9,[r2]
stop b stop
		end