/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

locpl_x = 0;
locpl_y = 0;
campo_visao = 650;
state = noone;
tempo_state = room_speed*3;
tempo = tempo_state;
alvo = noone;

olhando = function()
{
	var _player = collision_circle(x,y,campo_visao, obj_player, false, true)


	if (_player)
	{
		alvo = _player
		state = "dialogo"
	}

}


controla_state = function(){
	switch(state){
	
		case noone:
				image_blend = c_blue;
				tempo--;
	
			if (tempo<=0){
				tempo = tempo_state;
			}
			olhando();
		
			break;
	
		case "dialogo":
	
			if(alvo){
	
				locpl_x = alvo.x;
				locpl_y = alvo.y;
	
			}
			else{
		
				state = noone
				locpl_x = 0;
				locpl_y = 0;
		
			}
	
			image_blend = c_orange;
		
			var _dist = point_distance(x,y,locpl_x,locpl_y);

			if(_dist > campo_visao + 70){
					alvo = noone;
					tempo = tempo_state;
					locpl_x = 0;
					locpl_y = 0;

				}
			
			olhando();
			break;
	
		
	}
}