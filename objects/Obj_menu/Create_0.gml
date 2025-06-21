

opcoes = ["Novo Jogo", "Controles", "Sair"]; // Vetor que guarda as opções do menu
index = 0; // Variável que indica qual opção do vetor está selecionada
op_max = array_length(opcoes); // Guarda a quantidade de itens do vetor

esc[array_length(opcoes) - 1] = 0; // Garante que o vetor 'esc' tenha espaço até o último índice necessário

// Inicializa o vetor 'esc' com valor 1 para todas as opções
for (var i = 0; i < array_length(esc); i++) {
    esc[i] = 1;
}

rot = 0; // Variável da rotação do texto
