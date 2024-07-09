;Define a string in the location STR. 
;Write a program to count number of vowels and consonants in a string. 
;Store the vowels and consonants count in the variable VCOUNT and CCOUNT respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
string	dcb "embedded systems",0
	area mydata1,data,readwrite
vcount 	dcd 0
ccount	dcd 0
	area mycode,code,readonly
		ldr r0,=string
		ldr r1,=vcount
		ldr r2,=ccount
		
		mov r3,#0
		mov r4,#0
l1	ldrb r5,[r0],#1
	cmp r5,#0
	beq count_done
	cmp r5,#'a'
	beq found
	cmp r5,#'e'
	beq found
	cmp r5,#'i'
	beq found
	cmp r5,#'o'
	beq found
	cmp r5,#'u'
	beq found
	cmp r5,#'a'
	blt l1
	cmp r5,#'z'
	bgt l1
	add r4,r4,#1
	b l1
found
	add r3,r3,#1
	b l1
count_done
	str r3,[r1]
	str r4,[r2]
stop b stop 
		end