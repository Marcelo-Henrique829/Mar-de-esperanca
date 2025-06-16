	index--	//diminui o valor do index, fazendo ele retornar para a opção anterior do vetor
	if(index < 0){
		index = op_max-1;
	}/*checa se o numero do index(opção selecionada) é menor do que 0(que é o primeiro valor do vetor)
		e caso ele seja, ele ira fazer o valor do index ser o mesmo valor do valor maximo do vetor(representado
		pelo op_max)*/