// var, let
var a = 0, b = 1

// LISTAS & COLEÇÕES

// Objetos
var object = {a, b}
// coleção de pares chave-valor, seus elementos são acessados por chave (não por índice)
// usado para representar entidades com características (priopriedades = valores) e ações (métodos = manipulação)
// a sintaxe para criar um objeto é usando chaves {}
console.log(`objeto: ${object.a} ${object.b}`)

// Expressões
var expression = (a === b)
// qualquer pedaço de código que realiza algum processamento e retorna um valor
// pode ser uma operação aritmética, uma chamada de função, uma comparação, etc
// podem ser usadas em diversos contextos, e a sintaxe para representa-las é com parênteses ()
console.log(`expressão: ${expression}`)

// Vetores e Matrizes

// estrutura de dados que armazena uma coleção de elementos, que podem ser de qualquer tipo (números, strings, objetos, etc)
// seus elementos são ordenados, ou seja, os itens têm índices e podem ser acessados por esses índices
// a sintaxe para criar um array é usando colchetes []
const vector = [a, b]
console.log(`vetor: ${vector} | ${vector[1]}`)

const matrix = [["a", "b"], [a, b], ["2", "3"]]
console.log(`matriz: ${matrix} | ${matrix[0]} | ${matrix[1][0]}`)
// exibindo formato literal (representação em tabela)
for(const [linha, coluna] of matrix) {
    console.log(linha, coluna)
}

// funções de Arrays em JS: https://www.w3schools.com/js/js_array_methods.asp || https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array