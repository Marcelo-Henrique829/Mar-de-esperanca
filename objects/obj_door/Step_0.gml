

depth = -room_height
var _p = obj_player
var _distance = point_distance(x,y,_p.x,_p.y)

if(_distance<300)
{
	pos = lerp(pos,400,0.1)
	
}
else
{
	pos = lerp(pos,0,0.1)
}
