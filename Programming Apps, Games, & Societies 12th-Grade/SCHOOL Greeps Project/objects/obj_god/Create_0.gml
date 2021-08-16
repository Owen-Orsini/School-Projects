/// @description Insert description here
// You can write your code in this editor
#macro col_above instance_position(x, y - 32, all);
#macro col_below instance_position(x, y + 32, all);
#macro col_left	 instance_position(x - 32, y, all);
#macro col_right instance_position(x + 32, y, all);

tomato_count = "Set Room Variables";


update_speed = 15;
update_timer = 0;

greep_x = 0;
greep_y = 0;

val = 0;

dir = "none"

image_angle = 0;

scared = false;
confused = false;