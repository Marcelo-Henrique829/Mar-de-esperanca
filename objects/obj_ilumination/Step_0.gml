/// @description Insert description here
// You can write your code in this editor
// Step Event (garante que a surface tem o tamanho correto)

if (surface_exists(surf)) {
    if (surface_get_width(surf) != camera_get_view_width(view_camera[0]) || surface_get_height(surf) != camera_get_view_height(view_camera[0])) {
        surface_free(surf);
        surf = -1;
    }
}