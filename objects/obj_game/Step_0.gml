/// @description Insert description here
// You can write your code in this editor

if global.game_state == states.gameover {
	obj_player.x = 256;
	obj_player.y = 512;
	global.game_state = states.playing;
	obj_player.visible = true;
}
