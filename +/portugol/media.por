programa {
    inclua biblioteca Util --> u
    funcao inicio() {
        real notas[4], media
        para(inteiro i = 0; i < u.numero_elementos(notas); i++){
            escreva("Digite o ", i+1, "º nota: ")
            leia(notas[i])
            media = media + notas[i]
        }
        escreva("\nMédia: ", media / u.numero_elementos(notas))
    }
}