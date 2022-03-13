/// @description 

// Inherit the parent event
event_inherited();

if (point_distance(x, y, obj_player.x, obj_player.y) < 128) {
    state = enemy_state.CHASE;
} else {
	state = enemy_state.WANDER;	
}

switch (state) {
	case enemy_state.CHASE:
		check_for_player();
		break;
	case enemy_state.WANDER:
		if (x <= start_x || x >= end_x){
			dir *= -1;	
			image_xscale *= -1;
		}
		x += spd * dir;
		break;
	case enemy_state.IDLE:
		break;
}
// basic movement to start with


