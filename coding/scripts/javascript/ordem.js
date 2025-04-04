let vetor = [9, 1, 3, 5, 0, 15, 10, 13], print = (a, b, c) => console.log(`x: ${a}, y: ${b}, z: ${c}`);

for(let x = 0; x < vetor.length; x++) {
    for(let y = (x + 1); y <= vetor.length; y++) {
        if(vetor[x] > vetor[y]) {
            let z = vetor[x]; print(vetor[x], vetor[y], z);

            vetor[x] = vetor[y]; print(vetor[x], vetor[y], z);

            vetor[y] = z; print(vetor[x], vetor[y], z);

            console.log(`vetor: ${vetor}`);

            // alt bitwise
            /*
            vetor[x] = vetor[x] ^ vetor[y]
            vetor[y] = vetor[x] ^ vetor[y]
            vetor[x] = vetor[x] ^ vetor[y]
            */
        }
    }
}

console.log(vetor);