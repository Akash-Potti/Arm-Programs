;program to find 1's and 2's complement of a 32 bit data and store the results in r2 and r3

	area mycode,code,readonly
		ldr r1,=0x12345678
		mvn r2,r1
		add r3,r2,#1
stop b stop
		end