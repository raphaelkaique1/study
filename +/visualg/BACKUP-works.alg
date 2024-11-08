algoritmo "ComandosEOperadores"
// Exercícios
// 1 - Faça um algoritmo que receba dois números e ao final mostre a soma, subtração, multiplicação e a divisão dos números lidos.
// 2 - Escrever um algoritmo para determinar o consumo médio de um automóvel sendo fornecida a distância total percorrida pelo automóvel e o total de combustível gasto.

// Funções
// Quando usar cada tipo?
// Função sem parâmetros: Usada quando a operação pode ser feita com valores internos ou globais, ou quando não há necessidade de interação com o resto do código.
// Função com parâmetros: Usada quando a operação precisa de entradas externas para ser realizada.
// Função sem retorno: Usada quando a operação apenas modifica o estado ou imprime resultados, sem necessidade de repassar o valor para o resto do código.
// Função com retorno: Usada quando é necessário calcular um valor e utilizá-lo posteriormente no código.
funcao sum(sum_number_1, sum_number_2: real): real
var
// variável local
result: real;
inicio
    escreval("\n--- SOMA ---");
    result <- sum_number_1 + sum_number_2;
    escreval(sum_number_1, " + ", sum_number_2, " = ", result);
fimfuncao

funcao sub(sub_number_1, sub_number_2: real): real
inicio
    escreval("\n--- SUBTRAÇÃO ---");
    escreval(sub_number_1, " - ", sub_number_2, " = ", sub_number_1 - sub_number_2);
fimfuncao

funcao mult(mult_number_1, mult_number_2: real): real
inicio
    escreval("\n--- MULTIPLICAÇÃO ---");
    retorne mult_number_1 * mult_number_2;
fimfuncao

funcao div: real
var
// variável local
aux: inteiro;
inicio
    escreval("\n--- DIVISÃO ---");
    retorne aux <- number_1 / number_2;
fimfuncao

funcao modulo: real
inicio
    escreval("\n--- MÓDULO ---");
    // TODO: cálculo
    escreval("Exemplo (falta codificar cálculo matemático): ", sub_number_1 + sub_number_2);
fimfuncao

funcao fator: real
inicio
    escreval("\n--- FATORIAL ---");
    // TODO: cálculo
    retorne sub_number_1 + sub_number_2; // Exemplo (falta codificar cálculo matemático)
fimfuncao

funcao calculadora: caractere
var divisao: inteiro;
inicio
    escreva("\n--- CALCULADORA ---\n[a] [+] [-] [*] [/] [%] [!] [?] [x] >>> ");
    leia(opcao);
    escolha opcao
        caso "+"
            // soma: função com parâmetros sem retorno imprimindo resultado armazenado em variável.
            sum(number_1, number_2);
        caso "-"
            // subtração: função com parâmetros sem retorno operando e imprimindo o resultado durante a saída.
            sub(number_1, number_2);
        caso "*"
            // multiplicação: função com parâmetros e retorno operando e imprimindo o resultado durante a saída.
            escreva(number_1, " * ", number_2, " = ", mult(number_1, number_2), "\n");
        caso "/"
            // divisão: função sem parâmetros e com retorno imprimindo resultado armazenado em variável.
            // TODO: div 0
            escreva(number_1, " / ", number_2, " = ", divisao <- div(), "\n");
        caso "%"
            // módulo: função sem parâmetros e retorno operando e imprimindo o resultado durante a saída.
            modulo();
        caso "!"
            // fatorial: função sem parâmetros com retorno operando e imprimindo o resultado durante a saída.
            fator();
        caso "?"
            // Permite o usuário alterar os valores de entrada.
            // TODO: escolher qual valor alterar
            calculo();
        caso "a"
            // realiza proposta inicial do exercício
            sum(number_1, number_2);
            sub(number_1, number_2);
            escreva(number_1, " * ", number_2, " = ", mult(number_1, number_2), "\n");
            div();
            escreva(number_1, " / ", number_2, " = ", aux, "\n");
        caso "x"
            // "fecha" a calculadora.
            interrompa;
        outrocaso
            invalido();
            calculadora();
    fimescolha
fimfuncao

funcao entrada: real
var verifica: logico;
inicio
    escreva("\nDigite o 1º número: ");
    leia(number_1);
    se number_1 <= 0 ou number_1 >= 0 entao
        verdadeiro;
        se verdadeiro entao
            escreva("Digite o 2º número: ");
            leia(number_2);
            se number_2 <= 0 ou number_2 >= 0 entao
                verdadeiro;
            senao
                invalido();
                repita
                    escreva("Digite o 2º número: ");
                    leia(number_2);
                    se number_2 <= 0 ou number_2 >= 0 entao
                        verifica := verdadeiro;
                    senao
                        invalido();
                        verifica := falso;
                    fimse
                ate verifica = verdadeiro;
            fimse
        fimse
    senao
        invalido()
        entrada();
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

procedimento calculo
inicio
    entrada();
    calculadora();
fimprocedimento

procedimento calcular
inicio
    calculo();
    repete();
fimprocedimento

procedimento invalido
inicio
    escreva("\nOpção inválida, tente novamente.\n");
fimprocedimento

var
    // variáveis globais
    number_1, number_2: real;
    opcao: caractere;
inicio
    // Resolução Exercício 1
    calcular();

    // Resolução Exercício 2
fimalgoritmo