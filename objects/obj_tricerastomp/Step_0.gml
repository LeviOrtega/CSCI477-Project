/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state = states.playing) {
	// if stunned, stop movement for 3 seconds and play stun animation, then resume
	if (stunned){
		spd = 0;
		sprite_index = spr_triceratops_stunned;
		alarm[0] = room_speed * 3;
		stunned = false;
	}
	
	// basic movement to start with
	if (x <= start_x || x >= end_x){
		dir *= -1;	
		image_xscale *= -1;
	}

	x += spd * dir;
	
}