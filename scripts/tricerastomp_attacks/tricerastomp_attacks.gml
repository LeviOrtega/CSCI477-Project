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
			stage = 0;
			attack = 0;
			for (var i = 0; i < array_length(stage_runs); i++){
				stage_runs[i] = 0;
			}
			break;
			
			
			
}

ready_for_attacking = true;	
			
	
}

function defensive_stage_three(){
	if (stage_runs[2] == 0){
	dest_x =  room_width/2;
	dest_y =  room_height/2;
	y_spd = 5;
	x_spd = 5;
	
	
		if (y < dest_y){ y_dir = 1;}
		else if (y > dest_y) {y_dir = -1;}
		
		
		if (x > dest_x){x_dir = -1;}
		else if (x < dest_x){x_dir = 1;}
	}
	else {
		if (x == dest_x && y == dest_y){
			stage++;
			
		}
	}
	
	stage_runs[2] ++;
}

function defensive_stage_two(){
	
	if (stage_runs[1] == 0){
	dest_x = room_width - 10;
	dest_y = y;
	
	x_spd = 10;
	
	if (y < dest_y){ y_dir = 1;}
	else if (y > dest_y) {y_dir = -1;}
	
	if (x > dest_x){x_dir = -1;}
	else if (x < dest_x){x_dir = 1;}
	}
	
	else {
		if (x == dest_x && y == dest_y){
			stage++;
			
		}
	}
	
	stage_runs[1] ++;
	
	
	
	
}


function defensive_stage_one(){
	// center boss in  middle of room
	// only set speed and dest if this is the first of this stage run
	if (stage_runs[0] == 0){
	dest_x =  room_width/2;
	dest_y =  room_height/2;
	y_spd = 2;
	x_spd = 2;
	
	
		if (y < dest_y){ y_dir = 1;}
		else if (y > dest_y) {y_dir = -1;}
		
		
		if (x > dest_x){x_dir = -1;}
		else if (x < dest_x){x_dir = 1;}
	}
	else {
		if (x == dest_x && y == dest_y){
			stage++;
			
		}
	}
	
	stage_runs[0] ++;
}

