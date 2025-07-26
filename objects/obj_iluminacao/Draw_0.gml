var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

if (!surface_exists(global.surf)) {
    global.surf = surface_create(cam_w, cam_h);
}

surface_set_target(global.surf);



draw_clear_alpha(c_black, 0.9);

with (obj_luz) {
    
    depth = room_height
    
    gpu_set_blendmode(bm_subtract)
    
        draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,image_xscale,image_yscale,0,c_white,1)
        
    gpu_set_blendmode(bm_normal)

	
}








surface_reset_target();
draw_surface(global.surf, cam_x, cam_y);