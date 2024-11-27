algoritmo "Idade"
// Escreva um algoritmo para calcular a média de `n` números

var
idade, soma, i, n: inteiro;

inicio

    escreva("Qntd de n°s à calcular: ");
    leia(n);

    para i de 1 ate n faca
        escreva("Digite o ", i, "º n°: ");
        leia(idade);
        soma <- soma + idade;
    fimpara

    escreva("Média: ", soma / 10);

fimalgoritmo