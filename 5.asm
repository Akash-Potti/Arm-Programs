;program to extract lower and higher half word of register R1. 
;Store lower half word in higher half word position of R2 
;and higher half word to lower half word  position of R3
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x12345678
		ldr r4,=0xffff
		ldr r5,=0xffff0000
		and r2,r1,r4
		ror r2,r2,#16
		and r3,r1,r5
		ror r3,r3,#16
stop b stop 
		end