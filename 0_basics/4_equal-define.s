            GLOBAL  Reset_Handler
            AREA    define_equal, CODE, READONLY
            ENTRY

Reset_Handler

            ; this short piece of code will show you how to use the EQU directive
            ; EQU is similiar as #define in c/c++ which means:
            ; my_value  EQU         0x000000FF
            ; #define   my_value    0x000000FF

ROOM_LENGTH EQU     5
ROOM_WIDTH  EQU     4

            LDR     r1, =2                          ; r1 will be room heigth
            MOV     r2, #ROOM_LENGTH                ; load value of ROOM_LENGTH into r2
            MOV     r3, #ROOM_WIDTH                 ; load value of ROOM_WIDTH into r3
            MUL     r4, r2, r3                      ; r4 is the surface of the room
            MUL     r5, r1, r4                      ; r5 is the volume of the room
            LDR     r6, =-35                        ; let's assume we've calculated the volume of another room
                                                    ; and then we made it negative, so we can use ADD instead of SUB
                                                    ; to calculate the difference in the volume of the two rooms
                                                    ; this does not make much sense but it's just to show that you can
                                                    ; also, obviously, loada negative value into a register
            ADD     r0, r5, r6                      ; resutl in r0 should be 0x00000005 or 5 in decimal 

stop    B       stop

            END
