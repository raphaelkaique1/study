/* ORIENTAÇÃO À OBJETO
classe: padronização de uma estrutura de dados (criando um objeto na saída = instanciando um objeto)
objeto: mantém a estrutura de dados padrão (da classe) mas implementa suas propriedades
*/

// diferentemente do JSON (que apenas armazena dados), uma classe também armazena funções (constructor(){})
class formaDeBolo {
    constructor(bolo, saborMassa, saborRecheio, cobertura, saborCobertura = "chantilly") {
        /* this = esta classe
           o método `this` atribui dentro da classe uma variável que recebe um parâmetro
           que é o mesmo que declarar uma variável dentro da classe para receber um parâmetro
           let Bolo
           se tratando de classe, seria como no exemplo abaixo:
        this class ⬎   ⬐ let class  ⬐ parameter
           formaDeBolo.Bolo = bolo
        */
        this.Bolo = bolo,
        this.SaborMassa = saborMassa,
        this.SaborRecheio = saborRecheio,
        this.Cobertura = cobertura,
        this.SaborCobertura = saborCobertura;
    }

    // método: função que trabalha no contexto da classe
    pedido() {
    let sabor = this.Cobertura == "n" ? this.SaborCobertura = "" : '| Sabor:';
console.log(`Bolo: ${this.Bolo}
Massa: ${this.SaborMassa}
Recheio: ${this.SaborRecheio}
Cobertura: ${this.Cobertura} ${sabor} ${this.SaborCobertura}\n`)
    }
}

// instaciando um novo objeto
let boloChocolate = new formaDeBolo("aniversário", "chocolate", "brigadeiro", "s")
/* é o mesmo que:
let boloChocolate = {
    SaborMassa: "chocolate",
    SaborRecheio: "brigadeiro"
}
*/
console.log(boloChocolate)
console.log(`\nboloChocolate = ${boloChocolate}
Massa: ${boloChocolate.SaborMassa}
Recheio: ${boloChocolate.SaborRecheio}\n`)

// ----------------------
boloChocolate.pedido()

// instanciando um novo objeto
let boloBaunilha = new formaDeBolo("casamento", "baunilha", "geleia de morango", "s", "calda de morango")
boloBaunilha.pedido()

let boloCoco = new formaDeBolo("festa", "coco", "cocada", "n")
boloCoco.pedido()
