// Script assets have changed for v2.3.0



// Estrutura global para armazenar os inputs do jogador
global.inputs = {
	left: false,       // Tecla "A" segurada
	right: false,      // Tecla "D" segurada
	up: false,         // Tecla "W" segurada
	down: false,       // Tecla "S" segurada
	attack: false,     // Botão esquerdo do mouse pressionado OU tecla "J"
	dash: false,       // Tecla "Espaço" pressionada
	run: false,        // Tecla "Shift" segurada
	aim: false,        // Tecla "Control" OU botão direito do mouse
	enter: false,      // Tecla "enter" OU botão esquerdo do mouse
	esc: false,
	
	
	// "_p" indica que a tecla foi pressionada neste frame (press)
	left_p: false,
	right_p: false,
	up_p: false,
	down_p: false
}

// Função que atualiza os inputs
function scr_inputs(_bool) {
	if (!_bool) return; // Se _bool for falso, sai da função

	var _i = global.inputs; // Referência para facilitar a escrita
 
	// Direcionais seguradas
	_i.left  = keyboard_check(ord("A"));
	_i.right = keyboard_check(ord("D"));
	_i.up    = keyboard_check(ord("W"));
	_i.down  = keyboard_check(ord("S"));

	// Ações
	_i.attack = mouse_check_button_pressed(mb_left) || keyboard_check(ord("J")); // ataque com mouse ou J
	_i.dash   = keyboard_check_pressed(vk_space); // dash com Espaço (só no frame em que foi pressionado)
	_i.run    = keyboard_check(vk_shift);         // correr com Shift
	_i.aim    = keyboard_check(vk_control) ||  mouse_check_button(mb_right); // mirar com Ctrl ou botão direito do mouse
	_i.enter    = keyboard_check_pressed(vk_enter) ||  mouse_check_button_pressed(mb_left); // botões para interagir
	_i.esc = keyboard_check_pressed(vk_escape)

	// Direcionais pressionadas neste frame
	_i.left_p  = keyboard_check_pressed(ord("A"));
	_i.right_p = keyboard_check_pressed(ord("D"));
	_i.up_p    = keyboard_check_pressed(ord("W"));
	_i.down_p  = keyboard_check_pressed(ord("S"));
}
