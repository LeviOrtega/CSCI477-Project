/// @description attacks


switch(attack) {
		case 1:
		show_debug_message("attack one");
			defensive_dash();
			break;
		case 2:
			show_debug_message("attack two");
			//use an alarm here to call stampede 3 times with a 4s pause between each call to simulate 3 waves
			center_boss();
			alarm[2] = room_speed * 4;
			break;
		case 3:
				//attack 3
			break;
		default:
			
			break;
			
}



