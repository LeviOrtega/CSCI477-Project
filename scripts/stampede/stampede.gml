// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stampede(){
	// scream, stun player, call in stampede waves from random directions
	wave_count = 3;
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
}