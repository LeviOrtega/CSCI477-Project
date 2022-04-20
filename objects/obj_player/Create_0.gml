/// @description Set speed...

event_inherited();
evolve = 0;
flash = 0;
spd = 3;
hp = 5;
form = 0;
global.forms = [0,0,0,0];

transformed = false;
transforming = false;

global.can_interact = false;
global.int_timer = 60;
nearbyNPC = noone;
lookRange = 50;
state = "moving"

aim_dir = 0;
attack_speed = 40;
can_attack = true;
attacking = false;

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

