/// @description Insert description here
// You can write your code in this editor

cooldown_def = 10
cooldown_time = 0
state = "apear"
image_index = 0
def_scale_x = image_xscale
def_scale_y = image_yscale


shoot = function ()
{
    if(!layer_exists("bullet")) layer_create(50,"bullet")
    
    var _i = global.inputs
    if(cooldown_time>0) cooldown_time--
        
    if(cooldown_time<=0 and state!="destroy")
    {
        if (_i.attack) 
        {
            image_xscale = 2
            
            global.shake = 6
                var _bullet = instance_create_layer(x,y,"bullet",obj_bullet)
                _bullet.direction = image_angle
                _bullet.speed = 100
                cooldown_time = cooldown_def

            }
            
        	
        }
    
    
  } 




