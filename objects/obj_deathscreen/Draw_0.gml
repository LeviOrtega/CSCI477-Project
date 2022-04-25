/// @description Insert description here
// You can write your code in this editor


draw_set_valign(fa_center);
draw_set_halign(fa_middle);

draw_set_font(fnt_death);
draw_set_color(c_red);
draw_text_transformed(room_width / 2, room_height / 2 - 50, "YOU DIED", 1, 1, 0);

draw_set_font(fnt_death);
draw_set_color(c_white);
draw_text_transformed(room_width / 2, room_height / 2 + 50, "Press R to Restart", .25, .25, 0);
