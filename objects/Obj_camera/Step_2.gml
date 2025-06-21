



camera_set_view_size(view_camera[0],global.view_width, global.view_height); //aplicando o tamanho definido para a camera
surface_resize(application_surface, global.view_width * resolution_scale,global.view_height * resolution_scale) //aplicando a resolução pra superficie do jogo

//if (instance_exists(alvo)){
	 	var x1 = x - global.view_width / 2; //variavel que vai seguir o x do jogador
		var y1 = y - global.view_height / 2; //variavel que vai seguir o y do jogador
		
		x1 = clamp(x1, 0, room_width - global.view_width); //c lamp pra limitar o x da camera
		y1 = clamp(y1, 0, room_height - global.view_height); //clamp pra limitar o y da camera
		
		var cx = camera_get_view_x(view_camera[0]) //pegando o x da camera
		var cy = camera_get_view_y(view_camera[0]) //pegando o y da camera
		
		camera_set_view_pos(view_camera[0], lerp(cx, x1, vel_cam) , lerp(cy, y1, vel_cam)); //comando que vai fazer a camera seguir o jogador
		
//}


