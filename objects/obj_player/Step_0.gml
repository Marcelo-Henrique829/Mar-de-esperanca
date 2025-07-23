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
			scr_anim_4_direction(
             
            spr_nalu_back_iddle, spr_nalu_back_run,
            spr_nalu_front_iddle, spr_nalu_front_run,
            spr_nalu_left_iddle, spr_nalu_left_run,
            spr_nalu_right_iddle, spr_nalu_right_run
            
            )
            
            
			vspd = lengthdir_y(spd,dir);
			hspd = lengthdir_x(spd,dir);
            
            if(room == rm_loja_menu)
            {
                state = "stop"
                
            }
            
            if(_i.aim)
            {
                state = "aim"
            }
            
		
		
		}
		break;
    
        case  "aim":
        {
            
            scr_anim_4_direction(
             
            spr_nalu_back_iddle, spr_nalu_back_run,
            spr_nalu_front_iddle, spr_nalu_front_run,
            spr_nalu_left_iddle, spr_nalu_left_run,
            spr_nalu_right_iddle, spr_nalu_right_run
            
            )
            hspd = 0 
            vspd = 0
            gun_hold()
            dir = gun.image_angle
            
            if(!_i.aim)
            {
                gun.state = "destroy"
                gun.image_index = 0
                state = "iddle"
                
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
global.tl_wall = layer_tilemap_get_id("Tile_wall");
global.tl_objects = layer_tilemap_get_id("Tile_objects");

 
