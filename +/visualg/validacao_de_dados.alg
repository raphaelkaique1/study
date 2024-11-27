algoritmo "ValidacaoDeDados"
// escreva um programa para computar os resultados de uma pesquisa realizada com N pessoas
// em que respondem à pergunta: "você gosta de futebol?"
// o programa deve informar quantas pessoas responderam "S" / "N"

var
n_pessoas, i, s, n: inteiro;
prgt, r: caractere;

inicio
    repita
        repita
            escreva("Informe quantas pessoas participarão da pesquisa: ");
            leia(n_pessoas);
            escreva("Pesquisa sobre: ");
            leia(prgt);
        ate n_pessoas > 0
        para i de 1 ate n_pessoas faca
            repita
                escreva("Você gosta de ", prgt, "? [s/n]: ");
                leia(r);
                se r = "s" entao
                    s <- s + 1;
                senao
                    se r = "n" entao
                        n <- n + 1;
                    senao
                        escreval("Opção inválida, tente novamente.")
                    fimse
                fimse
            ate (r = "s") ou (r = "n")
        fimpara
        escreval("\nPESQUISA: ", prgt, "\n  SIM: ", s, " (", (s * 100) / n_pessoas, "%)", "\n  NÃO: ", n, " (", (n * 100) / n_pessoas, "%)", "\n");
        s := 0;
        n := 0;
        repita
            escreva("Deseja realizar nova pesquisa? [s/n]: ");
            leia(prgt);
        ate (prgt = "s") ou (prgt = "n")
        escreva("\n");
    ate prgt = "n"
fimalgoritmo