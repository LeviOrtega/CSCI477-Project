/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state != states.paused and room != rm_herb_boss) {
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
	image_index = spr_pachy_idle;
}