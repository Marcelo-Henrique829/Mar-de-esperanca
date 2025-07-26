/// @description Insert description here
// You can write your code in this editor

alvo = -4
escala = 1;
cam_w = 3456
cam_h = 1944
resolution_w = 1920
resolution_h = 1080


surface_resize(application_surface, resolution_w,resolution_h) //aplicando a resolução pra superficie do jogo
camera_set_view_size(view_camera[0],cam_w,cam_h)




zoom = function()
{
    
    //definindo o tamananho da view
    camera_set_view_size(view_camera[0],cam_w*escala,cam_h *escala)
    
    if(mouse_wheel_down())
    {
            escala += .1
    }else  if(mouse_wheel_up()){
    	
        escala -= .1
        
    }
    
    
}




follow_nothing = function()
{
    
    alvo = noone
    
}

follow_target = function()
{
    //pegando o tamanho da camera
    
        var _view_w = cam_w
        var _view_h = cam_h
    
    //definindo a posição da camera
    
    var _cam_x = x-_view_w/2
    var _cam_y = y- _view_h/2
    
     //limitando a posição da camera
         _cam_x = clamp(_cam_x,0,room_width - _view_w)
         _cam_y = clamp(_cam_y,0,room_height - _view_h)
    
    
    
    camera_set_view_pos(view_camera[0],_cam_x,_cam_y)
    
   
    
    x = lerp(x,alvo.x,0.1)
    y = lerp(y,alvo.y,0.1)
        
}
 
follow_player = function()
{
        if(instance_exists(obj_player))
        {
            alvo = obj_player
            
        }else {
        	
            estado = follow_nothing;
            
        }
    
    if(keyboard_check_released(vk_space)) estado = follow_other;
    follow_target()
  
    
    
}


follow_other = function()
{
        if(instance_exists(obj_house_1))
        {
            alvo = obj_house_1
            
        }else {
        	
            estado = follow_nothing;
            
        }
    
    if(keyboard_check_released(vk_space)) estado = follow_player;
    follow_target()
  
    
    
}

estado = follow_player;

