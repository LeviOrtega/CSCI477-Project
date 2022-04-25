/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state != states.paused) {
switch(state) {
	case entity_states.IDLE:
		check_for_player();
		if path_index != -1 state = entity_states.MOVE;
		enemy_anim();
		break;
	case entity_states.MOVE:
		check_for_player();
		check_facing();
		if path_index == -1 state = entity_states.IDLE;
		enemy_anim();
		break;
	case entity_states.ATTACK:
		enemy_anim();
		break;
	case entity_states.DEAD:
		enemy_anim();
		break;
}
} else {
	path_end();
	image_index = spr_basic_dino;
}
//if (global.game_state = states.playing) {
//	// basic movement to start with
//	if (x <= start_x || x >= end_x){
//		dir *= -1;	
//		image_xscale *= -1;
//	}

//	x += spd * dir;
//}

