/// @description Insert description here
// You can write your code in this editor


switch(room)
{
	case rm_test :
	{
		if(global.room_position.rm_test.X!=false or global.room_position.rm_test.Y!=false)
		{
			x = global.room_position.rm_test.X 
			y = global.room_position.rm_test.Y +10
		}
		
	}
	break;
	case rm_loja_entrada :
	{
		if(global.room_position.rm_loja_entrada.X!=false or global.room_position.rm_loja_entrada.Y!=false)
		{
			x = global.room_position.rm_loja_entrada.X 
			y = global.room_position.rm_loja_entrada.Y
		}
		
	}
	break;
}

if(!instance_exists(Obj_control)) instance_create_layer(x,y,layer,Obj_control)
#region movimentação
	hspd = 0;
	vspd = 0;
	spd = 0;
	def_spd = 40;
	
	
	
	dir = 0;
	dir_state = "none";
	last = vk_nokey;
	
#endregion


state = "iddle";
global.tl_wall = layer_tilemap_get_id("Tile_wall");
global.tl_objects = layer_tilemap_get_id("Tile_objects");



switch_room = function()
{
    var _target = instance_place(x,y,obj_room_switch)
    if(_target!=noone)
    {
        room_goto(_target.target_room)
        x = _target.target_x
        y = _target.target_y
    
    }
    
}

