/// @description Insert description here
// You can write your code in this editor

// banana creator
var rand_x, rand_y, rand_side, rand_dir, rand_spd, inst_id;

rightSide = room_width - 1;
bottomSide = room_height - 1;




if((global.banana_count < 10) && irandom_range(1, 20) == 5)
{
	
	rand_x = irandom_range(0, rightSide);
	rand_y = irandom_range(0, bottomSide);
	
	rand_dir = irandom_range(0, 359);
	rand_spd = irandom_range(1, 3);
	
	
	
	inst_id = instance_create_layer(rand_x, rand_y, "Instances", obj_banan);
	with(inst_id)
	{
		x_spd = lengthdir_x(rand_spd, rand_dir);
		y_spd = lengthdir_y(rand_spd, rand_dir);
	}
}
