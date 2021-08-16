/// @description Insert description here
// You can write your code in this editor
var x_temp, y_temp



x_temp = lengthdir_x(b_speed, dir);
y_temp = lengthdir_y(b_speed, dir);

x = x + x_temp;
y = y + y_temp;

if((x > room_width + 32 || x < 0 - 32) || (y > room_height + 32 || y < 0 - 32)){
	instance_destroy(id);
}
