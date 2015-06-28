            GLOBAL  Reset_Handler
            AREA    _0_1_intro, Code, READONLY
            ENTRY

Reset_Handler

            MOV     r0, #2          ; move constant '2' into register r0
            LDR     r1, =3          ; almost same as above, loads constant
                                    ; '3' into register r1, usually LDR is
                                    ; used to load from a memory address but
                                    ; for this intro i used it to load a constant
            MOV     r2, #4

            ; do some calculations
            ; if you want you can step trough these via F10
            ADD     r3, r0, r1      ; r3 = r0 + r1  --> r3 = 2 + 3
            MUL     r4, r2, r3      ; r4 = r2 * r3  --> r4 = 4 * 5
            MUL     r2, r1, r4      ; r0 = r1 * r4  --> r0 = 3 * 20
            SUB     r5, r0, r2      ; r45 = r0 - r3 --> r5 = 60 - 5

            ; at this point you should see the following values in the registers:
            ; note: values are show as hex values in the register window
            ; r0 = 0x00000002 = 2
            ; r1 = 0x00000003 = 3
            ; r2 = 0x0000003C = 60
            ; r3 = 0x00000005 = 5
            ; r4 = 0x00000014 = 20
            ; r5 = 0xFFFFFFC6 = -58 (in two's complement)

stop        B       stop            ; stop program, also - branch which loops to itself

            END
 