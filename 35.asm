;Write a program to copy 5 byte data from location X to Y. 
;Sort the elements in location Y in ascending order using bubble sort method.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
x		dcb 5,3,8,2,7
n		dcb 5
	area mydata1,data,readwrite
y		space 5
	area mycode,code,readonly
		ldr r0,=x
		ldr r1,=y
		
		mov r2,#n
l1	ldrb r3,[r0],#1
	strb r3,[r1],#1
	subs r2,r2,#1
	bne l1
	
sort_loop
	mov r5,#0
	mov r1,#1
	mov r2,r1,lsl,#1
inner_loop
	cmp r1,r4
	bgt sort_end
	ldrb