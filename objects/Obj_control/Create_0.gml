
layer_pause = "Pause_layer";
layer_shop = "shop_layer";



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
		instance_activate_all()
		layer_set_visible(layer_pause,0)	
	}
	
}	



update_shop = function()
{
	layer_set_visible(layer_shop,global.shop)
	if(room != rm_loja_2) global.shop = 0

}

update_shop();
update_pause();
