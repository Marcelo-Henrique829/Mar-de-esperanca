var cam_x = camera_get_view_x(view_camera[0]); //pegando o x da camera
var cam_y = camera_get_view_y(view_camera[0]); //pegando o y da camera
var cam_w = camera_get_view_width(view_camera[0]); //pegando a largura da camera
var cam_h = camera_get_view_height(view_camera[0]); // pegando a aultura da camera

if (!surface_exists(surf)) {
    surf = surface_create(cam_w, cam_h);
}

surface_set_target(surf);
draw_clear_alpha(c_black, 0.5);

    gpu_set_blendmode(bm_subtract);
        draw_circle(mouse_x - cam_x,mouse_y - cam_y,512+irandom(100),0)
    gpu_set_blendmode(bm_normal);

with (obj_luz) {
    var draw_x = x - cam_x;
    var draw_y = y - cam_y;

    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(sprite_index, image_index, draw_x, draw_y, image_xscale, image_yscale, image_angle, c_white, 1);
    gpu_set_blendmode(bm_normal);
}

surface_reset_target();
draw_surface(surf, cam_x, cam_y); //desenhando uma camada escura na "lente" da camera