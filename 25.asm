;Find the smallest element in a series of signed bytes. The length of the series 
;is defined by the variable LENGTH with the series starting at the NUM label. 
;Store the minimum byte value in the NUMMIN variable.]
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
LENGTH    EQU 1
NUM       DCB 5, -3, 7, 2, -6, 8, 0, -2, 4, 1 
	area mydata1,data,readwrite
NUMMIN    DCB 0x7F 
	area mycode,code,readonly
		ldr r0,=NUM
		ldr r2,=NUM + LENGTH 
		ldr r3,=NUMMIN
loop cmp r0,r2
	 beq l1
		ldrsb r1,[r0],#1
		cmp r1,r3
		bge l2
		mov r3,r1
l2	
	b loop
l1		
		ldr r4,=NUMMIN
		strb r3,[r4]
stop b stop 
		end