/// @description define default stats for enemies

spd = 1;
hp = 1;

// Enemy AI Stuff
alert = false;
alert_dis = 160; // Distance to start chase

path = path_add();

calc_path_delay = 16;
calc_path_timer = irandom(30);

startx = x;
starty = y;
state = enemy_state.IDLE;

enum enemy_state {
	IDLE,
	WANDER,
	CHASE,
}