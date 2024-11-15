algoritmo "algoritmo"

// fatorial: função sem parâmetros com retorno operando e imprimindo o resultado durante a saída.
funcao fator: real
var iterador, armazena: inteiro;
inicio
    escreval("\n--- FATORIAL ---");
    // TODO: cálculo
    // 5!=5×4×3×2×1=120
    armazena <- 1;
    para iterador de numeros[2] ate 1 faca
        armazena <- iterador * armazena;
    fimpara
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
    fator();
fimalgoritmo