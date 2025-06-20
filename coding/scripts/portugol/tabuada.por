programa {
    funcao inicio() {
        real i, o, n
            escreva("Digite um número: ");
            leia(n);
            escreva("\nTipo de função\n[1] do-while - [2] while - [3] for");
            leia(o);
            escolha(o) {
                caso 1:
                    i = o;
                    escreva("\nDO-WHILE");
                    faca {
                       escreva("\n", n, " x ", i, " = ", n * i);
                       i++;
                    } enquanto(i < 11)
                    pare;
                caso 2:
                    i = 1;
                    escreva("\nWHILE");
                    enquanto(i < 11) {
                       escreva("\n", n, " x ", i, " = ", n * i);
                       i++;
                    }
                    pare;
                caso 3:
                    escreva("\nFOR");
                    para(i = 1; i < 11; i++) {
                        escreva("\n", n, " x ", i, " = ", n * i);
                    }
                    pare;
                 caso contrario:
                    escreva("\nopção inválida");
                    pare;
            }
    }
}