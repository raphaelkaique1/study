algoritmo "VetoresEMatrizes"

var
pessoa: vetor[1..2] de caracter;
nome: caractere;
i: inteiro;

inicio
    para i de 1 ate 2 faca
        escreva("nome: ");
        leia(nome);
        pessoa[i] <- nome
    fimpara
    i := 0;
    para i de 1 ate 2 faca
        escreval("nome: ", pessoa[i]);
    fimpara
fimalgoritmo