/// @description Insert description here
// You can write your code in this editor
#region Ball Speed
var gear;
gear = 1;
if(global.b_hits >= 4 && gear == 1){
	with(obj_ball){
	spd = 7.5;
	}
	gear = 2;
}
if(global.b_hits >= 12 && gear == 2){
	with(obj_ball){
	spd = 10;
	}
	gear = 3;
}
#endregion 