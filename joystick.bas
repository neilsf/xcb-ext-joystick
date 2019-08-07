rem ************************************
rem * XC=BASIC Joystick extension      *
rem * Namespace: joy_                  *
rem ************************************

rem ************************************
rem * Global constants                 *
rem ************************************
const JOY_PORT2 = $dc00
const JOY_PORT1 = $dc01

goto joy_ext_end

rem ************************************
rem * Macros                           *
rem ************************************
asm "
CIA_PORTA   EQU $dc00
CIA_PORTB   EQU $dc01

    MAC joytest
    lda #{2}
    IF {1} = 1
    bit CIA_PORTB
    ELSE
    bit CIA_PORTA
    ENDIF
    bne .false
    pone
    jmp .exit
.false
    pzero
.exit
    jmp ($02fe)
    ENDM
"

rem ************************************
rem * Functions                        *
rem ************************************
joy_1_up:
asm "
    joytest 1, %00000001
"

joy_1_down:
asm "
    joytest 1, %00000010
"

joy_1_left:
asm "
    joytest 1, %00000100
"

joy_1_right:
asm "
    joytest 1, %00001000
"

joy_1_fire:
asm "
    joytest 1, %00010000
"

aliasfn @joy_1_up,      "joy_1_up!"
aliasfn @joy_1_down,    "joy_1_down!"
aliasfn @joy_1_left,    "joy_1_left!"
aliasfn @joy_1_right,   "joy_1_right!"
aliasfn @joy_1_fire,    "joy_1_fire!"

joy_2_up:
asm "
    joytest 2, %00000001
"

joy_2_down:
asm "
    joytest 2, %00000010
"

joy_2_left:
asm "
    joytest 2, %00000100
"

joy_2_right:
asm "
    joytest 2, %00001000
"

joy_2_fire:
asm "
    joytest 2, %00010000
"

aliasfn @joy_2_up,      "joy_2_up!"
aliasfn @joy_2_down,    "joy_2_down!"
aliasfn @joy_2_left,    "joy_2_left!"
aliasfn @joy_2_right,   "joy_2_right!"
aliasfn @joy_2_fire,    "joy_2_fire!"

joy_ext_end: