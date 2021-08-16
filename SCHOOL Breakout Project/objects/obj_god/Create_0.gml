/// @description Insert description here
// You can write your code in this editor
brick_width = 32;
brick_height = 16;
brick_row_size = 16;
brick_columns = 8;
layers_per_color = 2;
upper_buffer = 32;
global.b_score = 0;
global.b_hits = 0;
global.shrink_paddle = false;
global.b_lives = 3;


#region Create Bricks
var inst, color_change;
for(j = 0; j < brick_columns; j++){
	color_change = floor(j / layers_per_color);
	
	for(i = 0; i < brick_row_size; i++){
		inst = instance_create_layer((i*brick_width), (upper_buffer + (brick_height * j)), "Bricks", obj_brick);
		with(inst){
			switch color_change{
			case 0:
			sprite_index = sp_redbrick;
			point_value = 7;
			break;
			case 1:
			sprite_index = sp_orangebrick;
			point_value = 5;
			break;
			case 2:
			sprite_index = sp_greenbrick;
			point_value = 3;
			break;
			case 3: 
			sprite_index = sp_yellowbrick;
			point_value = 1;
			break;
			}
		
		
		}
	}
}
#endregion

#region Create Paddle & Ball
instance_create_layer(256, 600, "Paddle", obj_paddle);
instance_create_layer(obj_paddle.x, obj_paddle.y - 17, "Ball", obj_ball);

#endregion



