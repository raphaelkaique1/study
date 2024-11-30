algoritmo "MatrizesExercicio"

funcao entrada(): inteiro
var
    matriz: vetor[0..1, 0..1] de inteiro;
    coluna, linha: inteiro
inicio
    para linha de 0 ate 1 faca
        para coluna de 0 ate 1 faca
            repita
                escreva("Digite um número inteiro: ");
                leia(matriz[linha, coluna]);
            ate (matriz[linha, coluna] <= 0) ou (matriz[linha, coluna] > 0)
        fimpara
    fimpara
    retorne matriz;
fimfuncao

procedimento saida(matriz: inteiro);
var l, c: inteiro;
inicio
    para l de 0 ate 1 faca
        para c de 0 ate 1 faca
            escreva(" ", matriz[l, c]);
        fimpara
        escreva("\n");
    fimpara
fimprocedimento

inicio
    saida(entrada());
fimalgoritmo