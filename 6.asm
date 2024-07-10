;Write a program to shift the byte stored in register R2 to 
;middle position and exchange the digits.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		mov r2,#0x12   
		lsl r2,r2,#12
		ldr r3,=0x000f0000
		ldr r4,=0x0000f000
		and r5,r2,r3
		lsr r5,#4
		and r6,r2,r4
		lsl r6,#4
		add r2,r5,r6
stop b stop
		end