/// @description Insert description here
// You can write your code in this editor

cooldown_def = 20
cooldown_time = 0

shoot = function ()
{
    if(!layer_exists("bullet")) layer_create(50,"bullet")
    
    var _i = global.inputs
    if(cooldown_time>0) cooldown_time--
        
    if(cooldown_time<=0)
    {
        if (_i.attack) 
        {
            global.shake = 10
                var _bullet = instance_create_layer(x,y,"bullet",obj_bullet)
                _bullet.direction = image_angle-10
                _bullet.speed = 100
            
                var _bullet2 = instance_create_layer(x,y,"bullet",obj_bullet)
                _bullet2.direction = image_angle
                _bullet2.speed = 100
            
                var _bullet3 = instance_create_layer(x,y,"bullet",obj_bullet)
                _bullet3.direction = image_angle+10
                _bullet3.speed = 100
            	
                cooldown_time = cooldown_def

            }
            
        	
        }
    
    
  } 




