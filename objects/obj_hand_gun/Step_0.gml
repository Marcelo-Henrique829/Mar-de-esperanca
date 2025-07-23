/// @description Insert description here
// You can write your code in this editor

depth = -y

shoot()

image_xscale = lerp(image_xscale,def_scale_x,0.1)
image_yscale = lerp(image_yscale,def_scale_y,0.1)
switch(state) 
{
    
    case"apear":
    {
        sprite_index = spr_hand_gun_apear_3
        if(image_index>image_number-1) state = "iddle"
        
        
    }
    break;
    
    case "iddle":
    {
        sprite_index = spr_hand_gun
    }
    break;
    
    case "destroy":
    {
        
        sprite_index = spr_hand_gun_desapear
        if(image_index>image_number-1) {
            
           instance_destroy()
        }
    }
    break;
    
}



show_debug_message(state)
