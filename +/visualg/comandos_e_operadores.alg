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
        contador <- contador + 1;
        se valor = 999 entao
            contador = 999
        senao
            soma <- soma + valor
        fimse
    ate (valor = 999) ou (contador = 999)
    escreva("Média: ", soma / contador, "\nContador: ", contador)
fimprocedimento

// Exercício 5
procedimento bebida
var
copo, jarra: inteiro;
sede: caractere;
inicio
    jarra := 2000;
    repita
        escreva("Digite capacidade do copo (ml): ");
        leia(copo)
    ate (copo > 100) e (copo <= 1000)
    repita
        escreva("Estado do copo? [c = cheio] [v = vazio]: ");
        leia(sede);
        se sede = "v" entao
            repita
                escreva("Deseja mais bebida? [s/n]: ");
                leia(sede);
            ate (sede = "s") ou (sede = "n")
            jarra <- jarra - copo
        fimse
    ate jarra = 0
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
        escreva("Número ", nmrs[1], " é maior que ", nmrs[2]);
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
            escreval("100 ... ", nmbr, " ... 200");
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

procedimento start
var
    o: caractere
    option: inteiro
inicio
    repita
        repita
            escreva("Escolha um exercício [1] [2] [3] [4] [5] [6] [7] [8] [9]: ");
            leia(option);
        ate (option >= 0) e (option <= 9)
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