/// @description Insert description here
// You can write your code in this editor

//image_xscale = 0.15
//image_yscale = 0.15


state = "iddle";

#region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	def_spd = 40;
	
	
	
	dir = 0;
	dir_state = "none";
	last = vk_nokey;
	
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

winh = window_get_height()
winw = window_get_width()


global.tl_wall = layer_tilemap_get_id("Tile_wall");
global.tl_objects = layer_tilemap_get_id("Tile_objects");
