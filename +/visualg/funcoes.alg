algoritmo "Funcoes"

funcao soma(n1, n2: inteiro): inteiro
var valor: inteiro
inicio
    retorne valor <- n1 + n2;
fimfuncao

funcao dobro(numero: inteiro): inteiro
inicio
    retorne numero * 2;
fimfuncao

var numero1, numero2, resposta: inteiro
inicio
    escreva("1° numero: ")
    leia(numero1)
    escreva("2° numero: ")
    leia(numero2)
    escreval("Resultado: ", resposta <- soma(numero1, numero2))
    escreva("Drobo resultado: ", dobro(resposta));
fimalgoritmo