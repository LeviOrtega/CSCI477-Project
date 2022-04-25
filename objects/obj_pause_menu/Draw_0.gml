/// @description Insert description here
// You can write your code in this editor
depth=-10;
switch (global.game_state) {
	case states.paused:
		if global.text {
			break;	
		}
		x = global._curr_x + view_width / 2;
		y = global._curr_y + view_height / 2 - 50;
		draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
		var new_width = 0;
		for (var i = 0; i < op_length; i++) {
			var op_w = string_width(option[menu_level, i]);	
			new_width = max(new_width, op_w);
		}
		width = new_width + op_border * 2;
		height = op_border * 2 +  string_height(option[0, 0]) + (op_length - 1)*op_space;
		
		draw_set_font(global.font_main);
		draw_set_valign(fa_center);
		draw_set_halign(fa_middle);
		
		for (var i = 0; i < op_length; i++) {
			var _c = c_white;
			if (pos == i) {
				_c = c_yellow;
			}
			draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _c, _c, _c, _c, 1);
		}
		break;
}