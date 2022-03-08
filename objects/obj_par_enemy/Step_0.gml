/// @description 

if (hp <= 0){
	effect_create_above(ef_explosion, x, y, 5, c_green);
	instance_destroy();
}