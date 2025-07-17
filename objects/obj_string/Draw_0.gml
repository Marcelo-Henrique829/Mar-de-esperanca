/// @description Insert description here
// You can write your code in this edi

var _expression = text



show_debug_message(_expression)

draw_set_font(fnt_ui)
draw_set_halign(1)
draw_set_valign(1)

draw_text_transformed(x,y,string(_expression),image_xscale,image_yscale,0)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)


