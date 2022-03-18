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

if (place_meeting(x + hsp, y, obj_wall)){
	hsp = 0;	
}

if (place_meeting(x, y+vsp, obj_wall)){
	vsp = 0;	
}



x += hsp;
y += vsp;


nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_sign,false,true);
interact  = keyboard_check(vk_space);
//show_debug_message("interact= " + string(interact));
 
if nearbyNPC && interact && !instance_exists(obj_textbox) {
	show_debug_message("interacting");
	create_textbox(nearbyNPC.text_id);
}

