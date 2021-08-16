// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_conditions(){
	if(is_dead == true){
		dir = 0;
		segments = 1;
		s_score = 0;
		head_pos_x = init_pos_x;
		head_pos_y = init_pos_y;
		speed_gear = 1;
		food_present = false;
	
		for(i = 1; i < arena_width - 1; i++){
			for(j = 1; j < arena_height - 1; j++){
			ds_grid_set(play_area, i, j, 0);
			}
		}
		is_dead = false;
	}
	
}