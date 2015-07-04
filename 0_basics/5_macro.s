            GLOBAL  Reset_Handler
            AREA    MacroExample, CODE, READONLY
            ENTRY

    MACRO
    ; macro definition:
    ; a = (a+b) * 16

$Label_0 myMacro $varA, $varB
        
$Label_0
        ADD     $varA, $varA, $varB
        LSL     $varA, $varA, #4            ; LSL by 4 bits - same as multiplication with 16
    MEND

Reset_Handler

            LDR     r0, =3
            LDR     r1, =5

        myMacro r0, r1

            ; r0 should be 0x00000080 which is 128
            ; let's call it again

        myMacro r0, r1    
            ; r0 should be now 0x00000850 which is 2128

stop    B       stop

            END
