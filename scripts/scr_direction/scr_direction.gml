// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_direction(){
	

	var _esquerda=	global.left
	var _direita=	global.right
	var _cima  =	global.up
	var _baixo  =	global.down
	var _ataque =	global.attack


	var _esquerda_p = global.left_p
	var _direita_p = global.right_p
	var _cima_p =  global.up_p
	var _baixo_p =  global.down_p
	
	
	
	//se ele aperta algum botão ele procura a direção do player e põe uma velocidade diferente de 0
	if(_esquerda or _direita or _cima or _baixo)
	{
		dir = point_direction(0,0,_direita - _esquerda,_baixo - _cima)
		
		if(global.run)
		{
			spd = lerp(spd,run_def_spd,0.01)
		}
		else
		{
			spd = def_spd
		}
	}
	else
	{
		if(!global.run)
		{
			spd = 0;
		}
	}
	
	
	#region arruma o problema de direção então se ele aperta cima e baixo ele salva a última direção ao inves de ficar 0
		if (_esquerda_p) last_key = vk_left 
		if (_direita_p)  last_key = vk_right;
		if (_cima_p)	 last_key = vk_up;
		if (_baixo_p)	 last_key = vk_down;
	
	
		if(_esquerda and _direita)
		{
			if(last_key == vk_right)
			{
				dir = 0;
			}
			else
			{
				dir = 180
			}
		}
	
		if(_baixo and _cima)
		{
			vspd = 0
			if(last_key == vk_up)
			{
				dir = 90;
			}
			else
			{
				dir = 270;
			}
		}
	
		
		
		
		
			
	
	#endregion
	
}

