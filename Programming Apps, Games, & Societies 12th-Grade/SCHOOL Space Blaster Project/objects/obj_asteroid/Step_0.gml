/// @description Insert description here
// You can write your code in this editor
var bullet_inst;
image_angle = image_angle + rotational_speed;

real_x = real_x + lengthdir_x(s_speed, real_angle);
real_y = real_y + lengthdir_y(s_speed, real_angle);

movement_wrapper();

x = real_x;
y = real_y;

if(place_meeting(x, y, obj_bullet)){
	bullet_inst = instance_place(x, y, obj_bullet);
	with(bullet_inst){
		instance_destroy(id);
	}
	instance_destroy(id);
}