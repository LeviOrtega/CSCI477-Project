if global.player_hp < global.player_maxhp {
	global.player_hp = clamp(global.player_hp + 1,0,global.player_maxhp);
	instance_destroy();
}
