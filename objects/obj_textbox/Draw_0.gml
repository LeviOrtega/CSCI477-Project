//https://www.youtube.com/watch?v=6Bzj7GdSkJI
//tutorial ^
accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y= camera_get_view_y(view_camera[0]) + 360;

if !setup {
	setup = false;
	draw_set_font(fnt_text);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]);
		
		//ceneters the textbox
		text_x_offset[p] = 270;
	}
}
	
// Typing effect
if draw_char < text_length[page] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

// Flip through pages
if accept_key {
	// if typing done
	if draw_char == text_length[page] {
		// next page
		if page < page_number - 1 {
			page ++;
			draw_char = 0;
		} else {
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();	
		}
	} else {
		draw_char = text_length[page];
	}
}

// Textbox drawing
// txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
var _txtb_x = textbox_x + text_x_offset[page]

draw_sprite_ext(txtb_spr,
	txtb_img,
	_txtb_x,
	textbox_y,
	textbox_width/txtb_spr_w,
	textbox_height/txtb_spr_h,
	0,
	c_white,
	1);

var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtb_x+ border,
	textbox_y + border,
	_drawtext,
	line_sep,
	line_width);

// Options
if draw_char == text_length[page] && page == page_number - 1 {
	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	
	// draw options
	var _op_space = 64;
	var _op_bord = 32;
	for (var op = 0; op < option_number; op++) {
		var _option_width = string_width(option[op]) + _op_bord*2;
		// box
		draw_sprite_ext(txtb_spr,
		txtb_img,
		_txtb_x + 64,
		textbox_y - _op_space * option_number + _op_space * op,
		_option_width/txtb_spr_w,
		(_op_space-1)/txtb_spr_w,
		0,
		c_white,
		1);
		//arrow
		if option_pos == op {
			draw_sprite(spr_cursor, 0, _txtb_x, textbox_y - _op_space * option_number + _op_space * op);	
		}
		
		// text
		draw_text(_txtb_x + 48 + _op_bord,
		textbox_y - _op_space * option_number + _op_space*op + 2,
		option[op]);
		
	}
	
}