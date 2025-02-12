algoritmo "Funcoes"

funcao soma(n1, n2: inteiro; var valor: inteiro): inteiro
inicio
    retorne valor <- n1 + n2;
fimfuncao

funcao subtracao(&primeiro_numero, &segundo_numero: inteiro): inteiro
inicio
    retorne primeiro_numero - segundo_numero;
fimfuncao

procedimento dobro(numero: inteiro)
inicio
    retorne numero * 2;
fimprocedimento

var numero1, numero2, resposta: inteiro
inicio
    escreva("1° numero: ");
    leia(numero1);
    escreva("2° numero: ");
    leia(numero2);
    escreva("\n");
    escreval("Adição: ", soma(numero1, numero2, resposta));
    escreval("Subtração: ", subtracao(numero1, numero2));
    escreval("Dobro Adição: ", dobro(resposta));
    escreval("Dobro Subtração: ", dobro(subtracao(numero1, numero2)));
fimalgoritmo