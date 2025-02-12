algoritmo "Matrizes"

var
linha, coluna: inteiro;

// variáveis exercício 1
matriz: vetor[0..3, 0..1] de caractere;
rank, nome, p: caractere;
i, r, n, m: inteiro;

// variáveis exercício 2
A: vetor[0..2, 0..1] de inteiro;
B: vetor[0..2, 0..1] de inteiro;

// variáveis exercício 3
matriz_int: vetor[0..1, 0..3] de inteiro;

// variáveis exercício 4
matriz_real: vetor[0..3, 0..3] de real;

inicio
    repita
        escreva("[0] [1] [2] [3] [4]: ");
        leia(r);
        escolha r
        caso 1
            // Exercício 1
            // faça uma matriz de ranqueamento
            escreval("RANK\n");
            i := 1;
            para coluna de 0 ate 1 faca
                para linha de 0 ate 3 faca
                    se linha = 0 entao
                        escreva("Apelido: ");
                        leia(nome);
                        matriz[linha, coluna] <- nome;
                    senao
                        escreva("ESTADO: ");
                        leia(rank);
                        matriz[linha, coluna] <- rank;
                    fimse
                fimpara
                escreva("\n");
            fimpara
            escreva("\n");
            para linha de 0 ate 3 faca
                para coluna de 0 ate 1 faca
                    escreva("   ", matriz[linha, coluna]);
                fimpara
                se i < 4 entao
                    escreva("\n", i, "º");
                    i <- i + 1;
                fimse
            fimpara
        caso 2
            // Exercício 2
            // faça um programa que leia 6 valores inteiros para uma matriz A[3, 2]
            // então crie e imprima uma matriz B[3, 2] que é o dobro da matriz A
            para linha de 0 ate 2 faca
                para coluna de 0 ate 1 faca
                    escreva("Digite um valor para posição [linha: ", linha, ", coluna: ", coluna, "]: ");
                    leia(A[linha, coluna]);
                    B[linha, coluna] <- A[linha, coluna] * 2;
                fimpara
            fimpara
            escreva("\n");
            para linha de 0 ate 2 faca
                para coluna de 0 ate 1 faca
                    escreva(" [", linha, ", " , coluna, "]: ", B[linha, coluna]);
                fimpara
                escreva("\n")
            fimpara
        caso 3
            // Exercício 3
            // faça um programa que leia 6 valores inteiro para uma matriz[2, 3]
            // calcule e imprima a soma desses valores
            para linha de 0 ate 1 faca
                para coluna de 0 ate 2 faca
                    escreva("Digite um valor para posição [linha: ", linha, ", coluna: ", coluna, "]: ");
                    leia(matriz_int[linha, coluna]);
                fimpara
            fimpara
            para linha de 0 ate 1 faca
                para coluna de 0 ate 2 faca
                    i <- matriz_int[linha, coluna] + i;
                fimpara
            fimpara
            escreval("Soma: ", i);
        caso 4
            // Exercício 4
            // escreva um programa que leia uma matriz[4, 4]
            // e imprima a soma da sua diagonal
            i := 0;
            para linha de 0 ate 3 faca
                para coluna de 0 ate 3 faca
                    escreva("Digite um valor para posição [linha: ", linha, ", coluna: ", coluna, "]: ");
                    leia(matriz_real[linha, coluna]);
                    // se linha = coluna entao
                    //     matriz_real[linha, coluna] <- 2;
                    // senao
                    //     matriz_real[linha, coluna] <- 0;
                    // fimse
                fimpara
            fimpara
            repita
                escreva("Escolha o sentido da diagonal: [i/f]: ");
                leia(p);
            ate (p = "i") ou (p = "f")
            se p = "i" entao
                n <- 0;
                m <- 3;
            senao
                n <- 3;
                m <- 0;
            fimse
            para linha de n ate m faca
                para coluna de n ate m faca
                    se linha = coluna entao
                        i <- i + matriz_real[linha, coluna];
                    fimse
                fimpara
            fimpara
            escreva("Soma diagonal: ", i);
        outrocaso
            interrompa;
        fimescolha
        escreval("\n");
    ate r = 0
fimalgoritmo