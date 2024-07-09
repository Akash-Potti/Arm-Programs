;Define a string in location STR with combination of alphabets, numbers and special characters. 
;Count the number of alphabets, numbers and special characters 
;and store it in ALPHA, NUM and SPEC locations respectively.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
string	dcb "embedded system! 123",0
	area mydata1,data,readwrite
alpha	dcb 0
num 	dcb 0
spec	dcb 0
	area mycode,code,readonly
		ldr r0,=string
		ldr r1,=alpha
		ldr r2,=num
		ldr r3,=spec
		mov r4,#0
		mov r5,#0
		mov r6,#0
l1	ldrb r7,[r0],#1
	cmp r7,#0
	beq done
	cmp r7,#'a'
	bge l2
	cmp r7,#'a'
	blt check_number
	cmp r7,#'z'
	ble alpha_found
l2	cmp r7,#'z'
	ble alpha_found
check_number
	cmp r7,#'0'
	blt check_special
	cmp r7,#'9'
	ble number_found
check_special
	add r6,r6,#1
	b l1
alpha_found
	add r4,r4,#1
	b l1
number_found
	add r5,r5,#1
	b l1
done
	str r4,[r1]
	str r5,[r2]
	str r6,[r3]
stop b stop
		end