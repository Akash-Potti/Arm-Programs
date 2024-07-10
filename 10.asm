;Write a program to extract lower and higher byte of 32 bit 
;stored in register R1 and multiply these two and store it in register R9.
;Example: suppose R1=0x12345678 
;                After execution R9 = 12*78
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x12345678
		and r2,r1,#0xff
		ldr r3,=0xff000000
		and r4,r1,r3
		lsr r4,#24
		mul r9,r2,r4
		
stop b stop
		end