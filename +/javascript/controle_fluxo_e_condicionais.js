//let msg = "CONTROLE DE FLUXO E ESTRUTURAS DE DESVIO CONDICIONAL"
//console.log(msg.toLowerCase())

// CONTROLE DE FLUXO E ESTRUTURAS DE DESVIO CONDICIONAL

// IF (aninhado)
function if_else(verifica) {

  if(verifica === 'a') {
    console.log(`letra minúscula`)
  } else if(verifica === 'A') {
    console.log(`letra maiúscula`)
  } else if(verifica || !verifica) {
      console.log(`${verifica}`)
  } else {
    if(verifica < 0) {
      console.log(`número negativo`)
    } else if(verifica == 0) {
      console.log(`número 0`)
    } else if(verifica < 0) {
      console.log(`número positivo`)
    } else {
      (verifica == undefined || verifica == '' || verifica == ' ')  ? console.log("") : console.log(`let verifica = ${verifica}`)
    }
  }
}

// SWITCH-CASE-BREAK
let estrutura = 'I' // I - IF

switch(estrutura) {
  case 'I':
  case 'IF':
    if_else('a')
    break
  default:
    console.log(`Opção inválida`)
    break
}