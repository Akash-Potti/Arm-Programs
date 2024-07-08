;Write a program to find factorial of unsigned byte number 
;stored in location NUM and store the result in FACT.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
num dcb 4
	area mydata1,data,readwrite
fact dcb 0
	area mycode,code,readonly
		ldr r0,=num
		ldrb r1,[r0]
		mov r2,#1
l1	cmp r1,#0
	beq fact_done
	mov r3,r2
	mul r2,r3,r1
	sub r1,r1,#1
	b l1
fact_done
	ldr r4,=fact
	str r2,[r4]
stop b stop
		end