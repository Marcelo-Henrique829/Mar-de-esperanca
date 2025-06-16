#region variáveis e informações necessárias para desenhar o menu

draw_set_font(Font1);

var mx = mouse_x;
var my = mouse_y;

var dist = 90; // distância entre os textos
var gui_horiz = display_get_gui_width();
var gui_vert = display_get_gui_height();

var x1 = gui_horiz / 2; // posição horizontal central
var y1 = gui_vert / 2;  // posição vertical central

#endregion

#region desenhando o menu

for (var i = 0; i < op_max; i++) {
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	// Verifica se a opção está selecionada ou o mouse está sobre ela
	if (index == i || point_in_rectangle(mx, my, x1 - dist/2, y1 - dist/2 + dist * i, x1 + dist/2, y1 + dist/2 + dist * i)) {
		
		draw_set_color(c_yellow);
		esc[i] = lerp(esc[i], 1.4, 0.15); // aumenta o tamanho
		rot = lerp(rot, 15, 0.15);       // adiciona rotação

		// Se clicar com o botão esquerdo do mouse
		if (mouse_check_button_pressed(mb_left)) {
			switch (opcoes[i]) {
				case opcoes[0]: // Novo Jogo
					room_goto_next();
					break;

				case opcoes[1]: // Controles
					break;

				case opcoes[2]: // Sair
					game_end();
					break;
			}
		}
		
	} else {
		draw_set_color(-1);              // cor padrão
		esc[i] = lerp(esc[i], 1, 0.15);  // volta ao tamanho normal
		rot = 0;                         // sem rotação
	}

	// Desenha o texto com escala e rotação
	draw_text_transformed(x1, y1 + (dist * i), opcoes[i], esc[i], esc[i], rot);
}

draw_set_font(-1);

#endregion
