/// @description Insert description here
// You can write your code in this editor
if(begin_bool == false && keyboard_check(vk_space)){
	dir = 30;
	
	begin_bool = true;
}


if(begin_bool == true){
	x_move = 0;
	y_move = 0;
	
	
	x_move = lengthdir_x(spd, dir);
	y_move = lengthdir_y(spd, dir);
	
	
	
}
#region wall collision
if(begin_bool == true){
	
	// X
	if( x < 9){
		x_move = x_move * -1;
		dir = point_direction(x ,y ,x + x_move, y + y_move);
	}
	if( x > room_width - 9){
		x_move = x_move * -1;
		dir = point_direction(x ,y , x + x_move, y + y_move);
	}
	// Y
	if(y < 9){
		y_move = y_move * -1;
		dir = point_direction(x ,y ,x + x_move, y + y_move);
	}
	if(y > room_height){
		global.b_lives--;
		begin_bool = false;
		x_move = 0;
		y_move = 0;
		x = obj_paddle.x
		y = obj_paddle.y - 17;
	}
}
#endregion
#region block collision
if(begin_bool == true){
	
	if(place_meeting(x + x_move, y + y_move, obj_brick)){
		var collidable = instance_place(x + x_move, y + y_move, obj_brick)
		if(place_meeting(x + x_move, y, obj_brick)){
			x_move = x_move * -1;
		}
		if(place_meeting(x, y + y_move, obj_brick)){
			y_move = y_move * -1;
		}
		
		dir = point_direction(x ,y ,x + x_move, y + y_move);
		instance_destroy(collidable);
	}
}


	
#endregion
#region paddle collision
if(begin_bool == true){
	if(place_meeting(x + x_move, y + y_move, obj_paddle)){
		var col_place, pad_pos, first_quarter, second_quarter, third_quarter, fourth_quarter;
		
		pad_pos = obj_paddle.x;
		
		first_quarter = pad_pos - 32;
		second_quarter = pad_pos - 16;
		third_quarter = pad_pos + 16;
		fourth_quarter = pad_pos + 32;
		
		if(x + x_move >= first_quarter && x + x_move < second_quarter){
			dir = 135;
		}else if(x + x_move > second_quarter && x + x_move < pad_pos){
			dir = 120;
		}else if(x + x_move > pad_pos && x + x_move < third_quarter){
			dir = 60;
		}else if(x + x_move > third_quarter && x + x_move >= fourth_quarter){
			dir = 45;
		}
		
	
		if(global.shrink_paddle == false){
			
		
		}	
	}
}
#endregion
x = x + x_move;
y = y + y_move;

