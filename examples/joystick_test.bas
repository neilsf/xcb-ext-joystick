rem **************************************
rem * XC=BASIC
rem *
rem * Test suite for Joystick extension
rem *
rem **************************************

include "../xcb-ext-joystick.bas"

rem -- clear screen
memset 1024, 1000, 32

charat 16, 10, 90
charat 15, 11, 90
charat 17, 11, 90
charat 16, 12, 90
charat 16, 11, 81

charat 23, 10, 90
charat 22, 11, 90
charat 24, 11, 90
charat 23, 12, 90
charat 23, 11, 81

textat 13, 8, "move joysticks"

rem -- query joy states in an endless loop
loop:
  if joy_1_up!()    = 1 then poke 55712, 7 else poke 55712, 14
  if joy_1_down!()  = 1 then poke 55792, 7 else poke 55792, 14
  if joy_1_left!()  = 1 then poke 55751, 7 else poke 55751, 14
  if joy_1_right!() = 1 then poke 55753, 7 else poke 55753, 14
  if joy_1_fire!()  = 1 then poke 55752, 7 else poke 55752, 14

  if joy_2_up!()    = 1 then poke 55719, 7 else poke 55719, 14
  if joy_2_down!()  = 1 then poke 55799, 7 else poke 55799, 14
  if joy_2_left!()  = 1 then poke 55758, 7 else poke 55758, 14
  if joy_2_right!() = 1 then poke 55760, 7 else poke 55760, 14
  if joy_2_fire!()  = 1 then poke 55759, 7 else poke 55759, 14
goto loop
