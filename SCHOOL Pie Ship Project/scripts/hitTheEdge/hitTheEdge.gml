// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hitTheEdge(){
	rightSide = room_width - 1;
	bottomSide = room_height - 1;
	if(y <= 0)
	{
		return "top";
	}else if(x <= 0)
	{
		return "left";
	}else if(x >= rightSide)
	{
		return "right";
	}else if(y >= bottomSide)
	{
		return "bottom";
	}else
	{
		return "null";
	}
	
}