/// @description Insert description here
// You can write your code in this editor
depth = -y

switch (state) {
    
    case "iddle":
    {
        sprite_index = spr_bullet_ness
        
        if (place_meeting(x,y,wall)){
                
            image_index = 0
            state = "destroy"
            
            
        }
    }
    break;
    
    case "destroy":
    {
        sprite_index = spr_bullet_explode
        speed = 0
        if(image_index>image_number-1)
        {
            instance_destroy()
        }
    }
    break;
    
    
	
}