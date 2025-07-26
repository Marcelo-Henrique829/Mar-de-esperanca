/// @description Insert description here
// You can write your code in this editor

draw_self()
if(hspd!=0 or vspd!=0) draw_sprite(spr_bubles,image_index,x,y)



draw_set_font(Font1)
draw_set_halign(1)
draw_set_valign(1)

    draw_text(x,y - sprite_height,string(fps)+"fps")

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)






