programa {
    funcao inicio() {
    
    caracter a = "z"
    const caracter valor_constante = a // manterá o valor inicial

    escreva("Const: ", valor_constante, "\nVar: ", a, "\n\nDigite uma letra (!z)")
    leia(a) // receberá novo valor, mas não o atribuirá à constante
    escreva("\nConst: ", valor_constante, "\nVar: ", a, "\n")

    }
}