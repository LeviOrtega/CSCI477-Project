/// @description defaultly have enemy do dmg to both enemy and player on collision

if (can_collide){
	hp -= 1;
	other.hp -= 1;
	
	can_collide = false;
	alarm[8] = room_speed;	//can only collide once per second
}