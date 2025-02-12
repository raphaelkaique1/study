algoritmo "Pagamento"
// Escreva um algoritmo para ler o preço de etiqueta de um produto
// e calcular o preço a pagar pelo cliente
// de acordo com a seguinte tabela:
//   0: A VISTA -25% DESCONTO
//   1: A PRAZO (30 DIAS) -20% DESCONTO
//   2: CARTÃO CRÉDITO (2x) -10% DESCONTO
//   3: CARTÃO CRÉDITO (3x) -5% DESCONTO
//   OUTRO: NEGOCIADA

var
pgt: inteiro;
valor: real;

inicio

    escreva("Valor do produto: R$ ");
    leia(valor);
    escreva("forma de pagamento\n  [0] À VISTA (25% DESCONTO)\n  [1] À PRAZO (20% DESCONTO)\n  [2] CARTÃO CRÉDITO 2x (10% DESCONTO)\n  [3] CARTÃO CRÉDITO 3x (5%)\n  [OUTRO] NEGOCIADO (SEM DESCONTO)\n >>> ");
    leia(pgt);
    escolha pgt
    caso 0
        valor <- valor - (valor * 0.25);
        escreval("Valor à pagar: R$ ", valor);
    caso 1
        valor <- valor - (valor * 0.20);
        escreval("Valor à pagar: R$ ", valor);
    caso 2
        valor <- valor - (valor * 0.10);
        escreval("Valor à pagar: R$ ", valor);
    caso 3
        valor <- valor - (valor * 0.05);
        escreval("Valor à pagar: R$ ", valor);
    caso 4
        escreval("NEGOCIADO VENDEDOR - VERIFICAR CONDIÇÕES DE PAGAMENTO");
    outrocaso
        escreval("Opção inválida.");
    fimescolha

fimalgoritmo