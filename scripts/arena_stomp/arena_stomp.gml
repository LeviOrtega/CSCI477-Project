// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arena_stomp(){
// center attacks
	
	switch(stage) {
		case 1:
			show_debug_message("AS Stage 1");
			arena_stage_one();
			
			break;
		case 2:
			
			show_debug_message("AS Stage 2");
			 arena_stage_two();
		
			break;
			
			
		default:
			show_debug_message("AS End");
			reset_attacks();
			break;
			
			
			
}

ready_for_attacking = true;	
			
	
}




function arena_stage_one(){
	// center boss in  middle of room
	// only set speed and dest if this is the first of this stage run
	if (stage_runs[0] == 0){
		center_boss();
	}
	else {
		if (x == dest_x && y == dest_y){
			stage++;
			
		}
	}
	
	stage_runs[0] ++;
}


function arena_stage_two(){
	if(stage_runs[1] == 0){
		global.can_damage_player = true;	
		
		time_to_wait = 5000;
		
		show_debug_message("Waiting..")
		future_time = current_time + time_to_wait; 
		
		
	}
	stage_runs[1]++;
	
	if (current_time >= future_time){
		global.can_damage_player = false;
		show_debug_message("Finished Waiting")
		stage++;
	}
}

