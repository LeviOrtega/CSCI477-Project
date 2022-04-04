/// @description 

// Inherit the parent event
event_inherited();

switch(state) {
	case states.IDLE:
		check_for_player();
		if path_index != -1 state = states.MOVE;
		enemy_anim();
		break;
	case states.MOVE:
		check_for_player();
		check_facing();
		if path_index == -1 state = states.IDLE;
		enemy_anim();
		break;
	case states.ATTACK:
		enemy_anim();
		break;
	case states.DEAD:
		enemy_anim();
		break;
if (global.game_state = states.playing) {
	// basic movement to start with
	if (x <= start_x || x >= end_x){
		dir *= -1;	
		image_xscale *= -1;
	}

	x += spd * dir;
}

