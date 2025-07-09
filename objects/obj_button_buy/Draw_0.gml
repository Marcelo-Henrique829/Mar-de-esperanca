draw_sprite_ext(sprite_index,image_index,x,y,x_scale,y_scale,0,c_white,1)

var _txt = string(txt)



draw_set_font(fnt_ui)
draw_set_halign(1)
draw_set_valign(1)

	draw_text_transformed(x,y,_txt,x_scale,y_scale,image_angle)

draw_set_halign(-1)
draw_set_valign(-1)

