global.pause = false;
global.shop = 0;
layer_pause = "Pause_layer";
layer_shop = "Shop_layer";



update_pause = function()
{
	scr_inputs(1)
	
	if(global.inputs.esc) global.pause = !global.pause

	if(global.pause)
	{
		instance_deactivate_all(1)
		layer_set_visible(layer_pause,1)
	}
	else
	{
		layer_set_visible(layer_pause,0)	
	}
	
}	


update_pause();
