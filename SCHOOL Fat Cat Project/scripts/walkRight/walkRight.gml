// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function walkRight(){
	image_xscale = 1;
	x = x + 10;
	if(curranimtimer == animtimer){
		walkanimstate = walkanimstate * -1;
		curranimtimer = 0;
	}else{
		curranimtimer++;
	}
	
	if(walkanimstate == -1){
		sprite_index = cat_walk_right;
	}
	if(walkanimstate == 1){
		sprite_index = cat_walk_right_2;
	}
	
}