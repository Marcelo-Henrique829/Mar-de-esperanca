target_room = noone
target_x = noone
target_y = noone
alpha = 0
margin_x = 0
margin_y = 0

side_angle = function()
{
    if(margin_x==0 and margin_y==0)
    {
        switch (image_angle) {
        	
            case 90:
            {
                margin_y = 10
            }
            break;
            case 270:
            {
                margin_y = -10
            }
            break;
            case 180:
            {
                margin_x = 10
            }
            break;
            case 0:
            {
                margin_x = -10
            }
            break;
            
                }
    }
}