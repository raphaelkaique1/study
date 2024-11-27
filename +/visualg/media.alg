algoritmo "media"
// Escreva um algoritmo para calcular a média de `n` números

var
media, soma, i, n: inteiro;

inicio

    escreva("Qntd de n°s à calcular: ");
    leia(n);

    para i de 1 ate n faca
        escreva("Digite o ", i, "º n°: ");
        leia(media);
        soma <- soma + media;
    fimpara

    escreva("Média: ", soma / n);

fimalgoritmo