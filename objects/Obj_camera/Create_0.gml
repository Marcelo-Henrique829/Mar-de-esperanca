resolution_width = 2560 // resolução padrão
resolution_height = 1440// resolução padrão
resolution_def_scale = 0.7 //scala da resolução da camera
resolution_scale = resolution_def_scale
global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera
alvo = obj_player; //definindo o alvo da camera
vel_cam = 0.2 //velocidade na qual a camera segue o personagem(só pra ficar bonitinho msm)



surface_resize(application_surface, floor( global.view_width * resolution_scale),floor(global.view_height * resolution_scale)) //aplicando a resolução pra superficie do jogo

show_debug_overlay(1)