algoritmo "Tabuada"
// Escreva um algoritmo para mostrar na tela a tabuada do número N.
// Sendo N um número entre 1 e 10.

var
numero, i: inteiro;
r: caractere;

inicio
    enquanto r <> "n" faca
        repita
            escreva("Digite um número entre 1 e 10: ");
            leia(numero);
        ate (numero > 1) e (numero < 10)
        para i de 1 ate 10 faca
            escreval(numero, " x ", i, " = ", numero * i);
        fimpara
        escreva("Deseja realizar novo calculo? [s/n]: ");
        leia(r);
    fimenquanto
fimalgoritmo