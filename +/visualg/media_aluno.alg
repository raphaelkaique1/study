algoritmo "MediaAluno"
// Escreva um algoritmo para calcular a média de um aluno a partir de 2 notas.
// O programa deve exibir a média e também uma mensagem informando se o aluno foi
// aprovado ou reprovado.
// O aluno é reprovado se sua média for inferior a 6

var
notas: vetor[1..2] de real;
media: real;
i: inteiro;

inicio

    para i de 1 ate 2 faca
        escreva("Digite a ", i, "ª nota: ");
        leia(notas[i]);
    fimpara

    media <- (notas[1] + notas[2]) / 2;

    se media >= 9 entao
        escreva("\nMédia: ", media, " - Aprovado: A\n");
    senao
        se media >= 7 entao
            escreva("\nMédia: ", media, " - Aprovado: B\n");
        senao
            se media >= 6 entao
                escreva("\nMédia: ", media, " - Aprovado: C\n");
            senao
                se (media < 6) e (media >= 4) entao
                    escreva("\nMédia: ", media, " - Recuperação: D\n");
                senao
                    escreva("\nMédia: ", media, " - Reprovado: F\n");
                fimse
            fimse
        fimse
    fimse

fimalgoritmo