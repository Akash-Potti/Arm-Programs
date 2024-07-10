;4.Write program to find 1’s complement and 2’s 
;complement of 32 bit data stored in register R1. 
;Store the 1’complement in R2 and 2’s complement in R3.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x12345678
		mvn r2,r1
		add r3,r2,#1
stop b stop
		end