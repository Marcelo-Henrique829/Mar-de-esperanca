/// @description Insert description here
// You can write your code in this editor

image_xscale = 5
image_yscale = 5

state = "iddle";

#region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	dir = 0;
	dir_state = "none";
	def_spd = 40;
	last = vk_nokey;
	inputs_bool = 1;
	
#endregion

#region dash state
	dash_def_spd = 10;
	dash_spd = 0;

	dashing_def_time = 17;
	dashing_time = dashing_def_time;

	dash_def_cooldown = 60;
	dash_cooldown = 0;
#endregion

#region run state
	run_def_spd = def_spd * 2;
	run_spd = spd;
#endregion

depth_layer = function()
{
	if(place_meeting(x,y-250,obj_wall))
	{
			depth = -999999 //UM VALOR ABSURDO PARA GARANTIR QUE VAI FICAR NA FRENTE


	}
	else
	{
			depth =  -y;

	}

	show_debug_message(depth)
}

global.tl_cercas = layer_tilemap_get_id("Tile_fence");
