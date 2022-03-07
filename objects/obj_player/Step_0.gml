/// @description Movement

hsp = 0;
vsp = 0;


keyRight = keyboard_check(vk_right);
keyLeft = keyboard_check(vk_left);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

hsp = (keyRight - keyLeft) * spd;
vsp = (keyDown - keyUp) * spd;

//animate horizontal movement
if ((keyRight - keyLeft) != 0){
	sprite_index = spr_dodo_walking_right;
	image_xscale = (keyRight - keyLeft);
}
else if ((keyDown - keyUp) != 0){
	sprite_index = spr_dodo_walking_right;
}
else {
	sprite_index = spr_player_dodo;
}

//if ((keyRight - keyLeft) == 0){
//	sprite_index = spr_player_dodo;
//}
//else {
//	sprite_index = spr_dodo_walking_right;
//	image_xscale = (keyRight - keyLeft);
//}

if (place_meeting(x + hsp, y, obj_wall)){
	hsp = 0;	
}

if (place_meeting(x, y+vsp, obj_wall)){
	vsp = 0;	
}



x += hsp;
y += vsp;


