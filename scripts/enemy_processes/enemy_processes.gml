// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function check_facing() {
	var _facing = sign(x - xp);
	if _facing != 0 facing = _facing;
}

function check_for_player(){
	player = obj_player;
	var _dis = distance_to_object(player);
	
	if (_dis <= alert_dis || alert) && _dis > attack_dis {
		alert = true;
	
		if calc_path_timer-- <= 0 {
			calc_path_timer = calc_path_delay;
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, player.x, player.y, choose(0, 1));
	
			if _found_player {
				path_start(path, spd, path_action_stop, false);
			}
		}
	} else {
		if _dis <= attack_dis path_end();
	}
}

function enemy_anim(){
	switch(state) {
		case entity_states.IDLE:
			sprite_index = spr_basic_dino_idle;
			break;
		case entity_states.MOVE:
			sprite_index = spr_basic_dino_walking;
			break;
		case entity_states.ATTACK:
			sprite_index = spr_velociraptor_bite;
			break;
		case entity_states.DEAD:

			break;
	}
	xp = x;
	yp = y;
}