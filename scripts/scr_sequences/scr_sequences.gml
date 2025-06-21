// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.transition = 0;

function scr_end_sequence(){ //ao acabar a sequence destroi a mesma.
	
	layer_sequence_destroy(global.transition);

}


function scr_logo(){
	
	instance_create_layer(0,0,"Instances",Obj_menu);

}