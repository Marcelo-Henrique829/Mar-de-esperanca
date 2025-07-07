 var i = global.inputs;
scr_inputs(1)

// Verifica se o ENTER foi pressionado
if (i.enter) {
    if (index == 0) {
        room_goto_next(); // Vai para a próxima sala se a opção selecionada for a primeira
    }
    if (index == 1) {
        // Nenhuma ação definida para essa opção
    }
    if (index == 2) {
        game_end(); // Encerra o jogo se a opção for "Sair"
    }
}

// Verifica se o jogador pressionou para cima
if (i.up_p) {
    index--; // Move para a opção anterior

    if (index < 0) {
        index = op_max - 1; // Volta para a última opção se passar do início
    }
}

// Verifica se o jogador pressionou para baixo
if (i.down_p) {
    index++; // Move para a próxima opção

    if (index > op_max - 1) {
        index = 0; // Volta para a primeira opção se passar do final
    }
}
