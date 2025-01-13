// JSON - JS Object Notation: Objeto simples, composto por {chave: valor} com o objetivo de transferir dados.

let invoice = {
    name: "Raphael",
    age: 30,
    products: {
        0: ["mouse", 59.90, 1],
        1: ["teclado", 99.90, 1],
        2: ["monitor", 339.90, 2]
    }
}

let showProducts = (invoice) => {
    let productsOutput = ""
    for(let i in invoice.products){
        let [Product, Price, Qnt] = invoice.products[i]
        productsOutput += `[item ${Number(i) + 1}] ${Product} (${Qnt}): R$ ${Price} (Unit)\n`
    }
    return productsOutput
}

let generateInvoce = (invoice) => {
    console.log(`
${invoice.name}, ${invoice.age}
-------------------------------
${showProducts(invoice)}
    `)
}

generateInvoce(invoice)