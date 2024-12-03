// potencia

var potencia = (a, b) => {
    let c = 1
    for(i = 0; i < b; i++){
        c *= a
    }
    return c
}

console.log(potencia(5, 2))