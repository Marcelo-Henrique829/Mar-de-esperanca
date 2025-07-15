
var _i = global.inputs

depth = -room_height
var _p = obj_player // O PLAYER
var _distance = point_distance(x,y,_p.x,_p.y) //distancia entre o player e a porta

switch(image_angle)
{
	 case 90 : 
	 {
		global.input_side = "up"
	 }
	 break;
	 case 0 : 
	 {
		global.input_side = "rigth"
	 }
	 break;
	 case 180 : 
	 {
		global.input_side = "left"
	 }
	 break;
	 case 270 : 
	 {
		global.input_side = "down"
	 }
	 break;
	 
}


if(_distance<300) 
{
	x_pos = lerp(x_pos,x_def,0.1)
	y_pos = lerp(y_pos,y_def,0.1)
	if(_i.enter)
	{
		
		player_room_position()
		scr_fade_in()
	}

}
else
{
	x_pos = lerp(x_pos,0,0.1)
	y_pos = lerp(y_pos,0,0.1)
}


