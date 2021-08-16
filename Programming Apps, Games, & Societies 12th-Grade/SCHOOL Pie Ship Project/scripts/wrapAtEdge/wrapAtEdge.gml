// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wrapAtEdge(){
	edge = hitTheEdge();
	
	rightSide = room_width - 1;
	bottomSide = room_height - 1;
	
	if(edge == "bottom")
	{
		y = 0;
	}else if(edge == "top")
	{
		y = bottomSide;
	}else if(edge == "left")
	{
		x = rightSide;
	}else if(edge == "right")
	{
		x = 0;	
	}
}