/// @description Insert description here
// You can write your code in this editor

//show_debug_message(global.player_hp);

for (var i = 0; i < global.player_maxhp; i++) {
	var _imageIndex = (i > global.player_hp);
	if i == global.player_hp { 
		_imageIndex += 1
	}
	draw_sprite(spr_heart, _imageIndex, global._curr_x + 20 + (i * 32),global. _curr_y + 20);
}

