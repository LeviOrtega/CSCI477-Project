/// @description Insert description here
// You can write your code in this editor

hp -= 1;

knockback = 15;

var _dir = point_direction(x, y, other.x, other.y);

var _tx = x + lengthdir_x(knockback, _dir);
var _ty = y + lengthdir_y(knockback, _dir);

while (knockback > 0) {
	if !place_meeting(_tx, _ty, obj_solid) {
		break;
	}
	knockback -= 1;
}
x -= lengthdir_x(knockback, _dir);
y -= lengthdir_y(knockback, _dir);

if place_meeting(x, y, obj_solid) {
	x = xprevious;
	y = yprevious;
}
if place_meeting(x, y, obj_par_enemy) {
	x = xprevious;
	y = yprevious;
}