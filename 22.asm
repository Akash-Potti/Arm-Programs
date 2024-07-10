;Write a program to find largest and smallest number in an 
;array of 32 bit numbers of size N. Assume N=10.
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
N    EQU 10
    area data1, data, readonly
X    DCD    1, 5, 7, 2, 19, 10, 7, 223, 0, 8

    
    area c, code, readonly
    entry
start
    ldr r0, =X
    ldr r1, =N ; count
    ldr r4, [r0]    ; r4 = min
    ldr r5, [r0]    ; r5 = max
    
    mov r6, #1
loop
    mov r8, r6, lsl #2
    ldr r7, [r0, r8]
    cmp r7, r4
    ble l1
    cmp r7, r5
    bgt l2
    add r6, #1
    cmp r6, r1
    blt loop
    b stop
l1
    mov r4, r7
    add r6, #1
    cmp r6, r1
    blt loop
    b stop
l2
    mov r5, r7
    add r6, #1
    cmp r6, r1
    blt loop
    b stop
stop b stop
    end