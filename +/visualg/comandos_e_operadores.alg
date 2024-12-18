algoritmo "ComandosEOperadores"
// Exercícios
// 1 - Faça um algoritmo que receba dois números e ao final mostre a soma, subtração, multiplicação e a divisão dos números lidos.
// 2 - Escreva um algoritmo para determinar o consumo médio de um automóvel sendo fornecida a distância total percorrida pelo automóvel e o total de combustível gasto.
// 3 - Desenvolva um algoritmo que peça um valor ao usuário e só feche quando o usuário digitar o valor 0.
// 4 - Desenvolva um algoritmo que peça valores ao usuário (quantos ele quiser) e quando ele digitar o valor 999 o programa deverá exibir a média desses valores.
// 5 - Crie um algoritmo que verifique se o copo está vazio e caso sim encha-o com a jarra.
// 6 - Escreva um algoritmo que leia 2 valores inteiros distintos e informe qual é o maior.
// 7 - Faça um algoritmo que receba um número e diga se este número está no intervalo entre 100 e 200.
// 8 - Escreva um algoritmo que leia o nome e as três notas obtidas de 3 alunos durante o semestre. Calcular a sua média (aritmética), informar o nome e sua menção.
// 9 - Faça um algoritmo para entrar com um valor inteiro e dizer a qual mês do ano ele corresponde. Se o valor for maior que doze ou menor que um, diga que o valor não corresponde a nenhum mês.
// 10 - Dado um número inteiro positivo, imprima na tela os números de 0 até n em ordem decrescente.
// 11 - Dado um número inteiro, imprima sua tabuada.
// 12 - Faça um algoritmo que receba a idade de 5 pessoas e mostre mensagem informando "maior de idade" e "menor de idade" para cada pessoa. Considere a idade a partir de 18 anos como maior de idade.
// 13 - Elabore um programa que receba 5 números e imprima somente os positivos.
// 14 - Crie um algoritmo que imprima dados um capital, uma taxa de juros (em porcentagem) mensal e um período em meses, informe o montante ao final de cada mês.
// 15 - Desenvolva um algoritmo que peça um valor ao usuário e só feche quando o usuário digitar o valor 0.
// 16 - Desenvolva um algoritmo que peça ao usuário valores entre 100 e 200, caso o usuário digite um valor fora deste limite, o sistema deve fechar e exibir a mensagem (“valor fora do alcance”).
// 17 - Ler 5 números inteiros e depois imprimi-los em ordem inversa a que foram digitados.
// 18 - Ler 10 números reais em vetor e depois exibir os números localizados nas posições impares.
// 19 - Faça um algoritmo para gerar um vetor de 10 posições, onde cada elemento corresponde ao quadrado de sua posição. Imprima depois o vetor resultante.
// 20 - Faça um algoritmo que possua 2 vetores de 5 posições, peça para os usuários popularem eles e depois some as posições equivalentes em um terceiro vetor.
// 21 - Faça um jogo da forca utilizando vetores. A palavra poderá ser definida pelo próprio programador dentro do programa e não é necessário existir um número limite de tentativas. Porém, é necessário que se exiba a palavra em cada etapa com as letras descobertas e as letras não descobertas sendo representadas com _.
// 22 - Faça um algoritmo para ler uma matriz 2X3 real e depois gerar e imprimir sua transposta (matriz 3X2 equivalente).
// 23 - Ler uma matriz 4X3 real e imprimir a soma dos elementos de uma linha L fornecida pelo usuário.
// 24 - Crie uma matriz 7X8 onde cada elemento é a soma dos índices de sua posição dentro da matriz.
// 25 - Faça um jogo da velha usando matrizes.
// 26 - Faça um algoritmo que leia 10 valores informados pelo usuário e os imprima em ordem crescente.

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

funcao porcentagem(porcento_numero_1, porcento_numero_2: real; var resposta: real): real
inicio
    escreva("\n--- PERCENTUAL ---\n");
    retorne resposta <- (porcento_numero_1 * porcento_numero_2) / 100;
fimfuncao

funcao calculadora: caractere
var
exibir: inteiro;
dividir, porcento: real;
fatoracao: vetor[1..2] de real;
inicio
    escreva("\n--- CALCULADORA SIMPLES ---\n[a] [+] [-] [*] [/] [//] [%] [~] [!] [^] [@] [?] [x] >>> ");
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
            // porcentagem: função com parâmetros e com retorno imprimindo resultado armazenado em variável por referência.
            escreval(numeros[1], "% -> ", numeros[2], " = ", porcentagem(numeros[1], numeros[2], porcento));
        caso "//"
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
        para input de 1 ate 2 faca
            escreva("Digite o ", input,"º número: ");
            leia(numeros[input]);
            se numeros[input] <= 0 ou numeros[input] > 0 entao
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

