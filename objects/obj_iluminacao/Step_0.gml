/// @description Insert description here
// You can write your code in this editor

if (surface_exists(global.surf)) {
    if (surface_get_width(global.surf) != camera_get_view_width(view_camera[0]) || surface_get_height(global.surf) != camera_get_view_height(view_camera[0])) {
        surface_free(global.surf);
        global.surf = -1;
    }
}