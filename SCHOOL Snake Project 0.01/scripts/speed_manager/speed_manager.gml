// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function speed_manager(){
	if((s_score > 2 * speed_gear) && speed_gear < 6){
		
		speed_gear++;
	}
	switch(speed_gear){
		case 1:
		update_speed = 30; // 2 updates per second
		break;
		case 2:
		update_speed = 20; // 3 updates per second
		break;
		case 3:
		update_speed = 15; // 4 updates per second
		break;
		case 4:
		update_speed = 12; // 5 updates per second
		break;
		case 5:
		update_speed = 6;  // 6 updates per second
		break;
	}
}