// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeKeys(){
	var inst, i;
	for(i = 0; i < array_length(whiteKeys); i++){
		inst = instance_create_layer((i * 63) + 54, 140, "Instances", Key);
		with(inst){
			input_key = other.whiteKeys[i];
			key_note = other.whiteNotes[i];
			spr1 = white_key;
			spr2 = white_key_down;
		}
	
	}
	for(i = 0; i < array_length(blackKeys); i++){
		if!(blackKeys[i] == ""){
			inst = instance_create_layer((i * 63) + 85, 86, "Instances_1", Key);
			with(inst){
				input_key = other.blackKeys[i];
				key_note = other.blackNotes[i];
				spr1 = black_key;
				spr2 = black_key_down;
		
		
			}
		}
	}
	
}