// Exercício 2
procedimento consumo_medio
var
distancia_combustivel: vetor[1..2] de real;
novamente, incorreto: caractere;
inicio
    incorreto := "Digite um número válido: ";
    repita
        escreva("\nDistância Total Percorrida (km): ");
        leia(distancia_combustivel[1]);
        se (distancia_combustivel[1] <= 0) ou (distancia_combustivel[1] > 0) entao
            verdadeiro;
        senao
            repita
                escreva(incorreto);
                leia(distancia_combustivel[1]);
            ate (distancia_combustivel[1] <= 0) ou (distancia_combustivel[1] > 0)
        fimse
        se distancia_combustivel[1] <= 0 entao
            repita
                escreva(incorreto)
                leia(distancia_combustivel[1]);
            ate distancia_combustivel[1] > 0
        fimse
        escreva("Qntd Total de Combustível Gasto (l): ");
        leia(distancia_combustivel[2]);
        se (distancia_combustivel[2] <= 0) ou (distancia_combustivel[2] > 0) entao
            verdadeiro;
        senao
            repita
                escreva(incorreto);
                leia(distancia_combustivel[2]);
            ate (distancia_combustivel[2] <= 0) ou (distancia_combustivel[2] > 0)
        fimse
        se distancia_combustivel[2] <= 0 entao
        repita
            escreva(incorreto)
            leia(distancia_combustivel[2]);
        ate distancia_combustivel[2] > 0
        fimse
        escreval("Consumo médio (km/l): ", distancia_combustivel[1] / distancia_combustivel[2]);
        escreva("\nDeseja realizar novo cálculo? [s/n]: ");
        leia(novamente);
        se (novamente <> "n") e (novamente <> "s") entao
            repita
                escreva("Escolha uma das opções válidas [s/n]: ");
                leia(novamente);
            ate (novamente = "n") ou (novamente = "s")
        fimse
    ate novamente = "n"
fimprocedimento

// Exercício 3
procedimento ate_zero
var valor: real;
inicio
    repita
        escreva("Digite um valor: ");
        leia(valor)
    ate valor = 0
fimprocedimento

// Exercício 4
procedimento media
var
valor, soma: real;
contador: inteiro;
inicio
    contador := 1
    repita
        escreva("Digite um valor: ");
        leia(valor);
        se valor = 999 entao
            contador = 999
        senao
            soma <- soma + valor
            contador <- contador + 1;
        fimse
    ate (valor = 999) ou (contador = 999)
    escreva("Média: ", soma / contador, "\nContador: ", contador)
fimprocedimento

// Exercício 5
procedimento bebida
var
copo, jarra, capacidade: inteiro;
sede: caractere;
inicio
    jarra := 2000;
    repita
        escreva("Digite capacidade do copo (ml): ");
        leia(capacidade);
        copo <- capacidade;
    ate (capacidade > 100) e (capacidade <= 1000)
    repita
        escreva("Estado do copo? [c = cheio] [v = vazio]: ");
        leia(sede);
        se sede = "v" entao
            repita
                escreva("Deseja mais bebida? [s/n]: ");
                leia(sede);
            ate (sede = "s") ou (sede = "n")
            se sede = "s" entao
                se copo < capacidade entao
                    copo <- capacidade - copo;
                fimse
                jarra <- jarra - copo;
                copo <- capacidade;
                escreval("Jarra: ", jarra, " - Copo: ", copo);
            fimse
        senao
            se sede = "c" entao
                copo <- copo / 2;
                escreval("Jarra: ", jarra, " - Copo: ", copo);
            fimse
        fimse
    ate (jarra = 0)
fimprocedimento

// Exercício 6
procedimento maior
var
nmrs: vetor[1..2] de inteiro;
I: inteiro;
inicio
    para I de 1 ate 2 faca
        repita
            escreva("Digite um valor inteiro: ");
            leia(nmrs[I]);
        ate (nmrs[I] <= 0) ou (nmrs[I] > 0)
    fimpara
    enquanto nmrs[1] = nmrs[2] faca
        escreva("Valores iguais! Digite um valor diferente: ");
        leia(nmrs[2]);
    fimenquanto
    se nmrs[1] > nmrs[2] entao
        escreva(nmrs[1], " é maior que ", nmrs[2]);
    senao
        escreva(nmrs[2], " é maior que ", nmrs[1]);
    fimse
