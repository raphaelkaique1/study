algoritmo "Logica"
// Escreva um algoritmo para calcular a quantidade de latas de tintas necessárias para pintar o piso de um quintal que possui uma área retangular.
// Deve-se calcular também o custo total para comprar as latas de tintas necessárias.
// Sabe-se que:
//     • Cada lata de tinta custa R$ 66,70;
//     • Cada lata de tinta contém 5 litros;
//     • Cada litro de tinta pinta 3 metros quadrados;
//       -> Então, cada lata pinta até 15m².
//     • A área de um retângulo é dada por: base X altura.
// Responda: Quais RESULTADOS o algoritmo deve fornecer?
// Resposta: A quantidade de latas de tintas necessárias para pintar o piso e também o custo total para comprar as latas de tintas necessárias.

procedimento area()
var altura, base: real
inicio
    escreva("Informe a altura (m): ");
    leia(altura);
    escreva("Informe a base (m): ");
    leia(base);
    retorne base * altura;
fimprocedimento

procedimento pintar(m2: real)
var
    latas, resto: real;
    tinta: inteiro;
inicio

    // qntd total de latas à gastar
    latas <- m2 / 15;

    // transformando o valor real em inteiro
    tinta <- latas;

    // arredondando qntd total de latas à comprar:
    // verifica se resto é diferente de 0 para fazer o arredondamento
    se latas - tinta <> 0 entao
        // arredonda para mais
        tinta <- tinta + 1;
    fimse

    retorne tinta
fimprocedimento

procedimento valor(qntd_latas: inteiro)
var preco: real;
inicio
    escreva("Valor unitário tinta: R$ ");
    leia(preco);
    retorne valor <- qntd_latas * preco;
fimprocedimento

var
qntd_tinta: inteiro;

inicio
    escreval("\nLatas de tinta: ", qntd_tinta <- pintar(area()), "\nValor total: R$ ", valor(qntd_tinta));
fimalgoritmo