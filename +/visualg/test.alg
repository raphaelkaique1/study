algoritmo "algoritmo"

funcao entrada(): real
inicio
    para iterador de 1 ate 2 faca
        escreva("Digite o ", iterador,"º número: ");
        leia(numeros[iterador]);
        se numeros[iterador] <= 0 ou numeros[iterador] >= 0 entao
            verdadeiro;
        senao
            invalido();
            entrada();
        fimse
    fimpara
fimfuncao

procedimento invalido
inicio
    escreva("\nOpção inválida, tente novamente.\n");
fimprocedimento

var
// msg: caractere;
numeros: vetor[1..2] de real
iterador: inteiro
inicio
    // msg <- "Hello world!";
    // escreval(msg);

    entrada();

    para iterador de 1 ate 2 faca
        escreval("números[iterador]: ", numeros[iterador])
    fimpara

fimalgoritmo