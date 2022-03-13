// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function check_for_player(){
	player = obj_player;
	var _dis = distance_to_object(player);
	if calc_path_timer-- <= 0 {
		calc_path_timer = calc_path_delay;
		var _found_player = mp_grid_path(global.mp_grid, path, x, y, player.x, player.y, choose(0, 1));
	
		if _found_player {
			path_start(path, spd, path_action_stop, false);
		}
	}
}