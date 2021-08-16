/// @description Insert description here
// You can write your code in this editor

// create new room called space
// create camera/viewpoint in space
// should be 600 x 400

// create script called prepare



//create Pie Ship

global.banana_count = 0;

var hh, ww;

hh = round(window_get_height() / 2);
ww = round(window_get_width() / 2);

instance_create_layer(ww, hh, "Instances", obj_pie);

