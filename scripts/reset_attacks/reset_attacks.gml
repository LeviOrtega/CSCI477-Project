// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_attacks(){
			stage = 1;
			attack = 0;
			future_time = 0;
		
			for (var i = 0; i < array_length(stage_runs); i++){
				stage_runs[i] = 0;
			}
}