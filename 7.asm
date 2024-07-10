;program to find the sum of square of digits in the byte 
;data stored in register R1. Store the result in R10.
;Example: Suppose R1=0x00000045
;               After execution R10=4^2+5^2
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x00000012
		ldr r2,=0x000000f0
		ldr r3,=0x0000000f
		and r4,r1,r2
		and r5,r1,r3
		lsr r4,#4
		mul r6,r4,r4
		mul r7,r5,r5
		add r10,r6,r7
stop b stop 
		end