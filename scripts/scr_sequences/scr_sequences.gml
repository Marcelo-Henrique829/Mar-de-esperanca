// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.destine = noone
global.transition = 0;

global.room_position = {

	rm_test : {X: false, Y: false},
	rm_loja_entrada : {X: false, Y: false},
	rm_lanchonete : {X: false, Y: false}

}







function scr_end_sequence(){ //ao acabar a sequence destroi a mesma.
	layer_sequence_destroy(global.transition);
	global.transition = noone
}

function scr_transition_fade_in() // ao fade in chegar ao final ele te manda para a room desejada
{
	room_goto(global.destine)
	global.destine = noone
}

 function scr_fade_in()
{

	global.pause = 0;
	global.destine = destine
	var _cm_x = camera_get_view_x(view_camera[0])
	var _cm_y = camera_get_view_y(view_camera[0])	
	if(!layer_exists("inst_transition"))
	{
		layer_create(-9999,"inst_transition")
	}
	layer_sequence_create("inst_transition",_cm_x,_cm_y,sq_fade_in)

}


function scr_fade_out()
{

	global.pause = 0;
	global.transition = sq_fade_out
	
	var cam = view_camera[0];
    var center_x = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
    var center_y = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;
	
	if(!layer_exists("inst_transition"))
	{
		layer_create(-999999,"inst_transition")
	}
	
	
	layer_sequence_create("inst_transition",center_x,center_y,sq_fade_out)

}


function scr_logo(){
	
	instance_create_layer(0,0,"Instances",Obj_menu);

}
	

	
