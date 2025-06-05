  /// @description Insert description here
// You can write your code in this editor
#region

	var _esquerda =	global.left
	var _direita =	global.right
	var _cima   =	global.up
	var _baixo  =	global.down
	var _dash = global.dash
	var _run = global.run
	var _attack = global.attack
	var _aim = global.aim
	

#endregion

var _camera = Obj_camera
_camera.x = x
_camera.y = y


 



var _move_all = _esquerda or _direita or _cima or _baixo
var _moveh = _direita - _esquerda;
var _movev = _baixo - _cima;




switch(state)
{
	
		default :
		{
			state = "iddle"
		}
		break;
		
 		case "iddle" :
		{
			
			
			scr_direction()
			scr_anim_direction()
			//if(dash_cooldown<=0 and _dash)
			//{
			//	 state = "dash"
			//	 image_index = 0;
				
			
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
			
			
			
			
			
	
		
		
		}
		break;
		
		case "dash":
		{
			sprite_index = spr_player_dash
			//dashing_time--
			//inputs_bool = 0

			
			dash_spd = lerp(dash_spd,dash_def_spd,0.5)
			show_debug_message(dash_spd)

			hspd = lengthdir_x(dash_spd,dir)
			vspd = lengthdir_y(dash_spd,dir)
			
			if(image_index>=image_number-1) //voltando ao estado de iddle
			{
				state = "iddle"
				//dashing_time = dashing_def_time
				//dash_cooldown = dash_def_cooldown
				//inputs_bool = 1
				//dash_spd = 0;
			}
			
			if(place_meeting(x+hspd,y+vspd,obj_wall))
			{
				global.shake = 20
			}
			
			
			
			
		}
		break;
		
		
		case "attack":
		{
			
			if(image_index>=image_number-1)
			{
				state = "iddle"	
			}
			hspd = 0
			vspd = 0;
			
			
		}
		break;
		case "hit":
		{
				global.shake = 20
			
				var _dir_inimigo = obj_slime.dir
				sprite_index = spr_player_hit
			
				hspd = lengthdir_x(5,_dir_inimigo)
				vspd = lengthdir_y(5,_dir_inimigo)
				if(image_index>=image_number-1)
				{
						state = "iddle"	
						global.shake = 0

				}
				
		}
		break;
		
		case "dead":
		{
			sprite_index = spr_player_destroy
			if(image_index>=image_number-1)
			{
				game_restart()
			}
		}
		break;
		
		case "aim":
		{
			hspd = 0
			vspd = 0
			 
			
			
			sprite_index = spr_player_down_iddle
			scr_anim_direction()
			scr_direction()
				
			
			Obj_camera.resolution_scale = lerp(Obj_camera.resolution_scale,1.5,0.05)
				if(!instance_exists(obj_arco))
				{
					arco = instance_create_layer(x,y,layer,obj_arco)
				}
			
					var _dir = point_direction(x,y,mouse_x,mouse_y)
					arco.x =  x + lengthdir_x(sprite_width+1,_dir)
					arco.y =  y + lengthdir_y(sprite_height+1,_dir)
					arco.image_angle = _dir
					
					
				if(_attack and cooldown_flecha<=0)
				{
					var _flecha = instance_create_layer(arco.x,arco.y,"armas",obj_arrow)
					
					_flecha.speed = 10
					_flecha.direction = arco.image_angle
					_flecha.image_angle = _dir
					cooldown_flecha = def_cooldown_arrow
					
				}
				
				dir = arco.image_angle
					
				
				
				
			
				
			
			
			
		}
		break;
 		case "fall" :
		{
			hspd = 0
			vspd = 0
			sprite_index = spr_player_fall
			if(image_index>= image_number-1) game_restart()
		}
		break;
			
	
	

}









