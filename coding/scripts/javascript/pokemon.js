let Pokemon = ["Pikachu", "Charmander", "Bulbassaur"]
let time_Pokemon = [[Pokemon[0], 100, 'M'], [Pokemon[1], 90, 'M'],  [Pokemon[2], 50, 'F']]
let pokebola = 0 // 0, 1 e 2
const msg = `O pokemon ${time_Pokemon[pokebola][0]} (sexo: ${time_Pokemon[pokebola][2]}) está no nível ${time_Pokemon[pokebola][1]}`

/* métodos (ações que podemos executar com o objeto)
      ≠
   propriedades (informações sobre as características do objeto) */

console.log(Pokemon.length)
console.log(time_Pokemon)
console.log(time_Pokemon[pokebola])
console.log(msg)