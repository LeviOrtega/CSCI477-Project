/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);

if (instance_exists(obj_player)) {
	_x = clamp(obj_player.x - view_width / 2, 0, room_width - view_width);
	_y = clamp(obj_player.y - view_height / 2, 0, room_height - view_height);
	
	global._curr_x = camera_get_view_x(view);
	global._curr_y = camera_get_view_y(view);
	
	var _spd = .1;
	camera_set_view_pos(view, lerp(global._curr_x, _x, _spd), lerp(global._curr_y, _y, _spd));
}