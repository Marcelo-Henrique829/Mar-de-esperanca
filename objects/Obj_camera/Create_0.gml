resolution_width = 2176 // resolução padrão
resolution_height = 1224 // resolução padrão
resolution_def_scale = 0.8//escala da resolução da camera
resolution_scale = resolution_def_scale
global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera
alvo = obj_player; //definindo o alvo da camera
vel_cam = 1 //velocidade na qual a camera segue o personagem(só pra ficar bonitinho msm)



surface_resize(application_surface, global.view_width * resolution_scale,global.view_height * resolution_scale) //aplicando a resolução pra superficie do jogo

