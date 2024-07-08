;write a program to define four half word in location P. Add first and last 
;element of P and store it in fourth position of Q. Multiply second and 
;third element of P and store it in first position of Q. 
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
P		dcw 0x12,0x02,0x03,0x15
	area mydata1,data,readwrite
Q		dcw 0,0,0,0
	area mycode,code,readonly
		ldr r0,=P
		ldr r1,=Q
		ldrh r2,[r0]
		ldrh r3,[r0,#6]
		add r4,r2,r3
		strh r4,[r1,#6]
		ldrh r6,[r0,#2]
		ldrh r7,[r0,#4]
		mul r8,r6,r7
		strh r8,[r1]
stop b stop
		end
		
	