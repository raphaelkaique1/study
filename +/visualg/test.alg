algoritmo "algoritmo"

// fatorial: função sem parâmetros com retorno operando e imprimindo o resultado durante a saída.
funcao fator: real
var iterador, armazena: inteiro;
inicio
    escreval("\n--- FATORIAL ---");
    armazena <- 1;
    para iterador de numeros[2] ate 1 faca
        armazena <- iterador * armazena;
    fimpara
    retorne armazena;
fimfuncao

var
msg: caractere;
numeros: vetor[1..2] de real
inicio
    msg <- "Hello world!";
    escreval(msg);

    //numeros[1] <- 9;
    numeros[2] <- 5;

    // fator
    escreva(fator());
fimalgoritmo