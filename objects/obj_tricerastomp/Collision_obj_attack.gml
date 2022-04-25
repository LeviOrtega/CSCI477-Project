/// @description 

// Inherit the parent event
event_inherited();
if (can_collide){
	global.triceratops_hp -= 1;
	can_collide = false;
	alarm[8] = room_speed * 2;
	stunned = true;
}