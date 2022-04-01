/// @description Insert description here
// You can write your code in this editor
if nearbyNPC && global.can_interact {
	draw_set_font(fnt_text);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_transformed(x, y - 48,"?",1, 1, 0);
}