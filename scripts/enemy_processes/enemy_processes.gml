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
		if _dis <= attack_dis {
			path_end();
			enemy_attack();
		}
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
		
			break;
		case entity_states.DEAD:

			break;
	}
	xp = x;
	yp = y;
}

function enemy_attack() {
	if enemy_can_attack {
		enemy_can_attack = false;
		alarm[0] = enemy_attack_speed
		
		var _dir = point_direction(x, y, obj_player.x, obj_player.y);
		var _inst = instance_create_layer(x, y, "Attack", obj_attack2);
		
		with(_inst) {
			direction = _dir;
			image_angle = _dir;
			image_xscale = 0.5;
			image_yscale = 0.5;
			owner_id = other;
			x = x + lengthdir_x(30, _dir);
			y = y + lengthdir_y(30, _dir);
		}
	}
}
