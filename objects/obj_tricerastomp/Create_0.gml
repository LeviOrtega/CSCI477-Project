/// @description 

// Inherit the parent event
event_inherited();
stunned = false;
been_stunned = false;

dest_x = x;
dest_y = y;
hp = 20;


//attacking booleans

// if the boss is in a stage of attack or not
ready_for_attacking = true;

// specifies which attack boss is on
attack = 1;

// stage of attack
stage = 1;

stampede_wave = 0;

// amount of times each stage has been run, some stages only want to be run once, while others multiple times
stage_runs = [0,0,0];

// we use this value to determine how long the boss should wait for some attacks
future_time = 0;


