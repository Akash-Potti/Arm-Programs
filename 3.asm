;Write a program to store 32 bit data to 
;register R1 and exchange the content of 
;lower half word with higher half word
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=0x12345678
		ror r2,r1,#16
stop b stop
		end;