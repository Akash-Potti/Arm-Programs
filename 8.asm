;Write a program to find the sum of lower word and higher word 
;stored in register R1. Store the sum in R3.
;Example: suppose R1=0x12345678
;              After execution R3=5678+1234
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x12345678
		ldr r2,=0xffff0000
		ldr r4,=0x0000ffff
		and r5,r1,r2
		and r6,r1,r4
		ror r5,#16
		add r3,r5,r6 
stop b stop
		end