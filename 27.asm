;Write a program to do the operation addition or subtraction or 
;multiplication depends on the content of register R0.
;If R0=1 Addition, R0=2 Subtraction, R0=3 Multiplication.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mycode,code,readonly
		ldr r1,=10
		ldr r2,=5
		mov r3,#0
		
		mov r0,#1
		
		cmp r0,#1
		beq addition
		cmp r0,#2
		beq subtraction
		cmp r0,#3
		beq multiplication
addition	
		add r3,r1,r2
		b stop
subtraction
		sub r3,r1,r2
		b stop
multiplication
		mul r3,r1,r2
		b stop
stop b stop	
		end
		