x_scale = lerp(x_scale,x_scale_origin,0.1)
y_scale = lerp(y_scale,y_scale_origin,0.1)
   
if(enter)
{
	x_scale = lerp(x_scale,x_scale_origin*1.2,0.2)
	if(mouse_check_button_pressed(mb_left))
	{
		x_scale = lerp(x_scale,x_scale_origin/2,0.1)
		y_scale = lerp(y_scale,y_scale_origin/2,0.1)
		
		
		
		
		switch(str)
		{
				default:
				{
					str = "noone"
				}
				break;

				case "cura":
				{
					if(global.coin>=global.potions_price.cura)
					{
						global.potions.cura++
						global.coin-= global.potions_price.cura
					}
				
				}
				break;
				case "mana":
				{
					if(global.coin>=global.potions_price.mana)
					{
						global.potions.mana++
						global.coin-= global.potions_price.mana
					}
				
				}
				break;
				case "gosma":
				{
					if(global.coin>=global.potions_price.gosma)
					{
						global.potions.gosma++
						global.coin-= global.potions_price.gosma
					}
				
				}
				break;
		
		
			
		}	
		
		
		

	}	
	
	
	
}



