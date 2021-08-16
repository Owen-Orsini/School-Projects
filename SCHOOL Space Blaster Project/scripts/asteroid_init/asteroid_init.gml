// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asteroid_init(){
	var rot_dir

	switch size{
	case "big":
	sprite_index = sp_big_asteroid;
	rotational_speed = irandom_range(1, 2);
	s_speed = 1;
	break;
	case "med":
	sprite_index = sp_med_asteroid;
	rotational_speed = irandom_range(3, 5);
	s_speed = 2;
	break;
	case "small":
	sprite_index = sp_small_asteroid;
	rotational_speed = irandom_range(6, 9);
	s_speed = 3;
	break;
	}
	
	image_angle = irandom_range(0, 359);
	
	rot_dir = choose(-1, 1);
	rotational_speed = rotational_speed * rot_dir;

}