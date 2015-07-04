            GLOBAL  Reset_Handler
            AREA    BinaryOperators, CODE, READONLY
            ENTRY

    ; list of binary opereators:
    ; 
    ; x:ADD:y       x + y
    ; x:SUB:y       x - y
    ; x:MOD:b       x % y
    ; x:AND:y       x & y   --> bitwise AND, not comparsion like &&
    ; x:OR:B        x | y   --> bitwise OR
    ; x:EOR:y       x ^ y   --> exclusive or
    ; x:SHL:y   --> can be written as:  x << y
    ; x:SHR:y   --> can be written as:  x >> y
    ; x:ROL:y       rotate x left by y bits
    ; x:ROR:y       rotate x right by y bits

Reset_Handler

            LDR     r0, =5
            MOV     r1, #(0x34:EOR:19)      ; load result of 0x34 ^ 19
            ADD     r0, r1, #11:SHL:2       ; add to above result, the result of Left-shifting 11 by 2 bits
            
            ; r0 should be 0x00000053

stop    B       stop

            END
