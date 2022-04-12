/// @description attacks


switch(attack) {
		case 1:
		show_debug_message("attack one");
			defensive_dash();
			break;
		case 2:
			show_debug_message("attack two");
			arena_stomp();
			break;
		case 3:
			show_debug_message("attack three");
			stampede();
			center_boss();
			alarm[2] = room_speed * 4;
			break;
		default:
			
			break;
			
}