fimprocedimento

// Exercício 7
procedimento intervalo
var nmbr: inteiro;
inicio
    repita
        escreva("Digite um número: ");
        leia(nmbr);
        se (nmbr >= 100) e (nmbr < 200) entao
            escreval("100 <= ", nmbr, " <= 200");
        senao
            escreval(nmbr);
        fimse
    ate nmbr = 0
fimprocedimento

// Exercício 8
procedimento media_aluno
var
turma: vetor[1..3, 1..4] de caractere;
lnh, cln: inteiro;
c, rsltds: caractere;
nt, md: real;
inicio
    escreva("\n");
    para lnh de 1 ate 3 faca
        para cln de 1 ate 4 faca
            se cln = 1 entao
                escreva("Nome aluno: ");
            senao
                escreva(cln - 1, "ª nota: ");
            fimse
            leia(c);
            turma[lnh, cln] <- c;
        fimpara
    fimpara
    escreva("\nAluno [1] [2] [3] [4 = todos]: ");
    leia(c);
    escreva("\n");
    se caracpnum(c) = 4 entao
        para lnh de 1 ate 3 faca
            para cln de 1 ate 4 faca
                se cln = 1 entao
                    escreva("Média ", turma[lnh, cln], ": ");
                senao
                    nt <- nt + caracpnum(turma[lnh, cln]);
                fimse
            fimpara
            md <- nt / 3;
            se md >= 7 entao
                rsltds <- "Aprovado";
            senao
                se (md >= 5.1) e (md <= 6.9) entao
                    rsltds <- "Recuperação";
                senao
                    rsltds <- "Reprovado";
                fimse
            fimse
            escreval(md, " - ", rsltds);
            md <- 0;
            nt <- 0;
        fimpara
        c <- " "
    senao
        para cln de 1 ate 4 faca
            se cln = 1 entao
                escreva("Média ", turma[caracpnum(c), cln], ": ");
            senao
                nt <- nt + caracpnum(turma[caracpnum(c), cln]);
            fimse
        fimpara
        md <- nt / 3;
        se md >= 7 entao
            rsltds <- "Aprovado";
        senao
            se (md >= 5.1) e (md <= 6.9) entao
                rsltds <- "Recuperação";
            senao
                rsltds <- "Reprovado";
            fimse
        fimse
        escreval(md, " - ", rsltds);
    fimse
fimprocedimento

// Exercício 9
procedimento calendario
var
agenda: vetor[1..12] de caractere;
mes: inteiro;
inicio
    agenda[1] <- "janeiro";
    agenda[2] <- "fevereiro";
    agenda[3] <- "março";
    agenda[4] <- "abril";
    agenda[5] <- "maio";
    agenda[6] <- "junho";
    agenda[7] <- "julho";
    agenda[8] <- "agosto";
    agenda[9] <- "setembro";
    agenda[10] <- "outrubro";
    agenda[11] <- "novembro";
    agenda[12] <- "dezembro";

    repita
        escreva("Digite o número de um mês: ");
        leia(mes);
    ate (mes >= 1) e (mes <= 12)

    escreval(mes, " - ", agenda[mes]);

fimprocedimento

// Exercício 10
procedimento decrescente
var positivo: inteiro;
inicio
    repita
        escreva("Digite um número inteiro: ");
        leia(positivo);
    ate positivo > 0
    para positivo de positivo ate 0 faca
        escreval(positivo);
    fimpara
fimprocedimento

// Exercício 11
procedimento tabuada
var tabuada, x: inteiro;
inicio
    repita
        escreva("Digite um número inteiro: ");
        leia(tabuada);
    ate (tabuada <= 0) ou (tabuada > 0)
    para x de 1 ate 10 faca
        escreval(tabuada, " x ", x, " = ", tabuada * x);
    fimpara
fimprocedimento

