x_scale = lerp(x_scale,x_scale_origin,0.1)
y_scale = lerp(y_scale,y_scale_origin,0.1)
   
if(enter)
{
	x_scale = lerp(x_scale,x_scale_origin*1.2,0.2)
	y_scale = lerp(y_scale,y_scale_origin*1.2,0.2)
	if(mouse_check_button_pressed(mb_left))
	{
		global.shop = 0
        
		room_goto(rm_loja_entrada)
        global.room_position.rm_loja_entrada.X = 1500
        global.room_position.rm_loja_entrada.Y = 1504+400
        
		
	}
		
	

}