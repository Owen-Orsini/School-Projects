// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function squares_draw(x_position, y_position, x_buffer, y_buffer){
	
	for(i = 0; i < arena_width; i++){
		for(j = 0; j < arena_height; j++){
			if(check_value(i, j, "Empty")){
				draw_sprite_ext(sp_generic, 0, grid_draw_location, 1, 1, 0, empty_color, 100)
			}
			if(check_value(i, j, "Snake")){
				draw_sprite_ext(sp_generic, 0, grid_draw_location, 1, 1, 0, snake_color, 100)
			}
			if(check_value(i, j, "Food")){
				draw_sprite_ext(sp_generic, 0, grid_draw_location, 1, 1, 0, food_color, 100)
			}
			if(check_value(i, j, "Wall")){
				draw_sprite_ext(sp_generic, 0, grid_draw_location, 1, 1, 0, wall_color, 100)
			}
		}
	}
}