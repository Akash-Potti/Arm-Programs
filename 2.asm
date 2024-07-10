;Write a program to add two 8 bit data stored in 
;register R1 and R2 and store the result in R3. 
;Rotate the content of R3 right 4 bit and store result in R4.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		mov r1,#0x10
		mov r2,#0x20
		add r3,r1,r2
		ror r4,r3,#8
stop b stop 
		end