/// @description Set speed...

event_inherited();

spd = 3;
hp = 5;
global.can_interact = false;
global.int_timer = 60;
nearbyNPC = noone;
lookRange = 50;


aim_dir = 0;
attack_speed = 40;
can_attack = true;

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);