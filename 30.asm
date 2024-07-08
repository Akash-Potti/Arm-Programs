;The three 32-bit variables VALUE1, VALUE2 and VALUE3, 
;each contain an unsigned number. 
;Store the smallest of these numbers in the 32-bit variable RESULT.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
value1 dcd 7
value2 dcd 2
value3 dcd 5
	area mydata1,data,readwrite
result dcd 0
	area mycode,code,readonly
		ldr r0,=value1
		ldr r1,[r0]
		ldr r1,=value2
		ldr r2,[r2]
		ldr r1,=value3
		ldr r3,[r4]
		
		cmp r1,r2
		bgt val2_small
val1_small
		mov r4,r1
		b cmp_with_val_3
val2_small
		mov r4,r2
cmp_with_val_3
		cmp r4,r3
		bgt val3_smaller
res_smaller
		mov r5,r4
		b str_result
val3_smaller
		mov r5,r3
str_result
		ldr r6,=result
		str r5,[r6]
stop b stop 	
		end
		
		
		