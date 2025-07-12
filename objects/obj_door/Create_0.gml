


 pos = 0
 player_room_position = function() //posição do player relativo a sala
 {
	switch(room)
	{
		case rm_test :
		{
			global.room_position.rm_test.X = obj_player.x
			global.room_position.rm_test.Y = obj_player.y
		}
		break;
		case rm_loja_entrada :
		{
			global.room_position.rm_loja_entrada.X = obj_player.x
			global.room_position.rm_loja_entrada.Y = obj_player.y
		}
		break;
	}
 
 }