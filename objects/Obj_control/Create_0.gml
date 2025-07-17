
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
    if(room!=rm_loja_menu)
    {
        global.shop = 0
    } 
    
	if(global.shop)
    {
        layer_set_visible(layer_shop,1);
    } 
    else {
        layer_set_visible(layer_shop,0);
    }
        

}


update_shop();
update_pause();
             