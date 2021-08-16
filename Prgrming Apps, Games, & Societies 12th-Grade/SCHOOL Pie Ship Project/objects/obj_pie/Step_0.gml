/// @description Insert description here
// You can write your code in this editor


h_input = keyboard_check(vk_right) - keyboard_check(vk_left);
v_input = keyboard_check(vk_down) - keyboard_check(vk_up);
fire_input = keyboard_check(ord("F"));
accel_input = keyboard_check(vk_space);

#region firing

var cherry_id;
if(curr_cooldown == 0 && fire_input == true){
	cherry_id = instance_create_layer(x, y, "Instances", obj_cherry)
	with(cherry_id){
		image_angle = other.image_angle;
		x_move = lengthdir_x(other.proj_speed, image_angle);
		y_move = lengthdir_y(other.proj_speed, image_angle);
	}
	curr_cooldown = fire_rate;
}
if(curr_cooldown > 0){
	curr_cooldown--;
}

#endregion



#region movement
if(h_input != 0 or v_input != 0){
		dir = point_direction(0,0, h_input, v_input);
}

if(accel_input == true){
	spd = spd + 0.1;
	h_spd = lengthdir_x(spd, dir);
	v_spd = lengthdir_y(spd, dir);
}else if(spd > 0){
	spd = spd - 0.1;
	h_spd = lengthdir_x(spd, dir);
	v_spd = lengthdir_y(spd, dir);
}

changeX = h_spd;
changeY = v_spd;



var edge;

edge = hitTheEdge();

if(edge == "top" || edge == "bottom"){
	changeY = changeY * -1;
	image_angle = image_angle - 180;
}else if(edge == "left" || edge == "right"){
	changeX = changeY * -1;
	
}
move(changeX, changeY);

#endregion

#region animation
image_angle = dir;

#endregion

if(place_meeting(x, y, obj_banan)){
	instance_destroy(id);
}