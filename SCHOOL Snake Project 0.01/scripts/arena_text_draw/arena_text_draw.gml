// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arena_text_draw(x_position, y_position, x_scale, y_scale, color_mode)
{
	var empty_col, snake_col, food_col, wall_col, x_buffer, y_buffer;

	x_buffer = 32;
	y_buffer = 32;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	
	for(i = 0; i < arena_width; i++){
		for(j = 0; j < arena_height; j++){
			if(check_value(i, j, "Empty")){
				draw_text_transformed_color(grid_draw_location, arena_pos_value_str, x_scale, y_scale, 0, empty_color_4x, 100);
			}
			if(check_value(i, j, "Snake")){
				if(ds_grid_get(play_area, i, j) > 9){
					draw_text_transformed_color(grid_draw_location, arena_pos_value_str, (x_scale * 0.5), y_scale, 0, snake_color_4x, 100);
				}else{
					draw_text_transformed_color(grid_draw_location, arena_pos_value_str, x_scale, y_scale, 0, snake_color_4x, 100);
				}
			}
			if(check_value(i, j, "Food")){
				draw_text_transformed_color(grid_draw_location, arena_pos_value_str, x_scale * 0.60, y_scale, 0, food_color_4x, 100);
			}
			if(check_value(i, j, "Wall")){
				draw_text_transformed_color(grid_draw_location, arena_pos_value_str, x_scale * 0.60, y_scale, 0, wall_color_4x, 100);
			}
		}
	}
		
}