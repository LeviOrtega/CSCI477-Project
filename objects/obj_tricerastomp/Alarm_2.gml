/// @description 

if (stampede_wave < 3){
	stampede();
	stampede_wave++;
	alarm[2] = room_speed * 4;
}

//call 3 waves of stampedes, then move to next attack
else {
	attack = 3;
	stampede_wave = 1;
}