// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colision(_colisores = []){
	
	show_debug_overlay(1)
	
	var _hspd = sign(hspd)
	var _vspd = sign(vspd)
	
	repeat(abs(hspd))
	{
		if(place_meeting(x+_hspd,y,_colisores))
		{
			hspd = 0;
		}
		else
		{
			x+=_hspd;
		}
	}
	
	
	repeat(abs(vspd))
	{
		if(place_meeting(x,y+_vspd,_colisores))
		{
			vspd = 0;
		}
		else
		{
			y+=_vspd;
		}
	}

}