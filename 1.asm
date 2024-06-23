;Program to store 8,16,32 bit data to register r1,r2,r3

	area mycode,code,readonly
	mov r1,#0x12
	ldr r2,=0x1234
	ldr r3,=0x12345678
stop b stop 
		end