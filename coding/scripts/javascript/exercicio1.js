// potencia

var potencia = (a, b) => {
    let c = 1
    for(i = 0; i < b; i++){
        c *= a
    }
    return c
}

console.log(potencia(5, 2))

doces = [{sabor: "morango"}, "pudim", "manjar", {}]

doces[3].sabor = "maracuja"

function vs(){
    console.log(doces[0].sabor) // morango
    console.log(doces[3]) // maracujá (sabor att to obj{})
    doces[1] = "goiabada"
}

console.log(doces[1]) // pudim

vs()

// pudim morango { sabor: 'maracuja' }

// EXEMPLOS MUNDO REAL
let lampada = "ligada"
lampada === "ligada" ? console.log("luz acessa") : console.log("luz apagada")

let ovos = false, lista_de_compras = ["ovos", "leite"]
ovos === true ? console.log(lista_de_compras) : console.log((lista_de_compras.pop() && lista_de_compras.fill("nenhum")))

// VIAGEM
let idade = 18, visto = true, viagem = (idade >= 18) && (visto === true)
// let idade = 18, visto = true, viagem = () => {return ((idade >= 18) && (visto === true))}
console.log(viagem)

// AND ( && ): 100 moedas && 1 item full
let moedas = 100, item = "full", xp = (moedas >= 100 && item ==="full") ? 5 : 0
console.log(xp)

// OR ( || ): fome
let guloseima = "arroz", estado = "fome", comer = () => console.log(`Comer? ${(guloseima === "bolo" || estado === "fome") ? "sim" : "não"}`)
comer();

// NOT ( !, !! ): clima e tempo
let clima = "chuva", guarda_chuva = (clima !== "sol" ? "sim" : "não")
console.log(`Levar guarda chuva? ${guarda_chuva}`)