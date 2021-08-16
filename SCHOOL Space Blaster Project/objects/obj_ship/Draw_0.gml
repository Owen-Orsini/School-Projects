/// @description Insert description here
// You can write your code in this editor
draw_self();
if(input_thrust){
	draw_sprite_ext(sp_thrust, 0, x, y, 1, 1, real_angle, c_white, 1);
}

if(god_timer_curr < god_frames){
	image_alpha = 0.2;
}else{
	image_alpha = 1;
}