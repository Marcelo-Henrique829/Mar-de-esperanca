   // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_anim_direction(){
	
	    if (dir >= 45 && dir < 135)
		{
	        dir_state = "up";
	    }
		else if (dir >= 135 && dir < 225)
		{
	       dir_state = "left";
	    }
		else if (dir >= 225 && dir < 315)
		{
	       dir_state = "down";
	    }
		else
		{
	        dir_state = "right";
		}


	switch(dir_state)
		{
			case "up":
				
				if(vspd!=0) sprite_index = spr_nalu_back_run
				else sprite_index = spr_nalu_back_iddle
			break;
			case "down":
				if(vspd!=0) sprite_index = spr_nalu_front_run
				else sprite_index = spr_nalu_front_iddle
			break;
			case "right":
				if(hspd!=0) sprite_index = spr_nalu_right_run
				else sprite_index = spr_nalu_right_iddle
			break;
			case "left":
				if(hspd!=0) sprite_index = spr_nalu_left_run
				else sprite_index = spr_nalu_left_iddle
			break;
		
		}
		
		


}

function scr_anim_direction_luan(){
	
	    if (dir >= 45 && dir < 135)
		{
	        dir_state = "up";
	    }
		else if (dir >= 135 && dir < 225)
		{
	       dir_state = "left";
	    }
		else if (dir >= 225 && dir < 315)
		{
	       dir_state = "down";
	    }
		else
		{
	        dir_state = "right";
		}


	switch(dir_state)
		{
			case "up":
				
				if(vspd!=0) sprite_index = spr_luan_back_run
				else sprite_index = spr_luan_back_iddle
			break;
			case "down":
				if(vspd!=0) sprite_index = spr_luan_front_run
				else sprite_index = spr_luan_front_iddle
			break;
			case "right":
				if(hspd!=0) sprite_index = spr_luan_rigth_run
				else sprite_index = spr_luan_right_iddle
			break;
			case "left":
				if(hspd!=0) sprite_index = spr_luan_left_run
				else sprite_index = spr_luan_left_iddle
			break;
		
		}
		
		


}