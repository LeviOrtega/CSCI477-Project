/// @description Draw Interact Marker
// You can write your code in this editor
var cl = camera_get_view_x(view_camera[0])
var ct = camera_get_view_y(view_camera[0])
       
var off_x = x - cl // x is the normal x position
var off_y = y - ct // y is the normal y position
// convert to gui
var off_x_percent = off_x / camera_get_view_width(view_camera[0])
var off_y_percent = off_y / camera_get_view_height(view_camera[0])
       
var gui_x = off_x_percent * display_get_gui_width()
var gui_y = off_y_percent * display_get_gui_height()
if nearbyNPC && global.can_interact {
	draw_set_font(fnt_text);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	with (nearbyNPC) {
		draw_text(gui_x, gui_y - 50,"?");
	}
	
}

