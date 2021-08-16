// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function asteroid_create(type){
	var xx, yy, inst, valid_pos
	valid_pos = false;
	
	switch (type){
	case "new":
		size = "big";
		while(valid_pos == false){
			xx = irandom_range(0, room_width);
			yy = irandom_range(0, room_height);
			if(!point_in_circle(xx, yy, obj_ship.x, obj_ship.y , 200)){
				break;
			}
		}
		inst = instance_create_layer(xx, yy, "Asteroids", obj_asteroid);
		with(inst){
			size = other.size;
			asteroid_init();
			real_angle = irandom_range(0, 359);
		}
	break;
	case "children_big":
		size = "med";
		inst = instance_create_layer(x, y, "Asteroids", obj_asteroid);
		with(inst){
			size = other.size;
			asteroid_init();
			real_angle = other.real_angle - 90;
		}
		inst = instance_create_layer(x, y, "Asteroids", obj_asteroid);
		with(inst){
			size = other.size;
			asteroid_init();
			real_angle = other.real_angle + 90;
		}
		
	break;
	case "children_med":
		size = "small";
		inst = instance_create_layer(x, y, "Asteroids", obj_asteroid);
		with(inst){
			size = other.size;
			asteroid_init();
			real_angle = other.real_angle - 90;
		}
		inst = instance_create_layer(x, y, "Asteroids", obj_asteroid);
		with(inst){
			size = other.size;
			asteroid_init();
			real_angle = other.real_angle + 90;
		}
		
	break;

	
	return inst
}
}