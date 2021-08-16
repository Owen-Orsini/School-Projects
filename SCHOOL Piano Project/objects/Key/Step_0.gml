/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord(input_key))){
	sprite_index = spr2;
	audio_play_sound(key_note, 10, false);
}else{
	sprite_index = spr1;
}