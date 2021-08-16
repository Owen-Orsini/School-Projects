/// @description Insert description here
// You can write your code in this editor




if(update_timer == update_speed){
	update_timer = 0;
	var inst;
	
	//check above
	inst = instance_position(x, y - 32, all);
	if(inst != noone){
		with(inst){
			other.val = val;
		}
	}
	if(inst == noone && dir = "up"){
		greep_y = greep_y - 32;
	}
	
	

	x = greep_x;
	y = greep_y;
}else{
	update_timer++;
}
