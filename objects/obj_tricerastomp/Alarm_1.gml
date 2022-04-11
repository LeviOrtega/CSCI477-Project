/// @description attacks


switch(attack) {
		case 1:
		show_debug_message("attack one");
			defensive_dash();
			break;
		case 2:
			show_debug_message("attack two");
			//use an alarm here to call stampede 3 times with a 4s pause between each call to simulate 3 waves
			alarm[2] = room_speed * 4;
			show_debug_message("attack two")
			arena_stomp();
			center_boss();
			break;
		case 3:
				//attack 3
			break;
		default:
			
			break;
			
}



