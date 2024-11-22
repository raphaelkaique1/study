algoritmo "ComandosEOperadores"
// Exercícios
// 1 - Faça um algoritmo que receba dois números e ao final mostre a soma, subtração, multiplicação e a divisão dos números lidos.
// 2 - Escrever um algoritmo para determinar o consumo médio de um automóvel sendo fornecida a distância total percorrida pelo automóvel e o total de combustível gasto.

// Funções
// Quando usar cada tipo?
// Função sem parâmetros: Usada quando a operação pode ser feita com valores internos ou globais, ou quando não há necessidade de interação com o resto do código.
// Função com parâmetros: Usada quando a operação precisa de entradas externas para ser realizada.
// Função sem retorno: Usada quando a operação apenas modifica o estado temporáriamente ou imprime resultados, sem necessidade de repassar o valor para o resto do código.
// Função com retorno: Usada quando é necessário calcular um valor e utilizá-lo posteriormente no código.
funcao adicao(mais_numero_1, mais_numero_2: real): real
var
// variável local
resultado: real;
inicio
    escreva("\n--- ADIÇÃO ---\n");
    resultado <- mais_numero_1 + mais_numero_2;
    escreval(mais_numero_1, " + ", mais_numero_2, " = ", resultado);
fimfuncao

funcao subtracao(menos_numero_1, menos_numero_2: real): real
inicio
    escreva("\n--- SUBTRAÇÃO ---\n");
    escreval(menos_numero_1, " - ", menos_numero_2, " = ", menos_numero_1 - menos_numero_2);
fimfuncao

funcao multiplicacao(vezes_numero_1, vezes_numero_2: real): real
inicio
    escreva("\n--- MULTIPLICAÇÃO ---\n");
    retorne vezes_numero_1 * vezes_numero_2;
fimfuncao

funcao divisao: real
inicio
    escreva("\n--- DIVISÃO ---\n");
    retorne numeros[1] / numeros[2];
fimfuncao

funcao modulo: real
inicio
    escreva("\n--- MÓDULO ---\n");
    escreval(numeros[1], " % ", numeros[2], " = ", numeros[1] % numeros[2]);
fimfuncao

funcao primo: inteiro
var
iterador, contador, controle: inteiro
inicio
    contador <- 0;
    escreva("\n--- PRIMO ---\n");

    se (numeros[1] <= 1) e (numeros[2] <= 1) entao
        iterador <- 2
        escreval("Nenhum número primo.")
    senao
        para controle de 1 ate 2 faca
            para iterador de 1 ate numeros[controle] faca
                se (numeros[controle] % iterador = 0) entao
                    contador <- contador + 1
                fimse
                se (contador = 2) e (numeros[controle] = iterador) entao
                    escreval(numeros[controle], " é primo.")
                    contador <- 0
                senao
                    se (contador <> 2) e (numeros[controle] = iterador) entao
                        escreval(numeros[controle], " não é primo.")
                        contador <- 0;
                    fimse
                fimse
            fimpara
        fimpara
    fimse
fimfuncao

funcao fator: real
var
controle, iterador, armazena, resultado: inteiro;
retorno: vetor[1..2] de inteiro
inicio
    escreva("\n--- FATORIAL ---\n");
    armazena := 1;
    resultado := 1;
    para controle de 1 ate 2 faca
        para iterador de numeros[controle] ate 1 faca
            armazena <- iterador * armazena;
        fimpara
        retorno[controle] <- armazena;
        armazena := 1;
    fimpara
    retorne retorno;
fimfuncao

funcao potencia: real
inicio
    escreva("\n--- POTENCIAÇÃO ---\n");
    retorne numeros[1] ^ numeros[2];
fimfuncao

funcao raiz(raiz_numero_1, raiz_numero_2: real): real
var resultado: real;
inicio
    escreva("\n--- RAIZ ---\n");
    retorne resultado <- raiz_numero_1 ^ (1 / raiz_numero_2);
fimfuncao

