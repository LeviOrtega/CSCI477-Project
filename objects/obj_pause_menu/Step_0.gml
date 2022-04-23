/// @description Insert description here
// You can write your code in this editor

up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);
accept_key2 = keyboard_check_pressed(vk_enter);

// Store amount of options in current menu
op_length = array_length(option[menu_level]);

switch (global.game_state) {
	case states.paused:
		if global.text {
			break;	
		}
		pos += down_key - up_key;
		if (pos >= op_length) {
			pos = 0
		}
		if (pos < 0) {
			pos = op_length - 1
		}
			
		//show_debug_message("Pos = " + string(pos));
		
		if (accept_key || accept_key2) {
			var _ml = menu_level;
			switch(menu_level) {
				case 0:
					switch(pos) {
						case 0:
							global.game_state = states.playing;
							break;
						case 1:
							menu_level = 1;
							break;
						case 2:
							game_end();
							break;
					}
					break;
				case 1:
					switch(pos) {
						case 0:
							// Window Size
							break;
						case 1:
							// Brightness
							break;
						case 2:
							// Controls
							break;
						case 3 :
							// back
							menu_level = 0;
							break;
					}
			}
			// set pos back
			if (_ml != menu_level) {pos = 0};
			op_length = array_length(option[menu_level]);
		}
		break;
}