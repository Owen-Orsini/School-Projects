/// @description Insert description here
// You can write your code in this edito
#region movement
if(input_right){
	real_angle = real_angle - rotational_speed;
}
if(input_left){
	real_angle = real_angle + rotational_speed;
}

if(input_thrust){
	draw_sprite_ext(sp_thrust, 0, x, y, 1, 1, real_angle, c_white, 1);
	x_velocity = x_velocity + lengthdir_x(thrust_force, real_angle);
	y_velocity = y_velocity + lengthdir_y(thrust_force, real_angle);
	
}

real_x = real_x + x_velocity;
real_y = real_y + y_velocity;

movement_wrapper();

#endregion

#region bullet
if((cooldown_cur >= laser_cooldown) && input_fire){
	var b_inst
	b_inst = instance_create_layer(x, y, "Laser", obj_bullet);
	cooldown_cur = 0;
	
}else{
	cooldown_cur++;
}
#endregion
#region collision
var ast_inst;
if(god_timer_curr >= god_frames){
	if(place_meeting(x, y, obj_asteroid)){
		ast_inst = instance_place(x, y, obj_asteroid);
		with(ast_inst){
			instance_destroy(id);
		}
		global.s_lives--;
		god_timer_curr = 0;
	}
}else{
	god_timer_curr++;
}
if(global.s_lives < 0){
	instance_destroy(id);
}
#endregion
#region apply
x = real_x;
y = real_y;


image_angle = round(real_angle);
#endregion