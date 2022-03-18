/// @description Insert description here
// You can write your code in this editor

global.font_main = fnt_pause;

enum states {
	playing,
	paused,
	gameover
};

global.game_state = states.playing;