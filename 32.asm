;Define a signed word of data in location ELEMENTS of size N. Write a program to search the 
;element which is defined in location KEY is found or not using linear search. 
;If element found store 0xFF to status else store 0x11 to status
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly	
n		equ 8
elements dcd 1,-2,3,-4,5,-6,7,-8 	
key		dcd 3
	area mydata1,data,readwrite
status dcd 0
	area mycode,code,readonly
		ldr r0,=elements		
		ldr r1,=key
		ldr r2,=status
		ldr r3,[r1]
		mov r4,#n
l1	
	ldr r5,[r0],#4
	cmp r5,r3
	beq found
	subs r4,r4,#1 
	bne l1
not_found
	mov r6,#0x11
	str r6,[r2]
	b stop
found
	mov r6,#0xff
	str r6,[r2]
stop b stop
		end