// Exercício 12
procedimento idade
var
pessoa: vetor[1..5, 1..3] de caractere;
util: caractere;
LIN, COL, IDD: inteiro;
inicio
    para LIN de 1 ate 5 faca
        para COL de 1 ate 3 faca
            se COL = 1 faca
                escreva("Nome: ");
                leia(util);
                pessoa[LIN, COL] <- util;
            senao
                se COL = 2 faca
                    escreva("Idade: ");
                    leia(util);
                    pessoa[LIN, COL] <- util;
                    IDD <- caracpnum(util);
                senao
                    se IDD >= 18 entao
                        util <- "Maior de idade";
                        pessoa[LIN, COL] <- util;
                    senao
                        util <- "Menor de idade";
                        pessoa[LIN, COL] <- util;
                    fimse
                fimse
            fimse
        fimpara
    fimpara
    escreva("\n");
    para LIN de 1 ate 5 faca
        para COL de 1 ate 3 faca
            escreva(pessoa[LIN, COL], " ");
        fimpara
        escreva("\n");
    fimpara
fimprocedimento

// Exercício 13
procedimento pstv
var
m: vetor[1..5] de real;
n: inteiro;
inicio
    para n de 5 ate 1 faca
        escreva(n, " Digite um número: ");
        leia(m[n]);
    fimpara
    para n de 5 ate 1 faca
        se m[n] > 0 entao
            escreval(m[n]);
        fimse
    fimpara
fimprocedimento

// Exercício 14
procedimento contabil
var
capital: real;
periodo, u: inteiro;
inicio
    repita
        escreva("\nInsira o capital: R$ ");
        leia(capital);
    ate capital > 0
    repita
        escreva("Digite o período: ");
        leia(periodo);
    ate (periodo > 0) e (periodo < 1000)
    para u de 1 ate periodo faca
        capital <- capital + (capital * 0.1)
        escreval(u, "º mês: R$ ", capital);
    fimpara

fimprocedimento

// Exercício 15
procedimento ate_fechar
var valor_final: inteiro;
inicio
    escreva("\nDigite um valor: ");
    leia(valor_final);
    enquanto valor_final <> 0 faca
        escreva("Digite 0 para fechar: ");
        leia(valor_final);
    fimenquanto
fimprocedimento

// Exercício 16
procedimento range
var valor_range: real;
inicio
    valor_range <- 100;
    escreva("\n");
    enquanto (valor_range >= 100) e (valor_range <= 200) faca
        escreva("Digite um valor entre 100 e 200: ");
        leia(valor_range);
    fimenquanto
    escreval("Valor fora de alcance.");
fimprocedimento

// Exercício 17
procedimento inverso
var
inverso: vetor[0..4] de inteiro;
inverso_i: inteiro
inicio
    escreva("\n");
    para inverso_i de 0 ate 4 faca
        escreva("Digite um valor: ");
        leia(inverso[inverso_i]);
    fimpara
    para inverso_i de 4 ate 0 faca
        escreva(inverso[inverso_i], " ");
    fimpara
fimprocedimento

// Exercício 18
procedimento realImpar
var
impar_real: vetor[0..9] de real;
ir: inteiro;
inicio
    escreva("\n");
    para ir de 0 ate 9 faca
        escreva(ir + 1, " Digite um valor: ");
        leia(impar_real[ir]);
    fimpara
    para ir de 0 ate 9 passo 2 faca
        escreva(impar_real[ir], " ");
    fimpara
fimprocedimento

// Exercício 19
procedimento vetorDobro
var
vDobro: vetor[0..9] de inteiro;
vD: inteiro;
inicio
    escreva("\n");
    para vD de 0 ate 9 faca
        vDobro[vD] <- vD ^ 2;
    fimpara
    para vD de 0 ate 9 faca
        escreva(vDobro[vD], " ");
    fimpara
fimprocedimento

// Exercício 20
procedimento vTres
var
v1, v2, v3: vetor[0..4] de inteiro;
v: inteiro;
inicio
    para v de 0 ate 4 faca
        escreva("\nVetor A: ");
        leia(v1[v]);
        escreva("Vetor B: ");
        leia(v2[v]);
        v3[v] <- v1[v] + v2[v];
    fimpara
    escreva("\n");
    para v de 0 ate 4 faca
        escreval("Vetor C: ", v3[v]);
    fimpara
fimprocedimento

