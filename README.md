# XC=BASIC Joystick extension

This extension provides convenience functions to query the state of joysticks. Requires XC=BASIC version 2.2 or higher.

## Usage

Copy this directory to your project path and include the file `joystick.bas` on the top of your program:

	include "joystick/joystick.bas"
	
## Constants defined by this extension

	const JOY_PORT2 = $dc00
	const JOY_PORT1 = $dc01
	
## Commands defined by this extension

This extension does not define any commands.
	
## Functions defined by this extension

	joy_1_up!()
	
Returns 1 if the up switch in port one is active, 0 otherwise.

	joy_1_down!()
	
Returns 1 if the down switch in port one is active, 0 otherwise.

	joy_1_left!()
	
Returns 1 if the left switch in port one is active, 0 otherwise.

	joy_1_right!()
	
Returns 1 if the right switch in port one is active, 0 otherwise.

	joy_1_fire!()
	
Returns 1 if the fire button in port one is active, 0 otherwise.

	joy_2_up!()
	
Returns 1 if the up switch in port two is active, 0 otherwise.

	joy_2_down!()
	
Returns 1 if the down switch in port two is active, 0 otherwise.

	joy_2_left!()
	
Returns 1 if the left switch in port two is active, 0 otherwise.

	joy_2_right!()
	
Returns 1 if the right switch in port two is active, 0 otherwise.

	joy_2_fire!()
	
Returns 1 if the fire button in port two is active, 0 otherwise.


