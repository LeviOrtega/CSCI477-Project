/// @description define default stats for enemies

spd = 1;
hp = 1;

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