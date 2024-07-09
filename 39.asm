;Define two strings in locations STR1 and STR2. Write a program to compare two strings, move 0xFF to RESULT if strings are equal else move 0x11 to RESULT. Compare length of two strings before comparison  and store 
          ;0x22 to RESULT if length of two strings equal
          ;0x33 to RESULT if length of first string is greater than second string
          ;0x44 to RESULT if length of second string is greater than first string
;USN: 1DA22CS007
;NAME: AKASH POTTI
;BATCH: A-1
    area data1, data, readonly
STR1    DCB "Hello", 0
STR2    DCB "Hello",0

    area data2, data, readwrite
RESULT    SPACE 1
    
    area c, code, readonly
    entry
start
    ldr r0, =STR1
    ldr r1, =STR2
    ldr r2, =RESULT
    mov r3, #0                        ; Initialize length counter for STR1
    mov r4, #0                        ; Initialize length counter for STR2
LengthSTR1
    ldrb r5, [r0, r3]
    cmp r5, #0
    beq LengthSTR2
    add r3, #1
    b LengthSTR1
    
LengthSTR2
    ldrb r6, [r1, r4]
    cmp r6, #0
    beq CompareLengths
    add r4, #1
    b LengthSTR2
    
CompareLengths
    cmp r3, r4
    beq CompareContents
    bhi STR1Greater
    mov r7, #0x44
    strb r7, [r2]
    b stop
STR1Greater
    mov r7, #0x33
    strb r7, [r2]
    b stop
    
CompareContents
    mov r4, #0x22
    mov r8, #0
CompareLoop
    ldrb r9, [r0, r8]
    ldrb r10, [r1, r8]
    cmp r9, #0
    beq StringsEqual
    cmp r9, r10
    bne StringsNotEqual
    add r8, #1
    b CompareLoop
    
StringsEqual
    mov r4, #0xff
    strb r4, [r2]
    b stop
StringsNotEqual
    mov r4, #0x11
    strb r4, [r2]
    b stop
stop b stop
    end
