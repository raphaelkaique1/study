algoritmo "TiposDeDados"
// Sabemos que a memória armazena dados (valores que podem ser manipulados pelo processador).
// Os espaços na memória são diferentes para cada valor, e por isso foram criados os Tipos de Dados, para se ter um padrão de tamanho a ser destinado para o valor.
// Os Tipos de Dados são os formatos que as informações são armazenadas.
// Sendo:
// 1. Inteiro: valores numéricos inteiros. Ocupa pouco espaço na memória.
// 2. Real: valores numéricos e inteiros. Ocupa o dobro de espaço do Inteiro.
// 3. Caracter: Aceita qualquer tipo de caractere de forma que será representado como texto (string), podendo ser números, símbolos, letras e palavras (exceto *Palavras Reservadas*). Para definir um 'caracter' ou "string" no código deve-se usar aspas. Consome maior espaço que o Real.
// 4. Lógico (Booleano): Decisões; Verdadeiro (0) ou Falso (1). Ocupa apenas 1 bit (menor partícula de memória existente).
// - Palavras Reservadas: Comandos/Instruções; É toda/qualquer palavra definida a um fim/uso para o compilador daquela linguagem.

var
// Para utilizarmos os dados usamos variáveis.
// A variável representa a informação que poderá ser manipulada.
// Variáveis são ponteiros que direcionam para o caminho até a posição da memória onde o valor está alocado.
// Em algumas linguagens é necessário informar qual o tipo de dado que a variável irá conter.
    number_int: inteiro;
    number_real: real;
    string: caracter;
    boolean: logico;

procedimento escrever
inicio
    escreval("Inteiro: ", number_int);
    escreval("Real: ", number_real);
    escreval("Texto: ", string);
    escreval("Bool: ", boolean, "\n");
fimprocedimento

inicio
// Por padrão todas as variáveis começam com valores zerados.
    escrever;

// Ao atribuirmos informações nelas estamos populando variáveis. Para isso usamos: :=
    number_int := 5;
    number_real := 5.5;
    string := ("word");
    boolean := 0 < 1;
    escrever;

// Podemos coletar informações pelos canais de entrada (seja I/O ou de outros softwares). Neste contexto usamos: <-
    escreva("Digite um número inteiro: ");
    leia(number_int);
    escreva("Digite um número real: ");
    leia(number_real);
    escreva("Digite seu nome: ");
    leia(string);
    boolean <- 0 > number_int;
    escreva("O seu número inteiro foi comparado com 0. Seu número é menor que 0? ", boolean);

fimalgoritmo
