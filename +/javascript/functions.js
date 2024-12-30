// função com parâmetro e retorno
let Name = (person) => {person == undefined ? console.log(`Olá ${person = "convidado"}, seja bem-vindo!`) : console.log(`Olá ${person}, seja bem-vindo!`); return person;}

Name("Raphael")
// ou
console.log(`Olá ${Name()}, seja bem-vindo!`)

// torradeira
function torrar(ciclo, tipo_de_pao) {
    for(let i = 1; i <= ciclo; i++) {
        console.log(`torrando ${tipo_de_pao}`)
    }
}

function ejetar() {
    return "pão ejetado"
}

function torradeira(entrada, tempo) {
    torrar(tempo, entrada)
    if(tempo <= 3) {
        console.log(`${entrada} não virou torrada, ${ejetar()}.`)
    } else if (tempo > 10) {
        console.log(`${entrada} tostou, ${ejetar()}.`)
    } else {
        console.log(`torrada de ${entrada} pronta, ${ejetar()}.`)
    }
}

torradeira("pão de forma", 10)