// Exercício 21
procedimento forca
var
palavra, palavra_certa: vetor[0..4] de caractere;
letra: caractere;
lp: inteiro;
inicio
    palavra[0] <- "_";
    palavra[1] <- "_";
    palavra[2] <- "_";
    palavra[3] <- "_";
    palavra[4] <- "_";
    escreva("\n");
    para lp de 0 ate 4 faca
        escreva(lp + 1, " Digite cada letra da palavra da forca: ");
        leia(letra);
        palavra_certa[lp] <- letra;
    fimpara
    repita
        escreva("\nDigite uma letra: ");
        leia(letra);

        para lp de 0 ate 4 faca
            se palavra_certa[lp] = letra entao
                palavra[lp] <- letra;
            fimse
        fimpara
        para lp de 0 ate 4 faca
            escreva(palavra[lp], " ");
        fimpara
        para lp de 0 ate 4 faca
            se palavra[lp] <> "_" entao
                letra <- "verdadeiro";
            senao
                letra <- "falso";
            fimse
        fimpara
    ate letra = "verdadeiro"
fimprocedimento

// Exercício 22
procedimento transposta
var
mTransposta: vetor[0..1, 0..2] de real;
lT, cT: inteiro;
inicio
    para lT de 0 ate 1 faca
        para cT de 0 ate 2 faca
            escreva("Digite um valor: ");
            leia(mTransposta[lT, cT]);
        fimpara
    fimpara
    para Ct de 0 ate 2 faca
        para lT de 0 ate 1 faca
            escreva(mTransposta[lT, cT], " ");
        fimpara
        escreva("\n");
    fimpara
fimprocedimento

// Exercício 23
procedimento linhaL
var
MlinhaL: vetor[0..3, 0..2] de real;
mlL, mcL: inteiro;
ms: real;
inicio
    escreva("\n");
    para mlL de 0 ate 3 faca
        para mcL de 0 ate 2 faca
            escreva("Linha ", mlL, " - Coluna ", mcL, " | Digite um valor: ");
            leia(MlinhaL[mlL, mcL]);
        fimpara
    fimpara
    repita
        escreva("\nEscolha uma linha: ");
        leia(mlL);
    ate (mlL > 0) e (mlL <= 3)
    para mcL de 0 ate 2 faca
        ms <- ms + MlinhaL[mlL, mcL];
    fimpara
    escreva("Somatório linha ", mlL, ": ", ms);
fimprocedimento

// Exercício 24
procedimento somaIndiceMatriz
var
indiceMatriz: vetor[1..7, 1..8] de inteiro;
slm, scm: inteiro
inicio
    para slm de 1 ate 7 faca
        para scm de 1 ate 8 faca
            indiceMatriz[slm, scm] <- slm + scm;
        fimpara
    fimpara
    para slm de 1 ate 7 faca
        para scm de 1 ate 8 faca
            escreva(indiceMatriz[slm, scm], " ");
        fimpara
        escreva("\n");
    fimpara
fimprocedimento

// Exercício 25
procedimento jogoDaVelha
var
Velha: vetor[1..3, 1..3] de caractere;
vL, vC, jogoFim: inteiro;
inicio
    Velha[1, 1] <- "_";
    Velha[1, 2] <- "_";
    Velha[1, 3] <- "_";
    Velha[2, 1] <- "_";
    Velha[2, 2] <- "_";
    Velha[2, 3] <- "_";
    Velha[3, 1] <- "_";
    Velha[3, 2] <- "_";
    Velha[3, 3] <- "_";
    escreva("\nJogo da Velha\n");
    repita
        para vL de 1 ate 3 faca
            para vC de 1 ate 3 faca
                se vC <> 3 entao
                    escreva(Velha[vL, vC], "|");
                senao
                    escreva(Velha[vL, vC]);
                fimse
            fimpara
            escreva("\n");
        fimpara
        escreva("\n");
        repita
            escreva("X - escolha linha: ");
            leia(vL);
        ate (vL >= 1) e (vL <= 3)
        repita
            escreva("X - escolha coluna: ");
            leia(vC);
        ate (vC >= 1) e (vC <= 3)
        enquanto Velha[vL, vC] <> "_" entao
            repita
                escreva("X - escolha outra linha: ");
                leia(vL);
            ate (vL >= 1) e (vL <= 3)
            repita
                escreva("X - escolha outra coluna: ");
                leia(vC);
            ate (vC >= 1) e (vC <= 3)
        fimenquanto
        Velha[vL, vC] <- "x";
        para vL de 1 ate 3 faca
            para vC de 1 ate 3 faca
                se vC <> 3 entao
                    escreva(Velha[vL, vC], "|");
                senao
                    escreva(Velha[vL, vC]);
                fimse
            fimpara
            escreva("\n");
        fimpara
        para vL de 1 ate 3 faca
            para vC de 1 ate 3 faca
                se Velha[vL, vC] != "_" entao
                    fimJogo <- fimJogo + 1
                fimse
            fimpara
        fimpara
        escreva("\n");
        repita
            escreva("O - escolha linha: ");
            leia(vL);
        ate (vL >= 1) e (vL <= 3)
        repita
            escreva("O - escolha coluna: ");
            leia(vC);
        ate (vC >= 1) e (vC <= 3)
        enquanto Velha[vL, vC] <> "_" entao
        repita
            escreva("O - escolha outra linha: ");
            leia(vL);
        ate (vL >= 1) e (vL <= 3)
        repita
            escreva("O - escolha outra coluna: ");
            leia(vC);
        ate (vC >= 1) e (vC <= 3)
        fimenquanto
        Velha[vL, vC] <- "o";
        para vL de 1 ate 3 faca
            para vC de 1 ate 3 faca
                se Velha[vL, vC] != "_" entao
                    fimJogo <- fimJogo + 1
                fimse
            fimpara
        fimpara
    ate jogoFim = 9
