// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function reset_variables() {
	up = 0;
	down = 0;
	left = 0;
	right = 0;
	hmove = 0;
	vmove = 0;
	
}

function get_input() {
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("S")) down = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("Q")) evolve = 1;
}

function calc_movement() {
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 || aim_dir > 270);
	if _facing == 0 _facing = -1;
	facing = _facing;

	if hmove != 0 || vmove != 0 {
		// Movement direction
		var _dir = point_direction(0, 0, hmove, vmove);
		
		// Get movement distance
		hmove = lengthdir_x(spd, _dir);
		vmove = lengthdir_y(spd, _dir);
		
		// Add movement to players position
		x += hmove;
		y += vmove;
	}
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
}

function collision(){
	// Target Values
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	repeat(_disx) {
		if !(instance_place(x + sign(_tx - x), y, obj_solid)) x += sign(_tx - x);	
	}
	repeat(_disy) {
		if !(instance_place(x, y +  sign(_ty - y), obj_solid)) y += sign(_ty - y);	
	}
}

function anim() {
	if hmove != 0 || vmove != 0 {
		switch (form) {
			case 0:
				sprite_index = spr_dodo_walking;
				break;
			case 1:
				sprite_index = spr_basic_dino_walking;
				break;
		}
		
	} else {
		switch (form) {
			case 0:
				sprite_index = spr_player_dodo;
				break;
			case 1:
				sprite_index = spr_basic_dino;
				break;
		}
	}
}

function check_attack() {
	if mouse_check_button(mb_left) {
		if can_attack {
			can_attack= false;
			alarm[0] = attack_speed;
			
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			var _inst = instance_create_layer(x, y, "Attack", obj_attack);
			
			with(_inst) {
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
				x = x + lengthdir_x(30, aim_dir);
				y = y + lengthdir_y(30, aim_dir);
			}
		}
	}
}