
if(!instance_exists(Obj_control)) instance_create_layer(x,y,layer,Obj_control) /*se o objeto controle
    não existir ao ser criado na room ele vai ser instanciado pelo player*/

#region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	def_spd = 40;
	
	
	
	dir = 0;
	dir_state = "none";
	last = vk_nokey;
	
#endregion
state = "iddle";

window_set_cursor(cr_none)

#region functions
    switch_room = function()
    {
        var _target = instance_place(x,y,obj_room_switch)
        if(_target!=noone)
        {
            room_goto(_target.target_room)
            x = _target.target_x
            y = _target.target_y
        
        }
        
    }
    
    rm_position = function()

    {
        switch(room)
        {
        	
        	case rm_loja_entrada :
        	{
        		if(global.room_position.rm_loja_entrada.X!=false or global.room_position.rm_loja_entrada.Y!=false)
        		{
        			x = global.room_position.rm_loja_entrada.X 
        			y = global.room_position.rm_loja_entrada.Y
                    
                    global.room_position.rm_loja_entrada.X = false
                    global.room_position.rm_loja_entrada.Y = false
        		}
        		
        	}
        	break;
        }
    
        
    }

    gun_hold = function()
    {
        if (!instance_exists(obj_shot_gun)) {
            
             instance_create_layer(x,y,layer,obj_shot_gun)
        }
       
        var _dir = point_direction(x,y,mouse_x,mouse_y)
		var _x  = x + lengthdir_x(sprite_width/2,_dir)
		var _y  = y + lengthdir_y(sprite_height/2,_dir)
         
        obj_shot_gun.image_angle = _dir
        obj_shot_gun.x = _x 
        obj_shot_gun.y = _y
        
        if(_dir>=90 and _dir<= 270)  obj_shot_gun.image_yscale = -1
        else   obj_shot_gun.image_yscale = 1
            
        

        
        
    } 

#endregion





