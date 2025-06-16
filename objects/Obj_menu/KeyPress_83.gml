	index++ //adiciona mais um no index, fazendo ele explorar pelas opções indo para baixo no menu
	if(index > op_max - 1){
		index = 0;
	} /*checa se o numero do index(opção selecionada) é maior do que o numero do ultimo item do vetor
		e caso ele seja, ele ira retornar o valor do index a 0 fazendo ele voltar a primeira opção do vetor*/