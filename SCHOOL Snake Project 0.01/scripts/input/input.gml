// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function input(){
	if(keyboard_check(input_up) && dir != 3){
		dir = 1;
		input_pressed = true;
	}else if(keyboard_check(input_right) && dir != 4){
		dir = 2;
		input_pressed = true;
	}else if(keyboard_check(input_down) && dir != 1){
		dir = 3;
		input_pressed = true;
	}else if(keyboard_check(input_left) && dir != 2){
		dir = 4;
		input_pressed = true;
	}else{
		input_pressed = false;
	}
	
	if(keyboard_check_pressed(input_change_graphics)){
		draw_type++;
	}
	
}