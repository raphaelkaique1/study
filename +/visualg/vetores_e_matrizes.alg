algoritmo "VetoresEMatrizes"

var
// Matriz
matriz: vetor[0..2, 0..2] de inteiro;
i, linha, coluna: inteiro;

// Exercício
// crie um cadastro de nome e sobre nome
pessoa: vetor[0..2, 0..1] de caractere;
nome_sobrenome: caractere;

inicio
    para linha de 0 ate 2 faca
        para coluna de 0 ate 2 faca
            escreva("Digite um valor para posição [linha: ", linha, ", coluna: ", coluna, "]: ");
            leia(matriz[linha, coluna]);
        fimpara
    fimpara
    escreva("\n");
    para linha de 0 ate 2 faca
        para coluna de 0 ate 2 faca
            escreva("  Matriz[linha: ", linha, ", coluna: ", coluna, "]: ", matriz[linha, coluna]);
        fimpara
        escreva("\n");
    fimpara
    escreval("\n      colunas");
    para linha de 0 ate 2 faca
        escreva("linha ");
        para coluna de 0 ate 2 faca
            escreva(" ", matriz[linha, coluna]);
        fimpara
        escreva("\n");
    fimpara
    escreval("\nCADASTRO PESSOAS\n");
    // Exercício
    i := 0;
    linha := 0;
    coluna := 0;
    para linha de 0 ate 2 faca
        para coluna de 0 ate 1 faca
            se coluna > i entao
                //escreva(linha, " ", coluna, " Sobrenome: ");
                escreva("Sobrenome: ");
            senao
                // escreva(linha, " ", coluna, " Nome: ");
                escreva("Nome: ");
            fimse
            leia(nome_sobrenome);
            pessoa[linha, coluna] <- nome_sobrenome;
            i <- coluna;
        fimpara
            escreva("\n");
    fimpara
    escreva("\nPESSOAS\n");
    para linha de 0 ate 2 faca
        para coluna de 0 ate 1 faca
            escreva(pessoa[linha, coluna], " ");
        fimpara
        escreva("\n");
    fimpara

fimalgoritmo