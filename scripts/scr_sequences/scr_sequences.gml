// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.destine = noone
global.transition = 0;

function scr_end_sequence(){ //ao acabar a sequence destroi a mesma.
	layer_sequence_destroy(global.transition);
}

function scr_transition_fade_in() // ao fade in chegar ao final ele te manda para a room desejada
{
	room_goto(global.destine)
	global.destine = noone
}




function scr_logo(){
	
	instance_create_layer(0,0,"Instances",Obj_menu);

}