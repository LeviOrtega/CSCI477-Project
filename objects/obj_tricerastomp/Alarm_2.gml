/// @description 

if (stampede_wave < 3){
	stomping = true;
	stampede();
	stampede_wave++;
	stopming = false;
	alarm[2] = room_speed * 4;
}

//call 3 waves of stampedes, then move to next attack
else {
	attack = 3;
	stampede_wave = 1;
}