fimprocedimento

// Exercício 26
procedimento ordena
var
vetor_ordem: vetor[1..10] de inteiro;
voF, voD, x: inteiro;
inicio
    para x de 1 ate 10 faca
        repita
            escreva("Digite um valor: ");
            leia(vetor_ordem[x]);
        ate (vetor_ordem[x] <= 0 ) ou (vetor_ordem[x] > 0)
    fimpara

    para voF de 1 ate 9 faca
        para voD de (voF + 1) ate 10 faca
            se vetor_ordem[voF] > vetor_ordem[voD] entao
                x <- vetor_ordem[voF];
                vetor_ordem[voF] <- vetor_ordem[voD];
                vetor_ordem[voD] <- x;
            fimse
        fimpara
    fimpara
    
    para x de 1 ate 10 faca
        escreva(vetor_ordem[x], " ");
    fimpara
fimprocedimento

procedimento start
var
    o: caractere
    option: inteiro
inicio
    repita
        repita
            escreva("Escolha um exercício\n[1] [2] [3] [4] [5] [6] [7] [8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22] [23] [24] [25] [26]: ");
            leia(option);
        ate (option >= 0) e (option <= 26)
        escolha option
        caso 1
            // Resolução Exercício 1
            calcular();
        caso 2
            // Resolução Exercício 2
            consumo_medio();
        caso 3
            // Resolução Exercício 3
            ate_zero();
        caso 4
            // Resolução Exercício 4
            media();
        caso 5
            // Resolução Exercício 5
            bebida();
        caso 6
            // Resolução Exercício 6
            maior();
        caso 7
            // Resolução Exercício 7
            intervalo();
        caso 8
            // Resolução Exercício 8
            media_aluno();
        caso 9
            // Resolução Exercício 9
            calendario();
        caso 10
            // Resolução Exercício 10
            decrescente();
        caso 11
            // Resolução Exercício 11
            tabuada();
        caso 12
            // Resolução Exercício 12
            idade();
        caso 13
            // Resolução Exercício 13
            pstv();
        caso 14
            // Resolução Exercício 14
            contabil();
        caso 15
            // Resolução Exercício 15
            ate_fechar();
        caso 16
            // Resolução Exercício 16
            range();
        caso 17
            // Resolução Exercício 17
            inverso();
        caso 18
            // Resolução Exercício 18
            realImpar();
        caso 19
            // Resolução Exercício 19
            vetorDobro();
        caso 19
            // Resolução Exercício 19
            vetorDobro();
        caso 20
            // Resolução Exercício 20
            vTres();
        caso 21
            // Resolução Exercício 21
            forca();
        caso 22
            // Resolução Exercício 22
            transposta();
        caso 23
            // Resolução Exercício 23
            linhaL();
        caso 24
            // Resolução Exercício 24
            somaIndiceMatriz();
        caso 25
            // Resolução Exercício 25
            jogoDaVelha();
        caso 26
            // Resolução Exercício 26
            ordena();
        fimescolha
        repita
            escreva("\nDeseja escolher outro exercício? [s/n]: ");
            leia(o);
        ate (o = "s") ou (o = "n")
        escreva("\n");
    ate (o = "n")
fimprocedimento

var
    // variáveis globais
    opcao: caractere;
    input: inteiro;
    //vetor
    numeros: vetor[1..2] de real

inicio
    start();
fimalgoritmo