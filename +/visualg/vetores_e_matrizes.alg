algoritmo "VetoresEMatrizes"

var
pessoa: vetor[0..1] de caracter;
nome: caractere;
i: inteiro;

inicio
    para i de 0 ate 1 faca
        escreva("nome: ");
        leia(nome);
        pessoa[i] <- nome
    fimpara
    i := 0;
    para i de 0 ate 1 faca
        escreval("nome: ", pessoa[i]);
    fimpara
fimalgoritmo