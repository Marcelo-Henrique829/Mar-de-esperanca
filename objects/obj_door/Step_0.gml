
var _i = global.inputs

depth = -room_height
var _p = obj_player // O PLAYER
var _distance = point_distance(x,y,_p.x,_p.y) //distancia entre o player e a porta






if(_distance<300) 
{
	pos = lerp(pos,def_pos,0.1)
	if(_i.enter)
	{
		
		player_room_position()
		scr_fade_in()
	}

}
else
{
	pos = lerp(pos,0,0.1)
}


