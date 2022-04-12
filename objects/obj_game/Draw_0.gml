/// @description Insert description here
// You can write your code in this editor

if keyboard_check(vk_alt) {
	mp_grid_draw(global.mp_grid);
}

if (object_exists(obj_player)){
	draw_text(20, 20, "PLAYER HP: " + string(global.player_hp));	
}