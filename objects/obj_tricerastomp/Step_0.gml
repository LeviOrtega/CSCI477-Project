/// @description 

// Inherit the parent event
event_inherited();

if (global.game_state = states.playing) {
	// if stunned, stop movement for 3 seconds and play stun animation, then resume
	
	
	if point_distance(x, y, dest_x, dest_y) > spd
	{ move_towards_point(dest_x, dest_y, spd);}
	else spd = 0;
	
	
	if (stunned && spd != 0){
		spd = 0;
		sprite_index = spr_triceratops_stunned;
		alarm[0] = room_speed * 2;
			
		}
		else if ( stunned == false) {
		
			if (spd == 0){
				sprite_index = spr_triceratops_idle;	
			}
			else {
				sprite_index = spr_triceratops_walking;	
			}
			
			
			

			if (attack == 0 && ready_for_attacking == true){
				ready_for_attacking = false;
				alarm[3] = room_speed * 3
			}

	
			if (ready_for_attacking == true){
			ready_for_attacking = false;
			alarm[1] = room_speed * 2;
			}
			
				}
	
	
	
	
	
	
}




