// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_value(x, y, value){
	switch value
	{
	case "Snake":
		if(ds_grid_get(play_area, x, y) >= 1){
			return true;
		}else{
			return false;
		}
	break;
	case "Empty":
		if(ds_grid_get(play_area, x, y) == 0){
			return true;
		}else{
			return false;
		}
	break;
	case "Wall":
		if(ds_grid_get(play_area, x, y) == -1){
			return true;
		}else{
			return false;
		}
	break;
	case "Food":
		if(ds_grid_get(play_area, x, y) == -2){
			return true;
		}else{
			return false;
		}
	break;
	
	
	
	
	}
}