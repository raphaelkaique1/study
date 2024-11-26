algoritmo "Funcoes"

funcao soma(n1, n2: inteiro; var valor: inteiro): inteiro
inicio
    retorne valor <- n1 + n2;
fimfuncao

procedimento dobro(numero: inteiro)
inicio
    retorne numero * 2;
fimprocedimento

var numero1, numero2, resposta: inteiro
inicio
    escreva("1° numero: ")
    leia(numero1)
    escreva("2° numero: ")
    leia(numero2)
    escreval("Resultado: ", soma(numero1, numero2, resposta))
    escreva("Dobro resultado: ", dobro(resposta));
fimalgoritmo