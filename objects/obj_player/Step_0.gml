/// @description Movement

hsp = 0;
vsp = 0;

if (keyboard_check(vk_left)){
	hsp = -1;	
	
}

if (keyboard_check(vk_right)){
	hsp = 1;	
	
}

if (keyboard_check(vk_up)){
	vsp = -1;	
	
}

if (keyboard_check(vk_down)){
	vsp = 1;	
	
}


x += hsp*spd;
y += vsp*spd;


// bound player in room
x = clamp(x,0 + sprite_width/2, room_width - sprite_width/2);
y = clamp(y,0 + sprite_height/2, room_height - sprite_height/2);