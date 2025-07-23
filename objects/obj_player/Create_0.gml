
if(!instance_exists(Obj_control)) instance_create_layer(x,y,layer,Obj_control)
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
gu_side = 1
dir_test = 0
gun = obj_hand_gun

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
        	case rm_test :
        	{
        		if(global.room_position.rm_test.X!=false or global.room_position.rm_test.Y!=false)
        		{
        			x = global.room_position.rm_test.X 
        			y = global.room_position.rm_test.Y +10
                    
                    
        		}
        		
        	}
        	break;
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
    
    clamp_player_room = function()
    {
        x = clamp(x,0,room_width-sprite_width)
        y = clamp(y,0,room_height-sprite_height)
    }

    gun_hold = function()
        {
            
            if(!layer_exists("guns")) layer_create(-100,"guns")

            if (!instance_exists(gun)) {
                
                 instance_create_layer(x,y,"guns",gun)
                gun.image_index = 0
            }
             
            
            var _dir = point_direction(x,y,mouse_x,mouse_y)
    		var _x  = x + lengthdir_x(sprite_width/2,_dir)
    		var _y  = y + lengthdir_y(sprite_height/2,_dir)
             
            gun.image_angle = _dir
          
            gun.y = _y + vspd
            gun.x = _x + hspd
            
            if(_dir>=90 and _dir<= 270) gun.def_scale_y = -1
            else gun.def_scale_y = 1

        } 
#endregion

