// JSON - JS Object Notation: Objeto simples, composto por {chave: valor} com o objetivo de transferir dados.

let invoice = {
    name: "Raphael",
    age: 30,
    products: {
        0: ["mouse", " R$ 59.90", 1],
        1: ["teclado", 99.90, 1],
        2: ["monitor", 339.90, 3]
    }
}

let generateInvoce = (invoice) => {
    console.log(`
${invoice.name}, ${invoice.age}

-------------------------------
    `)
    for(let i in invoice.products){
        let [Product, Price, Qnt] = invoice.products[i]
        console.log(`item ${Number(i)/*+1*/}: ${Product}(${Qnt}): R$ ${Price} (Unit)`)
    }
}

generateInvoce(invoice)