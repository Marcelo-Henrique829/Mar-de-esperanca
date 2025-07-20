   /// @description Insert description here
// You can write your code in this editor

#region variáveis temporárias

    var _i = global.inputs
    

if(instance_exists(Obj_camera)){
    
    var _camera = Obj_camera
    _camera.x = x
    _camera.y = y

}
    
#endregion


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
            if(hspd!=0 or vspd!=0)
            {
                sprite_index = spr_char_walk
            }
            else {
            	sprite_index = spr_char_iddle
            }
            
            
            if(hspd!=0) image_xscale = sign(hspd)
            
                
			vspd = lengthdir_y(spd,dir);
			hspd = lengthdir_x(spd,dir);
            
            if(room == rm_loja_menu)
            {
                state = "stop"
                
            }
            
		
		
		}
		break;
    
        case  "stop":
        {
            sprite_index = spr_nalu_front_iddle
            hspd = 0 
            vspd = 0
            
            if(room != rm_loja_menu)
            {
                state = "iddle"
                
            }
            
        }
        break;


}


switch_room()
rm_position()
gun_hold()

global.tl_wall = layer_tilemap_get_id("Tile_wall");


 
