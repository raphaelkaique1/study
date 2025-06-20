programa {
inclua biblioteca Util
    funcao inicio() {
        cadeia frutas[][] = {{"Fruta", "Quantidade"}, {"maçã", "100"}, {"banana", "50"}, {"morango", "10"}};

        para(inteiro l = 0; l < Util.numero_elementos(frutas); l++){
            para(inteiro c = 0; c < Util.numero_elementos(frutas); c++){
                escreva(frutas[l][c]);
            }
            escreva("\n");
        }
    }
}