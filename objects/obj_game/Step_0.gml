/// @description Insert description here
// You can write your code in this editor

if global.game_state == states.gameover {
	obj_player.x = 255;
	obj_player.y = 540;
	global.game_state = states.playing;
	obj_player.visible = true;
}
