// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function position_generator(){

	for(i = 0; i < 1;){
		x_pos = irandom_range(1, arena_width - 2);
		y_pos = irandom_range(1, arena_height - 2);
		if(ds_grid_get(play_area, x_pos, y_pos) == 0){
			i = 1;
		}
	}
}
	
	