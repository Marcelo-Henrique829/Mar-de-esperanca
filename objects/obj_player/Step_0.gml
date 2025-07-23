   /// @description Insert description here
// You can write your code in this editor

#region variáveis temporárias

    var _i = global.inputs
    


    
#endregion

   if(instance_exists(Obj_camera))
    {
    
            var _camera = Obj_camera
            _camera.x = x
            _camera.y = y
        
    }


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
            
            
            
            if(_i.run)
            {
                if(instance_exists(Obj_camera)){
                    
                    
                    
                    var cam = view_camera[0];
                    var center_x = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
                    var center_y = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;
                    
                    
                    var _dir = point_direction(x,y,mouse_x,mouse_y)
                    var _camera = Obj_camera
                    
                    var _x = lengthdir_x(900,_dir) 
                    var _y = lengthdir_y(800,_dir)
                    
                    
                    _camera.x += _x
                    _camera.y += _y
                   
                
                }
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

 
