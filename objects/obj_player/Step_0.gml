/// @description Movement

switch(state) {
	default:
		reset_variables();
		get_input();
		calc_movement();
		check_attack();
		anim();
		break;
	
}
