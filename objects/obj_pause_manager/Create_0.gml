global.pause = false;
layer_name = "Pause_layer";

update_pause = function()
{
	scr_inputs(1)
	
	if(global.inputs.esc) global.pause = !global.pause

	if(global.pause)
	{
		instance_deactivate_all(1)
		layer_set_visible(layer_name,1)
	}
	else{
	
		instance_activate_all()
		layer_set_visible(layer_name,0)
			
	}
}	

update_pause();