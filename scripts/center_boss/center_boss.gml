// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function center_boss(){
	dest_x =  room_width/2;
	dest_y =  room_height/2;
	spd = 2;
	
	move_towards_point(dest_x, dest_y, spd);
	
}