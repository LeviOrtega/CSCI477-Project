/// @description 

// Inherit the parent event
event_inherited();

// basic movement to start with
if (x <= start_x || x >= end_x){
	dir *= -1;	
	image_xscale *= -1;
}

x += spd * dir;