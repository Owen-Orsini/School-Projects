// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement_wrapper(){
	if(real_x < 0 - sprite_width/2){
		real_x = room_width;
	}else if(real_x > room_width + sprite_width/2){
		real_x = 0;
	}
	if(real_y < 0 - sprite_width/2){
		real_y = room_height;
	}else if(real_y > room_height + sprite_width/2){
		real_y = 0;
	}
}