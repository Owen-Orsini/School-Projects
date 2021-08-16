// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function food_placer(){
	if(food_present == false){
		position_generator();
		ds_grid_set(play_area, x_pos, y_pos, -2);
		food_present = true;
		
	}
	
}