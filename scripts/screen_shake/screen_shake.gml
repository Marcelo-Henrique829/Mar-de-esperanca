// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.shake = 0;

function scr_screen_shake() //precisa de uma variavel shake
{
	

	if(global.shake>0)
	{
		var _x = random_range(-global.shake,global.shake)
		var _y = random_range(-global.shake,global.shake)
		
		view_set_xport(view_current,_x)
		view_set_yport(view_current,_y)
		global._shake = 0
		global.shake-=0.5
	}




}