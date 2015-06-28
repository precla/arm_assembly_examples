            GLOBAL  Reset_Handler
            AREA    _2_math_operations, Code, READONLY
            ENTRY

Reset_Handler

            ; r0 is the register for the result of: 4x^3 - 5 + 7x + 10
            MOV     r1, #2          ; val of x, you can put anything you want into this
            MOV     r2, #4
            MOV     r3, #3
            MOV     r4, #5
            MOV     r5, #7
            ; r6 is going to save temporary values
            MUL     r6, r1, r1      ; r6 = x^2
            MUL     r6, r1, r6      ; r6 = x^3
            MUL     r0, r2, r6      ; r0 = 4 * r0, note: r0 = x^3
            SUB     r0, r0, r4      ; r0 = r0 - 5
            MUL     r6, r5, r1      ; r6 = 7 * x
            ADD     r0, r0, r6      ; r0 = r0 + r6
            ADD     r0, r0, #10

            ; if x = 2, result should be: 41 (or 0x00000033)

stop    B   stop    ; stop program

            END
 