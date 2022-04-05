/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state = states.playing) {
	// if stunned, stop movement for 3 seconds and play stun animation, then resume
	if (stunned){
		spd = 0;
		sprite_index = spr_triceratops_stunned;
		alarm[0] = room_speed * 3;
		stunned = false;	
		}
		else {
		
			if (y_spd == 0 && x_spd == 0){
				sprite_index = spr_triceratops_idle;	
			}
			else {
				sprite_index = spr_triceratops_walking;	
			}
		}
	
	
	// scripts determine the speed and direction the triceratops should go, just set it
	if (x != dest_x) { x += x_dir*x_spd;}
	else {x_spd = 0;}
	if (y != dest_y) { y += y_dir *y_spd;}
	else{y_spd = 0;}

	

	
	if (ready_for_attacking == true){
	ready_for_attacking = false;
	alarm[1] = room_speed * 2;
	}
	
	
}


