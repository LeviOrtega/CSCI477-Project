/// @description 

// Inherit the parent event
event_inherited();
stunned = false;
stomping = false;

dest_x = x;
dest_y = y;


//attacking booleans

// if the boss is in a stage of attack or not
ready_for_attacking = true;

// specifies which attack boss is on
attack = 2;

// stage of attack
stage = 1;

stampede_wave = 0;

// amount of times each stage has been run, some stages only want to be run once, while others multiple times
stage_runs = [ 0,0,0];


