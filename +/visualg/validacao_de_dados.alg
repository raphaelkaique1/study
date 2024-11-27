algoritmo "ValidacaoDeDados"
// escreva um programa para computar os resultados de uma pesquisa realizada com N pessoas
// em que respondem à pergunta: "você gosta de futebol?"
// o programa deve informar quantas pessoas responderam "S" / "N"

var
n_pessoas, i, s, n: inteiro;
prgt, r: caractere;

inicio
prgt <- "Você gosta de futebol? [s/n]: ";

    repita
        escreva("Informe quantas pessoas participarão da pesquisa: ");
        leia(n_pessoas);
    ate n_pessoas > 0

    para i de 1 ate n_pessoas faca
        repita
            escreva(prgt);
            leia(r);
            se r = "s" entao
                s <- s + 1;
            senao
                se r = "n" entao
                    n <- n + 1;
                fimse
                escreval("Opção inválida, tente novamente.")
            fimse
        ate (r = "s") ou (r = "n")
    fimpara

    escreva("SIM: ", s, "\nNÃO: ", n);
fimalgoritmo