;program to add 2 8 bit data stored in register r1 and r2 and store the results in r3, rotate content of r3 right 4 bit and store in r4

	area mycode,code,readonly
		mov r1,#0x10
		mov r2,#0x20
		add r3,r1,r2
		ror r4,r3,#4
stop b stop 
		end