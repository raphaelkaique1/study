algoritmo "algoritmo"

funcao entrada(valor: caractere): real
inicio
    se valor = "0" entao
        para iterador de 1 ate 2 faca
            escreva("Digite o ", iterador,"º número: ");
            leia(numeros[iterador]);
            se numeros[iterador] <= 0 ou numeros[iterador] >= 0 entao
                verdadeiro;
            senao
                invalido();
                entrada("0");
            fimse
        fimpara
    senao
        escreva("\nEscolha qual alterar: [1] [2] [a] [x] >>> ");
        leia(valor);
        escolha valor
        caso "1"
            escreva("Digite o 1º número: ");
            leia(numeros[1]);
        caso "2"
            escreva("Digite o 2º número: ");
            leia(numeros[2]);
        caso "a"
            entrada("0");
        caso "x"
            escreval("Cancelado.");
            interrompa;
        outrocaso
            invalido();
            entrada(".");
        fimescolha
    fimse
fimfuncao

procedimento invalido
inicio
    escreva("\nOpção inválida, tente novamente.\n");
fimprocedimento

procedimento start
inicio
    entrada("0");
fimprocedimento

var
// msg: caractere;
numeros: vetor[1..2] de real
iterador: inteiro
inicio
    // msg <- "Hello world!";
    // escreval(msg);

    start();

    para iterador de 1 ate 2 faca
        escreval("números[iterador]: ", numeros[iterador])
    fimpara

    entrada("1");

    para iterador de 1 ate 2 faca
        escreval("números[iterador]: ", numeros[iterador])
    fimpara

fimalgoritmo