// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//TODO: make general 'center' function to center the boss in the room
function center_boss(){
	dest_x =  room_width/2;
	dest_y =  room_height/2;
	y_spd = 2;
	x_spd = 2;
	
	if (y < dest_y){ y_dir = 1;}
	else if (y > dest_y) {y_dir = -1;}
		
	if (x > dest_x){x_dir = -1;}
	else if (x < dest_x){x_dir = 1;}
}

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
	//dest_x = room_width - 10;
	//dest_y = y;
	// aim at players current position
	dest_x = obj_player.x;
	dest_y = obj_player.y;
	
	x_spd = 8;
	y_spd = 8;
	
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
		center_boss();
	}
	else {
		if (x == dest_x && y == dest_y){
			stage++;
			
		}
	}
	
	stage_runs[0] ++;
}

function stampede(){
	// center boss
	//center_boss();
	// scream, stun player, call in stampede waves from random directions
	wave_count = 3;
	
	//for (var w = 0; w < wave_count; w++){
		// generate a diff number between 0-3 to indicate which direction stampede will come from
		stampede_dir = irandom(3);
		// loop to spawn enemies
		for (var i = 0; i < 15; i++){
			// randomize spawn position based on stampede_dir
			speed_mul = random(1);
			switch (stampede_dir){
				//right of screen moving left
				case 2:
					tempx = room_width;
					tempy = irandom(room_height);
					break;
				//top of screen moving down
				case 3:
					tempx = irandom(room_width);
					tempy = 0;
					break;
				//left of screen moving right
				case 0:
					tempx = 0;
					tempy = irandom(room_height);
					break;
				//bottom of screen moving up
				case 1:
					tempx = irandom(room_width);
					tempy = room_height;
					break;
			}
			var inst = instance_create_layer(tempx,tempy,"Enemy",obj_pachy);

			with (inst){
				//TODO: fix the image flip
				if (other.stampede_dir == 2){
					image_xscale = -1;
				}
				speed = 3 + other.speed_mul;
				direction = 90 * other.stampede_dir;
			}
		}
	//}
}