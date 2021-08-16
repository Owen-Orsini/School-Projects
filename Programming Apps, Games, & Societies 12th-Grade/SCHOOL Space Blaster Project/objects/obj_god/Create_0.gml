/// @description Insert description here
// You can write your code in this editor
global.s_score = 0;
global.s_lives = 3;
global.asteroids = 0;
max_asteroids = 4;

text_color = c_lime;
#macro text_color_4x text_color, text_color, text_color, text_color


instance_create_layer(room_width/2, room_height/2, "Ship", obj_ship);

window_set_fullscreen(true);