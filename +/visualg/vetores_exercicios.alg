algoritmo "Vetores"

var
exercicio: caractere;

// variáveis exercício 1
A: vetor[0..4] de inteiro;
B: vetor[0..4] de inteiro;
i: inteiro;

// variáveis exercício 2
vetor_reais: vetor[0..9] de real;
soma: real;

// variáveis exercício 3
cores: vetor[0..4] de caractere;

// variáveis exercício 4
vetor_inteiros: vetor[0..4] de inteiro;

inicio
    repita
        escreva("[1] [2] [3] [4] [x]\n>>> ");
        leia(exercicio);
        escolha exercicio
        caso "1"
            // Exercício 1
            // faça um programa que leia 5 valores inteiros para um vetor A
            // e crie um vetor B que deve ser o dobro de A
            // o programa deve imprimir o vetor B na tela
            escreva("\nExercício 1\n");
            para i de 0 ate 4 faca
                escreva("Digite um número: ");
                leia(A[i]);
                B[i] <- A[i] * 2;
            fimpara
            escreva("\n");
            i := 0;
            para i de 0 ate 4 faca
                escreval("Vetor B[",i,"]: ", B[i]);
            fimpara
        caso "2"
            i := 0;
            // Exercício 2
            // faça um programa que leia 10 valores reais para um vetor
            // calcule e imprima a soma desses valores
            escreva("\nExercício 2\n");
            para i de 0 ate 9 faca
                escreva(i, " digite um número: ");
                leia(vetor_reais[i]);
            fimpara
            i := 0;
            para i de 0 ate 9 faca
                soma <- soma + vetor_reais[i];
            fimpara
            escreval("\nSoma: ", soma);
        caso "3"
            // Exercício 3
            // faça um programa que inicialize um vetor de cadeia com as cores:
            // azul, rosa, verde, roxo e preto
            escreva("\nExercício 3\n");
            cores[0] <- "azul";
            cores[1] <- "rosa";
            cores[2] <- "verde";
            cores[3] <- "roxo";
            cores[4] <- "preto";
            repita
                escreva("Digite um valor entre 0 e 4 para revelar a cor referente [5]: ");
                leia(i);
                se (i >= 0) e (i <= 4) entao
                    escreval("Cor: ", cores[i]);
                senao
                    interrompa
                fimse
            ate i = 5
        caso "4"
            i := 0;
            // Exercício 4
            // faça um programa que leia 5 valores inteiros para um vetor
            // e imprima cada valor multiplicado pelo índice da posição que ele ocupa
            escreva("\nExercício 4\n");
            para i de 0 ate 4 faca
                escreva("Digite um número: ");
                leia(vetor_inteiros[i]);
            fimpara
            i := 0;
            para i de 0 ate 4 faca
                escreval(vetor_inteiros[i], " x ", i, " = ", vetor_inteiros[i] * i)
            fimpara
        caso "x"
            interrompa;
        outrocaso
            escreval("Opção inválida.");
        fimescolha
        escreva("\n");
    ate exercicio = "x"
fimalgoritmo