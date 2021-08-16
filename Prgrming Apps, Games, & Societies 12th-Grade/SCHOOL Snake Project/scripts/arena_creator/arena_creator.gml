// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arena_creator(){
	// create grid represented play area
	play_area = ds_grid_create(arena_width, arena_height);
	
	// set value of perimeter grid positions to -1
	for(i = 0; i < arena_width; i++){
		ds_grid_set(play_area, i, 0, -1);
		ds_grid_set(play_area, i, arena_height - 1, -1);
	}
	for(i = 0; i < arena_height - 2; i++){
		ds_grid_set(play_area, 0, i + 1, -1);
		ds_grid_set(play_area, arena_width - 1, i + 1, -1);
	}
}