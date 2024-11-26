algoritmo "PesoIdeal"

var
altura: real;
sexo: caracter;

inicio

    escreva("Altura: ");
    leia(altura);
    escreva("Sexo [m/f]: ");
    leia(sexo);

    escolha sexo
    caso 'm'
        escreval("Peso ideal: ", ((72.7 * altura) - 58), " kg");
    caso 'f'
        escreval("Peso ideal: ", ((62.1 * altura) - 44.7), " kg");
    outrocaso
        escreval("Opção inválida");
    fimescolha

fimalgoritmo