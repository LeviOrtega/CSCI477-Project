// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
	// Target Values
	_tx = x;
	_ty = y;
	
	x = xprevious;
	y = yprevious;
	
	_dis_x = abs(_tx - x);
	_dis_y = abs(_ty - y);
	repeat(_dis_x) {
		if (!(instance_place(x + sign(_tx - x), y + 0, obj_solid)) > 0) {
			x += sign(_tx - x);	
		}
	}
	repeat(_dis_y) {
		if (!(instance_place(x + 0, y +  sign(_ty - y), obj_solid)) > 0) {
			y += sign(_ty - y);	
		}
	}
	
}