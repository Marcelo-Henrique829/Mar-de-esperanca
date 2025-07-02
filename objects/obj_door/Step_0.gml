
var _i = global.inputs

depth = -room_height
var _p = obj_player
var _distance = point_distance(x,y,_p.x,_p.y)

 if(_distance<300)
{
	pos = lerp(pos,def_pos,0.1)
	if(_i.enter)
	{
		global.destine = destine
	
		var _cm_x = Obj_camera.x
		var _cm_y = Obj_camera.y
		layer_sequence_create("inst_transition",_cm_x,_cm_y,sq_fade_in)
	}

}
else
{
	pos = lerp(pos,0,0.1)
}


