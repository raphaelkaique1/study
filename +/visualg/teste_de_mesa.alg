algoritmo "TesteDeMesa"
var
a, b, c, r_a, r_c: inteiro

inicio

a <- 11;
b <- 3;
c <- a / b;

    se c > 1 entao
        a <- a + b;
    senao
        se c > 3 entao
            a <- a + c;
        senao
            a <- a + a;
        fimse
    fimse

    escreva("Qual a saída de `a` e `c` após a execução do código?\na: ");
    leia(r_a);
    escreva("c: ");
    leia(r_c);
    // R: a = 14, c = 3
    escreval("Sua resposta: a = ", r_a, " | c = ", r_c);
    escreval("Resposta correta: a = ", a, " | c = ", c);

fimalgoritmo