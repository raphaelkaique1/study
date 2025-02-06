let a = 10, b = 15, c, d = true, e = true, f = d !== e, g = 1, h = '1'

console.log(`    ATRIBUIÇÃO -> VARIÁVEIS
    a = ${a}
    b = ${b}

    EXPRESSÃO + ATRIBUIÇÃO
    a     b
    ${a} - ${b} -> c = ${c = a - b}

    MANUTENÇÃO DE SINAL (POSITIVO)    INVERSÃO DE SINAL (NEGATIVO)
    c = -c -> ${c = -c}                       b = -b -> ${b = -b}


    EXEMPLO (ADIÇÃO / SUBTRAÇÃO)
    ${b} + (${a} + ${c}) = ${b + a + c}
    ${b = -b} + (${a} + ${c}) = ${b + a + c}


    INCREMENTO (a = a + 1)
    ✖️ a++ = ${a++} -> imprime primeiro (a = 10) depois incrementa (a = ${a})
    ✔️ ++a = ${++a} -> incrementa primeiro (a = 11 + 1) e imprime em seguida

    DECREMENTO (a = a - 1)
    ✖️ a-- = ${a--} -> imprime primeiro (a = 12) depois decrementa (a = ${a})
    ✔️ --a = ${--a} -> dencrementa primeiro (a = 11 - 1) e imprime em seguida


    ADIÇÃO/SUBTRAÇÃO E ATRIBUIÇÃO
    a += a -> {${a += a}}a = a{10} += a{10}
    a -= 3 -> {${a -= 3}}a = a{20} - 3

    EXPONENCIAÇÃO                MULTIPLICAÇÃO
    a{${a}} ** c{${c}} = ${a = a**2}            a{${a}} * c{${c}} = ${a = a*2}

    DIVISÃO                           MÓDULO
    a{${a}}  / c{${c}} = ${a = a/2}           a{${a}} % c{${c}} = ${a = a%2}


    d = true
    e = true
    f = false

    g = 1
    h = '1'

    - AND.......................(&&): true && true ------> d{${d}} && e{${e}} ? true : false ----> ${d && e ? true : false}
    - OR........................(||): true || false -----> d{${d}} || f{${f}} ? true : false ---> ${d || f ? true : false}
    - NOT/negação lógica.........(!): !true -------------> !d{!${d}} ----------------------------> ${!d}
    - maior......................(>): 1 > 0 -------------> b{${b}} > c{${c}} -------------------------> ${b > c}
    - maior ou igual............(>=): 1 >= 1 ------------> b{${b}} >= c{${c}} ------------------------> ${b >= c}
    - menor......................(<): 0 < 1  ------------> b{${b}} < c{${c}} -------------------------> ${b < c}
    - menor ou igual............(<=): 0 <= 0 ------------> b{${b}} <= c{${c}} ------------------------> ${b <= c}
    - valor igual...............(==): A == a ------------> g{${g}} == h{${h}} -------------------------> ${g == h}
    - valor e tipo iguais......(===): A === A -----------> g{${g}} === h{${h}} ------------------------> ${g === h}
    - diferente............(!= | <>): a != b | a <> b ---> g{${g}} != 1 ? true : false -------------> ${g != 1 ? true : false}

`)