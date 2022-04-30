/// @description 

// Inherit the parent event
event_inherited();

if (collided_player == false && attack != 0){
	collided_player = true;
	global.player_hp -= 1;
	alarm[4] = room_speed * 2;
	
}

//stunned = true;