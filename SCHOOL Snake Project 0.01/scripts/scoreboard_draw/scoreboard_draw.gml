// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scoreboard_draw(x_position, y_position, x_scale, y_scale){
	var x_buffer, y_buffer;
	x_buffer = 32;
	y_buffer = 32;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	for(i = 0; i < arena_width ; i++){
		for(j = 0; j < 2; j++){
			draw_text_transformed_color(grid_draw_location, scoreboard_pos_value_str, x_scale, y_scale, 0, empty_color_4x, 100);
		}
	}
}