/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

draw_set_halign(1);

draw_set_valign(1);

draw_text(x,y - sprite_height, state);

draw_set_halign(-1);

draw_set_valign(-1);

draw_circle(locpl_x,locpl_y, 16, false);

draw_circle(x,y,campo_visao, true);
