            GLOBAL  Reset_Handler
            AREA    prog2, Code, READONLY
            ENTRY

Reset_Handler

            ; clear all bits of a register to 0 in two different ways
            MOV     r8, #21
            MOV     r8, r8, ASR #32         ; ASR - right shift by 32bit
                                            ; ASR #num --> right shift by 'num'
                                            ; ASL #num --> left shift by 'num'
            MOV     r9, #123
            EOR     r9, r9, r9              ; XOR value by itself - leads to 0

            ; you can watch the values and their change with the debugger
            ; if you know more ways of clearing all bits, do a pull request on github

stop    B       stop

            END
