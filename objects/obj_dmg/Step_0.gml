/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player)){
	global.player_is_safe = false;
}

if (global.can_damage_player){
	visible = true;	
	image_alpha = 0.5;
}
