;Write a program to store 8 bit, 
;16 bit and 32 bit data to register R1, 
;R2, and R3 respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mycode,code,readonly
	mov r1,#0x12
	ldr r2,=0x1234
	ldr r3,=0x12345678
stop b stop 
		end