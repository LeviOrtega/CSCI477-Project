// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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