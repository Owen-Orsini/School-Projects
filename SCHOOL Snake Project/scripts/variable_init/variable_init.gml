// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function variable_init(){
	#region changable
	// Colors
	snake_color = c_lime;
	wall_color = c_ltgray;
	empty_color = c_white;
	food_color = c_red;
	
	// Arena Size
	arena_width = 19;
	arena_height = 19;
	
	// Inputs
	input_left = ord("A");
	input_right = ord("D");
	input_up = ord("W");
	input_down = ord("S");
	input_change_graphics = ord("1");
	
	// Graphics type
	draw_type = 0;
	
	#endregion
	
	#region macros
	
	// Color values repeated 4 times to make text color values easier to read
	#macro snake_color_4x snake_color, snake_color, snake_color, snake_color
	#macro wall_color_4x wall_color, wall_color, wall_color, wall_color
	#macro empty_color_4x empty_color, empty_color, empty_color, empty_color
	#macro food_color_4x food_color, food_color, food_color, food_color
	#macro black_color_4x c_black, c_black, c_black, c_black
	
	// 
	#macro grid_draw_location x_position + (i * x_buffer), y_position + (j * y_buffer)
	#macro arena_pos_value_str string(ds_grid_get(play_area, i, j))
	#macro scoreboard_pos_value_str string(ds_grid_get(scoreboard, i, j))
	
	#endregion
	
	segments = 1;
	s_score = 0;
	is_dead = false;
	
	
	init_pos_x = 5;
	init_pos_y = 5;
	head_pos_x = init_pos_x;
	head_pos_y = init_pos_y;
	
	update_speed = 0;
	speed_gear = 1;
	
	food_present = false;
	update_timer = 0;
	
	scoreboard = 0;
	input_pressed = false;
	
	dir = 0;
	
	x_pos = 0;
	y_pos = 0;
}