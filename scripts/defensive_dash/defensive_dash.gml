// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function defensive_dash(){
	// center attacks
	
	switch(stage) {
		case 1:
			show_debug_message("DD Stage 1");
			defensive_stage_one();
			
			break;
		case 2:
			
			show_debug_message("DD Stage 2");
			defensive_stage_two();
		
			break;
			
		case 3:
			show_debug_message("DD Stage 3");
			defensive_stage_three();
			break;
			
		default:
			show_debug_message("DD End");
			reset_attacks();
			break;
			
			
			
}

ready_for_attacking = true;	
			
	
}

function defensive_stage_three(){
	if (stage_runs[2] == 0){
	center_boss();
	
	
	}
	else if (spd == 0){
			stage++;
			
		
	}
	
	stage_runs[2] ++;
}

function defensive_stage_two(){
	
	if (stage_runs[1] == 0){
		dest_x = obj_player.x;
		dest_y = obj_player.y;
	
		spd = 10;
	
		}
	else if (spd == 0){
			stage++;
			
		
	}
	
	
	
	stage_runs[1] ++;
}


function defensive_stage_one(){
	// center boss in  middle of room
	// only set speed and dest if this is the first of this stage run
	if (stage_runs[0] == 0){
		dest_x =  room_width/2;
		dest_y =  room_height/2;
		spd = 2;
	
	
	}
	else if (spd == 0){
			stage++;
			
		
	}
	
	stage_runs[0] ++;
}

