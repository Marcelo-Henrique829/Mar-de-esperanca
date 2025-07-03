x_scale = lerp(x_scale,x_scale_origin,0.1)
y_scale = lerp(y_scale,y_scale_origin,0.1)
   
if(enter)
{
	x_scale = lerp(x_scale,x_scale_origin*1.5,0.2)
	y_scale = lerp(y_scale,y_scale_origin*1.5,0.2)
	if(mouse_check_button_pressed(mb_left))
	{
		global.pause = 0;
	}
		
	

}