/// @description Insert description here
// You can write your code in this editor


input();
speed_manager();

if(update_timer == update_speed){
	snake_mover();
	food_placer();
	reset_conditions();
	update_timer = 0;
}else{
	update_timer++;
}
