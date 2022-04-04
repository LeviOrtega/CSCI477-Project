/// @description Insert description here
// You can write your code in this editor

global.mp_grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

// add solid instances to grid
mp_grid_add_instances(global.mp_grid, obj_solid, false);