            GLOBAL  Reset_Handler
            AREA    factorial, Code, READONLY
            ENTRY

Reset_Handler

            ; one of the classics in programming, factorial calculation
            ; https://en.wikipedia.org/wiki/Factorial
            ; n! = n(n-1)(n-2)...(1)

            MOV     r1, #5          ; loads n into r1
            MOV     r2, #1          ; if n = 0, n! = 1
fact_loop   CMP     r1, #0          ; compare r1 == 0
                                    ; CMP - updates Z flag in CPSR
                                    ; if compare is false, Z flag is set to 0, otherwise to 1

            MULGT   r2, r1, r2      ; if( r1 > 0) r1 * r2;
                                    ; MULGT - multiply if greater than

            SUBGT   r1, r1, #1      ; decrement n by 1
                                    ; SUBGT - decrement if greater than

            BGT     fact_loop       ; branch to fact_loop only if greater than
                                    ; BGT - branch if greater than
                                    ; GT addition to MUL, SUB & B do the 'greater than' compare
                                    ; on the values in CMP and it's a NOP (no-operation instruction)
                                    ; if the GT was false (if it's equal or smaller than)

stop    B       stop                ; result for n=5 is 0x00000078 which is 120 in decimal

            END
