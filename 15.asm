;Divide the least significant byte of the 8-bit variable Value into two 4-bit nibbles 
;and store one nibble in each byte of the 16-bit variable Result. The low-order four 
;bits of the byte will be stored in the low-order four bits of 
;the least significant byte of Result. 
;The high-order four bits of the byte will be stored in the 
;low-order four bits of the most significant 
;byte of Result. 
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1

	area mydata,data,readonly
a		dcb 0x12
	area mydata1,data,readwrite
result	dcw 0
	area mycode,code,readonly
		ldr r0,=a
		ldr r1,=result
		ldrb r2,[r0]
		ldr r3,=0xf0
		and r4,r2,r3
		and r5,r2,r3,ror #4
		lsl r5,#12
		add r6,r4,r5
		strh r6,[r1]
stop b stop 
		end