funcao calculadora: caractere
var
exibir: inteiro;
dividir: real;
fatoracao: vetor[1..2] de real;
inicio
    escreva("\n--- CALCULADORA SIMPLES ---\n[a] [+] [-] [*] [/] [%] [~] [!] [^] [@] [?] [x] >>> ");
    leia(opcao);
    escolha opcao
        caso "+"
            // adição: função com parâmetros sem retorno imprimindo resultado armazenado em variável.
            adicao(numeros[1], numeros[2]);
        caso "-"
            // subtração: função com parâmetros sem retorno operando e imprimindo o resultado durante a saída.
            subtracao(numeros[1], numeros[2]);
        caso "*"
            // multiplicação: função com parâmetros e com retorno operando e imprimindo o resultado durante a saída.
            escreval(numeros[1], " * ", numeros[2], " = ", multiplicacao(numeros[1], numeros[2]));
        caso "/"
            // divisão: função sem parâmetros com retorno imprimindo resultado armazenado em variável.
            escreval(numeros[1], " / ", numeros[2], " = ", dividir <- divisao());
        caso "%"
            // módulo: função sem parâmetros e sem retorno operando e imprimindo o resultado durante a saída.
            modulo();
        caso "~"
            // primo: função sem parâmetros e sem retorno imprimindo resultado da operação.
            primo();
        caso "!"
            // fatorial: função sem parâmetros com retorno imprimindo resultado armazenado em vetor.
            fatoracao := fator();
            exibir := 1;
            para exibir de 1 ate 2 faca
                escreval(numeros[exibir], ": ", fatoracao[exibir]);
            fimpara
        caso "^"
            // potenciação: função sem parâmetros com retorno operando e imprimindo o resultado durante a saída.
            escreval(numeros[1], " ^ ", numeros[2], " = ", potencia());
        caso"@"
            // raiz: função com parâmetros e com retorno imprimindo resultado armazenado em variável.
            escreval(numeros[2], "√", numeros[1], " = ", raiz(numeros[1], numeros[2]));
        caso "?"
            // Permite o usuário alterar os valores de entrada.
            calculo("?");
        caso "a"
            // realiza proposta inicial do exercício
            adicao(numeros[1], numeros[2]);
            subtracao(numeros[1], numeros[2]);
            escreval(numeros[1], " * ", numeros[2], " = ", multiplicacao(numeros[1], numeros[2]));
            escreval(numeros[1], " / ", numeros[2], " = ", divisao <- divisao());
        caso "x"
            // "fecha" a calculadora.
            interrompa;
        outrocaso
            invalido();
            calculadora();
    fimescolha
fimfuncao

funcao entrada(valor: caractere): real
inicio
    se valor = "0" entao
        para iterador de 1 ate 2 faca
            escreva("Digite o ", iterador,"º número: ");
            leia(numeros[iterador]);
            se numeros[iterador] <= 0 ou numeros[iterador] >= 0 entao
                verdadeiro;
            senao
                invalido();
                entrada("0");
            fimse
        fimpara
    senao
        escreva("\nEscolha a alteração: [1] [2] [a] [x] >>> ");
        leia(valor);
        escolha valor
        caso "1"
            escreva("Digite o 1º número: ");
            leia(numeros[1]);
        caso "2"
            escreva("Digite o 2º número: ");
            leia(numeros[2]);
        caso "a"
            entrada("0");
        caso "x"
            escreval("Cancelado.");
            interrompa;
        outrocaso
            invalido();
            entrada(".");
        fimescolha
    fimse
fimfuncao

procedimento repete
var resposta: caractere;
inicio
    se opcao = "x" entao
        interrompa;
    senao
        escreva("\nDeseja realizar novo cálculo? [s/n] >>> ");
        leia(resposta);
        escolha resposta
            caso "s"
                calcular();
            caso "n"
                interrompa;
            outrocaso
                invalido();
                repete();
        fimescolha
    fimse
fimprocedimento

procedimento calculo(escolhe: caractere)
inicio
    entrada(escolhe);
    calculadora();
fimprocedimento

procedimento calcular
inicio
    calculo("0");
    repete();
fimprocedimento

procedimento invalido
inicio
    escreva("\nOpção inválida, tente novamente.\n");
fimprocedimento

var
    // variáveis globais
    opcao: caractere;
    iterador: inteiro;
    //vetor
    numeros: vetor[1..2] de real
inicio
    // Resolução Exercício 1
    calcular();

    // Resolução Exercício 2
fimalgoritmo