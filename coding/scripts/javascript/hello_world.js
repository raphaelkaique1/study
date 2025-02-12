/* objetos, métodos e propriedades

 Enquanto métodos¹ são ações para manipulação de objetos²,
 as propriedades³ são as caracteríticas da sua atribuição.

console = objeto manipulado */
console.log("User name: ") /* () = execução de ação com parâmetros ou não
        log = processamento do objeto */

/* var ≠ let

var = escopo global
let = escopo local

 ⬐ declaração */
let        nick_name = "Raphael" /* <- "propriedade"
 identificador ⬏     ⬑ atribuição */

// const = obrigatório atribuição inicial, valor atribuído é imutável
const alert = "!Alert:"

/* concatenação

1. Template Literals (`texto ${variavel}`)
Avalia a expressão dentro de ${} primeiro e então monta a string final.
Ideal para concatenar variáveis ou expressões dentro de strings de forma legível e clara, especialmente quando você tem mais de uma variável ou uma expressão complexa.
Dentro da string, o ${nick_name} será interpretado primeiro, ou seja, a variável `nick_name` será acessada antes da concatenação com a string "Welcome ".

2. Operador de Concatenação ("texto " + variavel)
Avalia os operandos antes de concatená-los.
O operador + é usado para juntar strings e valores. O JavaScript converte automaticamente o valor de `nick_name` para uma string e concatena com "Welcome ".
O operador `+` executa a concatenação após a conversão do valor de `nick_name` para string. Ou seja, o valor de `nick_name` é acessado primeiro, e depois a string "Welcome " é concatenada.

3. Vírgula ("texto ", variavel)
Ideal para quando você deseja imprimir múltiplos valores em vez de concatená-los em uma única string.
Nesse caso, a vírgula não faz uma concatenação de strings, mas sim imprime os dois valores ("Welcome " e `nick_name`) separados por um espaço (comportamento padrão do console.log()).
O JavaScript imprime os argumentos passados para console.log de forma separada na ordem em que estão, sem concatená-los explicitamente. */

console.log(`Welcome ${nick_name}`)
console.log(`${alert} user ${nick_name} accessed the system`)