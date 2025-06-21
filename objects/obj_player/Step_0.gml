  /// @description Insert description here
// You can write your code in this editor


var _i = global.inputs

var _camera = Obj_camera

_camera.x = x
_camera.y = y



switch(state)
{
	
		default :
		{
			state = "iddle";
		}
		break;
		
 		case "iddle" :
		{
			
			
			scr_direction();
			scr_anim_direction();
		
			vspd = lengthdir_y(spd,dir);
			hspd = lengthdir_x(spd,dir);
		
		
		}
		break;


}







 
