/// @description Insert description here
// You can write your code in this editor

scr_colision([obj_wall,global.tl_cercas,obj_construct])
scr_screen_shake()  
scr_inputs(inputs_bool)

 


if(place_meeting(x,y-250,obj_wall))
{
		depth = -999999


}
else
{
		depth =  -y;

}

show_debug_message(depth)
