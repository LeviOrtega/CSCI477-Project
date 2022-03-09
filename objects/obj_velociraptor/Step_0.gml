/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state = states.playing) {
	// basic movement to start with
	if (x <= start_x || x >= end_x){
		dir *= -1;	
		image_xscale *= -1;
	}

	x += spd * dir;
}