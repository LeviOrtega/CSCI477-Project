/// @description 

// Inherit the parent event
event_inherited();

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
