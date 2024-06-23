;program to make a 32 bit data of register R5 using byte data available in register R1, R2, R3 and R4. Assume R1 should be in lower byte position of 
;R5 and R4 should higher byte position of R5. 
;Example: suppose R1=0x12 R2=0x13 R3=0x14 R4=0x15
;                  After execution R5=0x15131412 or 15141312

	area mycode,code,readonly
		mov r1,#0x12
		mov r2,#0x13
		mov r3,#0x14
		mov r4,#0x15
		lsl r2,#8
		lsl r3,#16
		ror r4,#8
		add r6,r1,r2
		add r7,r3,r4
		add r5,r6,r7
stop b stop
		end