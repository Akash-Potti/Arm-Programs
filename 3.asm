;program to store 32 bit data in r1 and exchange content lower half word with higher half word

	area mycode,code,readonly
		ldr r1,=0x12345678
		ror r2,r1,#16
stop b stop
		end