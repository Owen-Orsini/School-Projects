// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snake_mover(){
	
	
	switch dir{
	case 1: 
	head_pos_y--;
	break;
	case 2:
	head_pos_x++;
	break;
	case 3:
	head_pos_y++;
	break;
	case 4:
	head_pos_x--;
	break;
	}
	
	if(dir != 0){
		// if next positions is a Snake segment or Wall
			// kill Snake
		if(check_value(head_pos_x, head_pos_y, "Snake") || check_value(head_pos_x, head_pos_y, "Wall")){
			is_dead = true;
		}
		// if snake was not killed
		if(is_dead == false){
			// if next position is food
				// increase segment count by 1
				// indicate that more food needs to be spawned
				// change the value of next position to the number of segments
			if(check_value(head_pos_x, head_pos_y, "Food")){
				segments++;
				s_score++;
				food_present = false;
				ds_grid_set(play_area, head_pos_x, head_pos_y, segments);
				
			// else if next position is empty
				// change the value of next position to the number of segments + 1
			}else if(check_value(head_pos_x, head_pos_y, "Empty")){
				ds_grid_set(play_area, head_pos_x, head_pos_y, segments + 1);
				// for every playable grid position
				 for(i = 1; i < arena_width - 1; i++){
					for(j = 1; j < arena_height - 1; j++){
						// if position value is snake ( >= 1)
							// change position value by - 1
						if(check_value(i, j, "Snake")){
							ds_grid_add(play_area, i, j, -1);
						}
					}
				}
			}
		}
	}else{
		ds_grid_set(play_area, head_pos_x, head_pos_y, segments);
	}
}
				
