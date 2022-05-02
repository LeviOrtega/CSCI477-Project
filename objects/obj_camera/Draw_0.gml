/// @description Insert description here
// You can write your code in this editor

//show_debug_message(global.player_hp);

for (var i = 0; i < global.player_maxhp; i++) {
	var _imageIndex = (i > global.player_hp);
	if i == global.player_hp { 
		_imageIndex += 1
	}
	draw_sprite(spr_heart, _imageIndex, global._curr_x + 20 + (i * 32),global._curr_y + 20);
}

if (room == rm_herb_boss){
	
	for (var i = 0; i < global.triceratops_hp; i++){
		var _imageIndex = (i > global.triceratops_hp);
		if i == global.triceratops_hp { 
			_imageIndex += 1
		}
		image_xscale = .5;
		image_yscale = .5;
		draw_sprite(spr_heart, _imageIndex, global._curr_x + 200 + (i * 32), global._curr_y + 400);
	}
}