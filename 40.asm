;Assume string stored in location SSTR having combination of upper case and lower case characters. 
;Write a program to convert upper case to lower and lower to upper case and store this in location DSTR.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
	area mydata,data,readonly
sstr	dcb "Embedded Systems",0
	area mydata1,data,readwrite
dstr 	dcb 0
	area mycode,code,readonly
		ldr r0,=sstr
		ldr r1,=dstr
convert_loop
		ldrb r2,[r0],#1
		cmp r2,#0
		beq convert_done
		cmp r2,#'A'
		blt check_lowercase
		cmp r2,#'Z'
		add r2,r2,#32
		b str_char
check_lowercase
		cmp r2,#'a'
		blt str_char
		cmp r2,#'z'
		bgt str_char
		sub r2,r2,#32
str_char
		strb r2,[r1],#1
		b convert_loop
convert_done
		strb r2,[r1]
stop b stop 
		end
	