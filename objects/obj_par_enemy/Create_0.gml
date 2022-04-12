/// @description define default stats for enemies

spd = 1;
hp = 1;
dir = 1;
x_dir = 1;
y_dir = 1;
event_inherited();

can_collide = true;

enemy_can_attack = true;
enemy_attack_speed = 50

alert = false;

alert_dis = 160;

attack_dis = 20;

path = path_add();

calc_path_delay = 30;

calc_path_timer = irandom(60);

spd = 2;

hp = 1;