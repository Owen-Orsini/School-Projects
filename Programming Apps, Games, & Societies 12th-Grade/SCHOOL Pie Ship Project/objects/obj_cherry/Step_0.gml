/// @description Insert description here
// You can write your code in this editor
var banan_id;

x = x + x_move;
y = y + y_move;

edge_collide = hitTheEdge();

if(instance_place(x, y, obj_banan)){
	banan_id = instance_place(x, y, obj_banan);
	instance_destroy(banan_id);
	global.banana_count--;	
	instance_destroy(id);
}

if(edge_collide != "null")
{
	instance_destroy(id);
}

