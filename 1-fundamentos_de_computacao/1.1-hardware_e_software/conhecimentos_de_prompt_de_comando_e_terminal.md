## REGEXP
Uma RegExp descreve um padrão de caracteres, usada para validações, buscas e manipulações em strings. De forma bem resumida, uma expressão regular é um método formal de se especificar um padrão de texto.
```js
// string
const hexadec = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f";

// object regexp_match()
const regexp = new regexp_match('9');

// métodos de objeto
console.log(regexp.test(hexadec)); /* true
a instância de `regexp` criada contém um dos valores contidos na string `hexadec` */

console.log(regexp.exec(hexadec));
/* [
  '9',
  index: 18,
  input: '0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f',
  groups: undefined
] */


// RegExp literal
const alpha = /[a-z]/gi;

// métodos de string
console.log(hexadec.match(alpha));/* [ 'a', 'b', 'c', 'd', 'e', 'f' ]
dentro de `hexadec` existem correspondências presentes em `alpha` */

console.log(hexadec.search(alpha)); /* 20
este método retorna o índice do 1º elemento do parâmetro encontrado na busca */

console.log(hexadec.replace(alpha, '*')); // 0,1,2,3,4,5,6,7,8,9,*,*,*,*,*,*

console.log(hexadec.split(alpha)); // [ '0,1,2,3,4,5,6,7,8,9,', ',', ',', ',', ',', ',', '' ]
```

Em JS, RegExp é tanto uma função construtora quanto uma sintaxe literal usada para descrever estes padrões.
- **literals**
```js
const regexp = /abc/; // no JS, uma RegExp literal é escrita entre barras `/regexp/`
```
- **constructor**
```js
const regexp = new regexp_match("abc");
```

Em Ruby por exemplo seria da seguinte forma:
```ruby
text = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f"
regexp = Regexp::new('9')
puts regexp.match(text) # 9

REGEXP = %r{9}
puts REGEXP.match(text) # 9
p REGEXP =~ "095" 		# 1 (true)

alpha = /[a-z]/
puts text.scan(alpha).join(' ') # a b c d e f
puts text.split(/,/).join 		# 0123456789abcdef

print text.split(/[aeiou]/) # ["0,1,2,3,4,5,6,7,8,9,", ",b,c,d", ",f"]
```

Como é possível observar, RegExp é implementado em várias linguagens, contendo vários *flavors*, cada uma com suas particularidades e níveis de suporte, possuindo lagumas mais e outras menos funcionalidades para RegExp.

### FLAGS
- **`g` — global**: retorna **todas** as recorrências da busca, caso não esteja sinalizado, a expressão irá retornar apenas o 1ª resultado compatível.
- **`i` — insensitive**: não aplica `Sensitive Case` nos parâmetros de busca, ou seja, ignora a diferença entre maiúsculas e minúsculas.
- **`m` — multiline**: retorna uma string completa incluido as linhas de quebra de linhas.
- **`s` — dotAll**: seleciona todos os caracteres incluindo o elemento `\n`.
- **`u` — unicode**: informa que a string possui elementos UNICODE.
- **`y` — sticky**: procura o próximo match exatamente em `lastIndex`.

### METACARACTERES
- **REPRESENTANTES**
  - `.`: **qualquer caractere, exceto nova linha** — `/a.b/` → `a*b`
  - `[]`: *lista de caracteres* **permitidos** — `/[aeiou]/`
  - `[^]`: *lista de caracteres* **proibidos** — `/[^0-9]/`
- **GRUPOS**
  - `()`: agrupamento e captura — `/(abc)/` captura `abc`
  - `(?:)`:	não captura — `(?:abc)` agrupa, mas não captura
  - `(?=)`: lookahead positivo — `/a(?=b)/` casa `a` se seguido por `b`
  - `(?! )`: lookahead negativo — `/a(?!b)/` casa `a` se não for seguido de `b`
  - `(?<=)`: lookbehind positivo — `/(?<=\$)\d+/` casa número após `$`
  - `(?<! )`: lookbehind negativo — `/(?<!@)\w+/` casa palavra não precedida de `@`
  - `\1...\9`: retrovisor, resgata grupos já definidos
- **ÂNCORAS**
  - `^`: início da string — `/^Olá/`
  - `$`: fim da string — `/fim$/`
- **QUANTIFICADORES**
  - `?`: 0 ou 1 ocorrência (opcional) — `/bo?/` → `b`, `bo`
  - `*`: 0 ou mais ocorrências — `/bo*/` → `b`, `boo`
  - `+`: 1 ou mais ocorrências — `/bo+/` → `bo`, `boo`
  - `{n}`: exatamente n repetições — `/a{3}/` → `aaa`
  - `{n,}`: pelo menos n — `/a{2,}/` → `aa`, `aaa`, ...
  - `{n,m}`: entre n e m — `/a{2,4}/`
- **CONDICIONAIS**
  - `\`: **escape de caracteres LITERAIS** — `/\./` → ponto real
  - `\n`: nova linha
  - `\t`: tabulação
  - `\r`: retorno de carro
  - `\f`: avanço de formulário
  - `\v`: tabulação vertical
  - `\0`: null (caractere nulo)
  - `|`: verifica se a string contém algum dos parâmetros informados — `/cão|gato/`
- **UNICODE**
  - `\p{L}`: letras (Latin, Árabe, etc.)
  - `\p{N}`: números
  - `\p{Script=Greek}`: letras do alfabeto grego
  - `\p{Emoji}`: emojis
- **SHORTHANDS**
  - `\d`: dígito `[0-9]` — `/\d/`
  - `\D`: não dígito `[^0-9]` — `/\D/`
  - `\w`: caractere de palavra `\[A-Za-z0-9_]\` — `/\w/`
  - `\W`: não caractere de palavra `\[^A-Za-z0-9_]\` — `/\W/`
  - `\s`: espaço em branco — `/\s/`
  - `\S`: não espaço em branco — `/\S/`
  - `\b`: fronteira de palavra — `/\bpalavra\b/` → `\bcat\b` casa com a palavra `cat`, mas não `scatter`
  - `\B`: não fronteira de palavra — `/\Bpalavra\B/` → `\Bcat\B` casa com a palavra `cat` e `scatter`

```js
const regexp_match = (txt = "RegExp", exp = / /g) => console.log(txt.match(exp));
// flags
const text = "Caramba cara, qualquer casa, mansão ou barraco, que ela escolher eu vou CASAR E MORAR LÁ COM ELA."
// global & insensitive case
regexp_match(text, /mansão ou barraco/gi); // [ 'mansão ou barraco' ]
regexp_match(text, /cara/gi);              // [ 'Cara', 'cara' ]
regexp_match(text, /Cara/g);               // [ 'Cara' ]
regexp_match(text, /cara/);                /* [
  'cara',
  index: 8,
  input: 'Caramba cara, qualquer casa, mansão ou barraco, que ela escolher eu vou CASAR E MORAR LÁ COM ELA.',
  groups: undefined
] */

// dotall - o metacaractere ponto não engloba o `\n`, para resolver isso existe a flag dotall `s`
const bomDiaN = `Bom\ndia`;
const bomDiaT = `Bom\tdia`;
regexp_match(bomDiaN, /./gi);     // [ 'B', 'o', 'm', 'd', 'i', 'a' ]
regexp_match(bomDiaT, /./gi);     // [ 'B',  'o', 'm', '\t', 'd', 'i', 'a' ]
regexp_match(bomDiaN, /.../gi);   // [ 'Bom', 'dia' ]
regexp_match(bomDiaT, /.../gi);   // [ 'Bom', '\tdi' ]
regexp_match(bomDiaN, /..../gi);  // null
// flag dotall: `s`
regexp_match(bomDiaN, /..../gis); // [ 'Bom\n' ]
regexp_match(bomDiaN, /.../gis);  // [ 'Bom', '\ndi' ]
regexp_match(bomDiaN, /./gis);    // [ 'B',  'o', 'm', '\n', 'd', 'i', 'a' ]
/*
* o metacaractere `.` usado com a flag dotall, consegue capturar quebras de linha `\n`
* entretanto, ele considera apenas 1 linha, ou seja, se a string estiver envolvida em "``"
* e de fato possuir quebras de linha, o dotall não funciona
* para isso existe a flag multiline, que interpreta linha a linha da string
*/
// multiline
const CriaScript = `Eu programo em C#, então eu trabalho usando o **
A vida de junior é fácil, porque não tem trabalho nenhum
Sem espaço no mercado, a IA já tá melhor que eu
Não sei qual linguagem escolho, junior tudo hoje se fu—

Python é bem fácil, porque ele não tipa
Então poderia escolher C
Tentei brincar com Java, dá estresse, então eu passo
E C++ é menos porque eu não sei OOP
Back-end tá difícil, então eu apostei no front
Fiquei mais de uma hora só mudando uma fonte
Centralizar o div é o próprio Inferno de Dante
E o meu LinkedIn tá mais parado que estante

Meu portfólio já tá lá no GitHub
Clonei Nubank e fiz minha Pokédex
Era melhor eu voltar pra engenharia
Onde as merda' que eu fazia eu consertava com durex`;
regexp_match(CriaScript, /\n/g); /* [
  '\n', '\n', '\n', '\n',
  '\n', '\n', '\n', '\n',
  '\n', '\n', '\n', '\n',
  '\n', '\n', '\n', '\n',
  '\n'
] */
regexp_match(CriaScript, /^(\w).+\1$/gi);  // null
regexp_match(CriaScript, /^(\w).+\1$/gis); // null - dotall não funciona aqui
// a flag multiline considera cada linha de forma independente
regexp_match(CriaScript, /^(\w).+\1$/gim); // [ 'E o meu LinkedIn tá mais parado que estante' ]

// caracteres simples
const char = `1,2,3,4,5,6,a.b c!d?e`;
console.log(char.split(/,/)); // [ '1', '2', '3', '4', '5', '6', 'a.b c!d?e' ]
regexp_match(char, /,/);      // [ ',', index: 1, input: '1,2,3,4,5,6,a.b c!d?e', groups: undefined ]
regexp_match(char, /,/g);     // [ ',', ',', ',', ',', ',', ',' ]
console.log(char.match(/,/g).length); // 6
regexp_match(char, /A/g);     // null
regexp_match(char, /A/gi);    // [ 'a' ]
regexp_match(char, /A/i);     // [ 'a', index: 12, input: '1,2,3,4,5,6,a.b c!d?e', groups: undefined ]
regexp_match(char, /2/g);     // 2
regexp_match(char, /b c!d/);  /* [
  'b c!d',
  index: 14,
  input: '1,2,3,4,5,6,a.b c!d?e',
  groups: undefined
] */

// unicode
const unicodeAccent = `ÁÉÍÓÚ ÀÈÌÒÙ ÂÊÎÔÛ Ç ÃÕ Ü áéíóú àèìòù âêîôû ç ãõ ü`;
regexp_match(unicodeAccent, /[À-ü]/g); /* [
  'Á', 'É', 'Í', 'Ó', 'Ú', 'À', 'È',
  'Ì', 'Ò', 'Ù', 'Â', 'Ê', 'Î', 'Ô',
  'Û', 'Ç', 'Ã', 'Õ', 'Ü', 'á', 'é',
  'í', 'ó', 'ú', 'à', 'è', 'ì', 'ò',
  'ù', 'â', 'ê', 'î', 'ô', 'û', 'ç',
  'ã', 'õ', 'ü'
] */

const unicodeSymbols = `aʬc௵e`;
regexp_match(unicodeSymbols, /\u02AC|\u0BF5/g); // [ 'ʬ', '௵' ]
// o meta carctere `.` é um "conringa", pois representa 1 único caractere qualquer que exista na string da expressão
console.log(char.split(/\./g));           // [ '1,2,3,4,5,6,a', 'b c!d?e' ]
console.log(char.split(/,|\.|\?|!| /g));  /* [
  '1', '2', '3', '4',
  '5', '6', 'a', 'b',
  'c', 'd', 'e'
] */

// meta caracteres
// . ? * + - ^ $ | [ ] ( ) \ :
console.log(char.split(/\*|\.|\?|!| /g)); // [ '1,2,3,4,5,6,a', 'b', 'c', 'd', 'e' ]
regexp_match(char, /1\.2/g);              // literal: null
regexp_match(char, /1.2/g);               // meta: [ '1,2' ]
regexp_match(char, /1..2/g);              // null - ou seja, não existe na string um valor 1 e 2 com 2 caracteres entre eles
regexp_match(char, /1..,/g);              // [ '1,2,' ]
const float = `8.3,7.1,8.8,10.0,8,9`;
regexp_match(float, /8../g);  // [ '8.3', '8.8', '8,9' ]
regexp_match(float, /8\../g); // [ '8.3', '8.8' ]
regexp_match(float, /.\../g); // [ '8.3', '7.1', '8.8', '0.0' ]
const files = `lista de arquivos mp3: sertanejo.mp3,funk.mp3,pagode.mp3,rap.mp3,metal.mp3,clássica.mp3`;
console.log(files.match(/\.mp3/g));        // [ '.mp3', '.mp3', '.mp3', '.mp3', '.mp3', '.mp3' ]
console.log(files.match(/\.mp3/g).length); // 6
console.log(files.match(/\w+\.mp3/g));     /* [
  'sertanejo.mp3',
  'funk.mp3',
  'pagode.mp3',
  'rap.mp3',
  'metal.mp3',
  'ssica.mp3'
] */

// pipe `|` — operador lógico `OU`
const JackSparrow = "Agora, traga-me aquele horizonte.";
console.log(JackSparrow.match(/T|ga/));
/* [
  'ga',
  index: 10,
  input: 'Agora, traga-me aquele horizonte.',
  groups: undefined
] */
console.log(JackSparrow.match(/t|ga/i));
/* [
  't',
  index: 7,
  input: 'Agora, traga-me aquele horizonte.',
  groups: undefined
  ] */
console.log(JackSparrow.match(/a|e/gi));
/* [
  'A', 'a', 'a',
  'a', 'e', 'a',
  'e', 'e', 'e'
] */
const simNaoSei = `Você precisa responder sim, não ou não sei!`;
regexp_match(simNaoSei, /sim|não|sei/g);      // [ 'sim', 'não', 'não', 'sei' ]
regexp_match(simNaoSei, /sim|não sei|não/g);  // [ 'sim', 'não', 'não sei' ]
regexp_match(simNaoSei, /sim|não\ssei|não/g); // [ 'sim', 'não', 'não sei' ]

// espaços em branco
const tabText = `
ca	r
r	o s!
`;
regexp_match(tabText, /ca/);              // [ 'ca', index: 1, input: '\nca\tr\nr\to s!\n', groups: undefined ]
regexp_match(tabText, /ca\t/);            // [ 'ca\t', index: 1, input: '\nca\tr\nr\to s!\n', groups: undefined ]
regexp_match(tabText, /ca\tr\nr/);        // [ 'ca\tr\nr', index: 1, input: '\nca\tr\nr\to s!\n', groups: undefined ]
regexp_match(tabText, /ca\tr\nr\t/g);     // [ 'ca\tr\nr\t' ]
regexp_match(tabText, /ca\tr\nr\to\ss/g); // [ 'ca\tr\nr\to s' ]
regexp_match(tabText, /ca\tr\nr\to s!/);  // [ 'ca\tr\nr\to s!', index: 1, input: '\nca\tr\nr\to s!\n', groups: undefined ]
const spaces = `a   b`; // [ 'a   b' ]
regexp_match(spaces, /a +b/g);
regexp_match(spaces, /a {3}b/g);
regexp_match(spaces, /a\s+b/g);
regexp_match(spaces, /a\s{3}b/g);

// conjuntos - para se definir um conjunto de caracteres usa-se `[]`
const set = `1,2,3,4,5,6,a.b c!d?e[f`;
regexp_match(set, /02468/g);   // null
regexp_match(set, /[02468]/g); // [ '2', '4', '6' ]
regexp_match(set, /[02864]/g); // [ '2', '4', '6' ]
const acapulco = `Pode nadar na água da piscina Tesouro, mas não vá se molhar!`;
regexp_match(acapulco, /n[aã]/g);    // [ 'na', 'na', 'na', 'nã' ]
regexp_match(acapulco, /n[aã]./g);   // [ 'nad', 'na ', 'na ', 'não' ]
regexp_match(acapulco, /.n[aã]./g);  // [ ' nad', ' na ', 'ina ', ' não' ]

// intervalos
regexp_match(set, /[a-z]/g);     // [ 'a', 'b', 'c', 'd', 'e', 'f' ]
regexp_match(set, /[b-d]/g);     // [ 'b', 'c', 'd' ]
regexp_match(set, /[2-4]/g);     // [ '2', '3', '4' ]
regexp_match(set, /[a-z0-9]/gi); // [ '1', '2', '3', '4', '5', '6', 'a', 'b', 'c', 'd', 'e', 'f' ]
regexp_match(set, /[a-d0-3]/gi); // [ '1', '2', '3', 'a', 'b', 'c', 'd' ]
regexp_match(set, /[A-D0-3]/gi); // [ '1', '2', '3', 'a', 'b', 'c', 'd' ]
regexp_match(set, /[A-D0-3]/g);  // [ '1', '2', '3' ]

// dentro de conjuntos, os meta caracteres se comportam de maneira literal
const meta = `.?*+-^$`;
regexp_match(meta, /[.?*+-^$]/g);  // [ '.', '?', '*', '+', '-', '^', '$' ]
regexp_match(meta, /[.?*+-^$]./g); // [ '.?', '*+', '-^' ]
regexp_match(meta, /[.]/g);        // [ '.' ]
regexp_match(meta, /[.]./g);       // [ '.?' ]
/*
* ao se trabalhar com intervalos, é imprescindível seguir a ordem da tabela UNICODE
* https://symbl.cc/en/unicode-table/
*
* @example
* regexp_match(range, /[a-Z]/g); // isso não funciona
*/
const range = `ABC [abc] a-c 1234`;
regexp_match(range, /[a-c]/g);    // [ 'a', 'b', 'c', 'a', 'c' ]
regexp_match(range, /a-c/g);      // [ 'a-c' ]
regexp_match(range, /[A-z]/g);    // [ 'A', 'B', 'C', '[', 'a', 'b', 'c', ']', 'a', 'c' ]
regexp_match(range, /[A-Za-z]/g); // [ 'A', 'B', 'C', 'a', 'b', 'c', 'a', 'c' ]

// conjuntos negados
const blacklist = `1,2,3,a.b c!d?e[f`;
regexp_match(blacklist, /\D/g);              // [ ',', ',', ',', 'a', '.', 'b', ' ', 'c', '!', 'd', '?', 'e', '[', 'f' ]
regexp_match(blacklist, /[^0-9]/g);          // [ ',', ',', ',', 'a', '.', 'b', ' ', 'c', '!', 'd', '?', 'e', '[', 'f' ]
regexp_match(blacklist, /[^\d!\?\[\s,\.]/g); // [ 'a', 'b', 'c', 'd', 'e', 'f' ]
const code = `1: !"#$%&\'()*+,-./ 2: :;<=>?@`;
regexp_match(code, /[^!-/:-@\s]/g);          // negando intervalos: [ '1', '2' ]

// quantificadores
const no = `no nooo nooooo`;
const na = `na naaa naaaaa`;
const fog = `fog fogo fogooo`

// ? = 0 || 1
regexp_match(no, /no?/gi);    // [ 'no', 'no', 'no' ]
regexp_match(na, /na?/gi);    // [ 'na', 'na', 'na' ]
regexp_match(fog, /fogo?/gi); // [ 'fog', 'fogo', 'fogo' ]

// + = 1 || 1>+
regexp_match(no, /no+/gi);    // [ 'no', 'nooo', 'nooooo' ]
regexp_match(na, /na+/gi);    // [ 'na', 'naaa', 'naaaaa' ]
regexp_match(fog, /fogo+/gi); // [ 'fogo', 'fogooo' ]

// * = 0 || 0>+
regexp_match(no, /no*/gi);    // [ 'no', 'nooo', 'nooooo' ]
regexp_match(na, /na*/gi);    // [ 'na', 'naaa', 'naaaaa' ]
regexp_match(fog, /fogo*/gi); // [ 'fog', 'fogo', 'fogooo' ]

// range = {min, max}
const primaryNumbers = `0123456789`;
regexp_match(primaryNumbers, /\d{1,2}/g); // [ '01', '23', '45', '67', '89', '0', '12', '34', '5', '56', '78' ]
regexp_match(primaryNumbers, /\d{1,5}/g); // [ '01234', '56789', '0', '12', '345', '5678' ]
regexp_match(primaryNumbers, /\d{1}/g);   /* [
  '0', '1', '2', '3', '4',
  '5', '6', '7', '8', '9',
  '0', '1', '2', '3', '4',
  '5', '5', '6', '7', '8'
] */
regexp_match(primaryNumbers, /\d{2,}/g);  // [ '0123456789', '12', '345', '5678' ]

const fogao = `fog fogão fogo fogooo`
regexp_match(fogao, /\w{4}/g);       // [ 'fogo', 'fogo' ]
regexp_match(fogao, /[\wã]{4}/g);    // [ 'fogã', 'fogo', 'fogo' ]
regexp_match(fogao, /[\wã\s]{4}/g);  // [ 'fog ', 'fogã', 'o fo', 'go f', 'ogoo' ]
regexp_match(fogao, /[\wã\s]{4,}/g); // [ 'fog fogão fogo fogooo' ]
regexp_match(fogao, /[\wã]{4,}/g);   // [ 'fogão', 'fogo', 'fogooo' ]

regexp_match(no, /o{1,4}/g);    // [ 'o', 'ooo', 'oooo', 'o' ]
regexp_match(no, /no{3,5}/g);   // [ 'nooo', 'nooooo' ]
regexp_match(no, /no{3}/g);     // [ 'nooo', 'nooo' ]

regexp_match(na, /a{2,4}/g);    // [ 'aaa', 'aaaa' ]
regexp_match(na, /na{1,3}/g);   // [ 'na', 'naaa', 'naaa' ]
regexp_match(na, /na{2,}/g);    // [ 'naaa', 'naaaaa' ]

regexp_match(fog, /fogo{3}/g);  // [ 'fogooo' ]
regexp_match(fog, /fog{1,}/g);  // [ 'fog', 'fog', 'fog' ]


// grupos

const ImNottheOnlyOne = `You say I'm crazy \n
'Cause you don't think I know what you've done \n
But when you call me "baby" \n
I know I'm not the only one \n
\n
I know I'm not the only one \n
I know I'm not the only one \n
And I know, and I know, and I know, and I know, and I know, and I know, know \n
I know I'm not the only one`;
regexp_match(ImNottheOnlyOne, /(I'm not the only one)/g); /* [
  "I'm not the only one",
  "I'm not the only one",
  "I'm not the only one",
  "I'm not the only one"
] */

const BOOM = `The future is bulletproof \n
The aftermath is secondary \n
It's time to do it now and do it loud \n
Killjoys, make some noise \n
Na, na-na, na-na, na-na, na-na \n
Na, na-na, na-na, na-na \n
Na, na-na, na-na, na-na \n
Na-na, na-na, na-na`;
regexp_match(BOOM, /(na).+/gi); /* [
  'Na, na-na, na-na, na-na, na-na',
  'Na, na-na, na-na, na-na',
  'Na, na-na, na-na, na-na',
  'Na-na, na-na, na-na'
] */

const url = `https://www.site.info https://github.com www.school.code.br google.com google.com.br`;
regexp_match(url, /(https:\/\/)?(www\.)?\w*\.(\w*)?\.?(\w*)?/g); /* [
  'https://www.site.info',
  'https://github.com',
  'www.school.code.br',
  'google.com',
  'google.com.br'
] */

// lookbacks

const aalpha = `aabcdefghijkk`;
regexp_match(aalpha, /(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)/g);      // [ 'abcdefghijk' ]
regexp_match(aalpha, /(a)\1(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)\11/g); // [ 'aabcdefghijkk' ]

const section = `<h3>RegExp</h3><p>Hello world!</p>`;
regexp_match(section, /<(\w+)>.*<\/(\1)>/gi); // [ '<h3>RegExp</h3>', '<p>Hello world!</p>' ]

const mind = `Lentamente, é uma mente muito lenta.`;
regexp_match(mind, /(lenta)?(mente)?/gi);                 // [ 'Lentamente', 'mente', 'lenta' ]
regexp_match(mind, /(lenta|mente)/gi);                    // [ 'Lenta', 'mente', 'mente', 'lenta' ]
console.log(mind.replace(/(lenta)(mente)/gi, `$2`));      // mente, é uma mente muito lenta.
console.log(mind.replace(/(lenta)(mente)/gi, `Louca$2`)); // Loucamente, é uma mente muito lenta.

// grupos aninhados
const market = `hipermercado supermercado mercado minimercado`;
regexp_match(market, /(hiper|super|mini)?mercado/g); // [ 'hipermercado', 'supermercado', 'mercado', 'minimercado' ]
regexp_match(market, /((hi|su|)per|mini)?mercado/g); // [ 'hipermercado', 'supermercado', 'mercado', 'minimercado' ]

// grupos não existem dentro de conjuntos, mas conjuntos existem dentro de grupos
const groups = `(a) ABC`;
regexp_match(groups, /[(abc)]/gi); // [ '(', 'a', ')', 'A', 'B', 'C' ]
regexp_match(groups, /([abc])/gi); // [ 'a', 'A', 'B', 'C' ]

// grupos especiais
const tigers = `Três pratos de trigo para três tigres tristes.`;
const Super = `supermercado HIPERMERCADO Mercado superação`;

regexp_match(tigers, /[\wÀ-ü]+/g); /* [
  'Três',   'pratos',
  'de',     'trigo',
  'para',   'três',
  'tigres', 'tristes'
] */

regexp_match(Super, /[\wÀ-ü]+/g); // [ 'supermercado', 'HIPERMERCADO', 'Mercado', 'superação' ]

// positive lookahead
regexp_match(tigers, /[\wÀ-ü]+(?=ê)/g);  // [ 'Tr', 'tr' ]
regexp_match(tigers, /[\wÀ-ü]+(?=\.)/g); // [ 'tristes' ]
// negative lookahead
regexp_match(tigers, /[\wÀ-ü]+[\s](?!para)/gi); // [ 'Três ', 'pratos ', 'de ', 'para ', 'três ', 'tigres ' ]
regexp_match(tigers, /[\wÀ-ü]+[\s](?!\.)/gi);   /* [
  'Três ',   'pratos ',
  'de ',     'trigo ',
  'para ',   'três ',
  'tigres '
] */
// positive lookbehind
regexp_match(Super, /(?<=super)[\wÀ-ü]+/g); // [ 'mercado', 'ação' ]
// negative lookbehind
regexp_match(Super, /(?<!super)mercado/gi); // [ 'MERCADO', 'Mercado' ]

// comportamento operadores
const div = `<div>content one</div><div>content two</div>`;

// greedy
regexp_match(div, /<div>.+<\/div>/g); // [ '<div>content one</div><div>content two</div>' ]
regexp_match(div, /<div>.*<\/div>/g); // [ '<div>content one</div><div>content two</div>' ]

// lazy
regexp_match(div, /<div>.+?<\/div>/g); // [ '<div>content one</div>', '<div>content two</div>' ]
regexp_match(div, /<div>.*?<\/div>/g); // [ '<div>content one</div>', '<div>content two</div>' ]

// bordas de linhas
const coffee = `Quero café! Isso aqui é uma porcaria, que não tem m3rd@ nenhuma! \nDesculpe...`;
regexp_match(coffee, /q/gi);      // [ 'Q', 'q', 'q' ]
regexp_match(coffee, /^q|\.$/gi); // [ 'Q', '.' ]
regexp_match(coffee, /\bq.*!/gi); // [ 'Quero café! Isso aqui é uma porcaria, que não tem m3rd@ nenhuma!' ]
regexp_match(coffee, /ne.*/g);    // [ 'nenhuma! ' ]

// bordas de palavras
const diaNormal = `dia diatonico diafragma media wikipedia bom_dia melodia radial`;
regexp_match(diaNormal, /\w+dia\w+/gi); // [ 'radial' ]
regexp_match(diaNormal, /\bdia\w*/gi);  // [ 'dia', 'diatonico', 'diafragma' ]
regexp_match(diaNormal, /\bdia\w+/gi);  // [ 'diatonico', 'diafragma' ]
regexp_match(diaNormal, /\w+dia\b/gi);  // [ 'media', 'wikipedia', 'bom_dia', 'melodia' ]
regexp_match(diaNormal, /\w*dia\b/gi);  // [ 'dia', 'media', 'wikipedia', 'bom_dia', 'melodia' ]
regexp_match(diaNormal, /dia/gi);       /* [
  'dia', 'dia',
  'dia', 'dia',
  'dia', 'dia',
  'dia', 'dia'
] */
regexp_match(diaNormal, /\bdia\b/gi);   // [ 'dia' ]
/* borda é `\W`, ou seja [^A-z0-9], o que significa que caracteres fora deste range podem causar comportamentos inesperados
   pois se comportam como delimitadores de borda */
const diaDificil = `dia diatônico diafragma, média wikipédia bom-dia melodia radial.`;
regexp_match(diaDificil, /\bdia\b/gi);
/*dia média wikipédia bom-dia
[ 'dia', 'dia', 'dia', 'dia' ]*/
const solucao = /(\S*([^,\.]))?/;
regexp_match(diaDificil, /(\S*)?dia(\S*)?/gi); /* [
  'dia',
  'diatônico',
  'diafragma,',
  'média',
  'wikipédia',
  'bom-dia',
  'melodia',
  'radial.'
] */
regexp_match(diaDificil, /([\wÁ-ü-]*)?dia([\wÁ-ü-]*)?/gi); /* [
  'dia',       'diatônico',
  'diafragma', 'média',
  'wikipédia', 'bom-dia',
  'melodia',   'radial'
] */

// shorthands
const shorthands = `1,2,3,4,5,6,a.b c!d?e\r	-\f
f_g`;
regexp_match(shorthands, /\d/g); // [ '1', '2', '3', '4', '5', '6' ]
regexp_match(shorthands, /\D/g); /* [
  ',',  ',', ',',  ',', ',',
  ',',  'a', '.',  'b', ' ',
  'c',  '!', 'd',  '?', 'e',
  '\t', '-', '\n', 'f', '_',
  'g'
] */
regexp_match(shorthands, /\w/g); /* [
  '1', '2', '3', '4',
  '5', '6', 'a', 'b',
  'c', 'd', 'e', 'f',
  '_', 'g'
] */
regexp_match(shorthands, /\W/g); /* [
  ',',  ',', ',',  ',',
  ',',  ',', '.',  ' ',
  '!',  '?', '\t', '-',
  '\n'
] */
regexp_match(shorthands, /\s/g); // [ ' ', '\r', '\t', '\f', '\n' ]
regexp_match(shorthands, /\S/g); /* [
  '1', ',', '2', ',', '3',
  ',', '4', ',', '5', ',',
  '6', ',', 'a', '.', 'b',
  'c', '!', 'd', '?', 'e',
  '-', 'f', '_', 'g'
] */
regexp_match(shorthands, /\r/g); // [ '\r' ]
regexp_match(shorthands, /\f/g); // [ '\f' ]

// desafios
// CPF
const cpfs = `CPF aprovados:
                — 600.567.890-12
                — 75789622306
                — 101156470-90
                — 200 707 770-90
                — 765.998.345-23
                — 165.876.835-06
                — 759.863.491-58
                — 004.567.109-09`;
regexp_match(cpfs, /\d.{1,}/g);

// Telefones
const phoneNumbers = `Lista telefônica:
                        — (31) 97851-6487
                        — (11) 98834-7665
                        — (21) 97681-4117
                        — (85) 9 9441-0059
                        — 9 9352-8754
                        — 99563-1244
                        — (32) 977549864
                        — (51) 9 85001478
                        — 9 78891354
                        — 997852147`;

const numbers = phoneNumbers => phoneNumbers.match(/.\d.*/gi).map(unformatedNumber => {
    let formatedNumber = unformatedNumber.replace(/\s|\(|\)|-/gi, "");
    formatedNumber = formatedNumber.length < 11 ? `31${formatedNumber}` : formatedNumber;
    return `https://wa.me/55${formatedNumber}`;
});

console.log(numbers(phoneNumbers).sort())

// e-mail
const emails = `e-mails:
                  — 0n@code.com.br
                  — r4lp@code.com.br
                  — raphael@code.com.br
                  — ralph@email.com
                  — raphael-kaique@email.com
                  — raphael.kaique_1@email.com
                  — raphaelkaique1@gmail.com`;
regexp_match(emails, /\w.+@.+/g);

// IP
const byteList = `0 1 10 20 29 30 99 192 199 201 249 255 256 312 1010 1512`;
//                               0-99    1 0-99 2 0-4 \d 25 0-5
regexp_match(byteList, /\b(\d{1,2}|1\d{2}|2[0-4]\d|25[0-5])\b/g);
const IPList = `
Inválidos:
    192.268.0.1
    1.333.1.1
    192.168.0.256
    256.256.256.256

Válidos:
    192.168.0.1
    127.0.0.1
    10.0.0.255
    10.11.12.0
    255.255.255.255
`;
const byteRange = "(\\d{1,2}|1\\d{2}|2[0-4]\\d|25[0-5])";
const ipv4 = new RegExp(`\\b${byteRange}\\.${byteRange}\\.${byteRange}\\.${byteRange}\\b`, 'g');
regexp_match(IPList, ipv4);

// password
const password = `
123456789
cod3r
QUASE123!
#0pA1
@sjeSASf5A%gAs6dgf213#fAS

Strong@3993`;

regexp_match(password, /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%&*-_.~^]).{8,16}$/gm);
```

## TERMINAL
```Shell
# Linux - ShellScript

user@localhost:~$ # user is logged in to localhost
# $ = common user
# # = super user

[ctrl] + [Alt] + [T] # open the terminal
[ctrl] + [z] # "pause" a process opened by the terminal to free up the CLI
bg # keeps the paused program open to be used independently of the terminal
command -l
command -labcd
command --word
command --full-sentence
man command || help command
systemctl --help
export --help
set --help
time # shows the details of an action
printf "format" [arguments]
printf "Hello, %s!\n" "world" # printf allows you to specify the formatting of the output using format specifiers such as %s (string), %d (decimal integer), %f (floating point number)...
printf "Line 1\nLine 2\n" # does not add automatic line break at the end of the line
echo 'content' # displays text in the terminal
echo -e "Line 1\nLine 2" # -e interprets special characters such as \n (new line) or \t (tab)
'' # treats all content as text
"" # treats the content as code by displaying the text and executing the variables
!! # execute the last command
!?systemctl? # searches for the term and executes the command
top # shows real-time information about processes running on the system
ps aux # displays running processes, list information about all processes running on the system
ps aux | grep search_expression # `|` (PIPE) uses the command output as input for the next command - grep: command that is used to search for patterns in a text, when combined with the `ps aux` command, it filters the results to only show lines that match the specified pattern
command parameter argument && command parameter argument # `&&` (AND) = execute different commands in sequence if the previous command is successful
command parameter argument || command parameter argument # `||` (OR) = runs a second command if the first fails
kill PID # stop a process
kill -9 PID # force a process to stop
[ctrl] + [C] # closes the process
sleep 5 # suspends the system for a specified period of time
clear || [ctrl] + [L] # clean the terminal
sudo su # access super user permission
su # access root
su user_name # switches to the selected user
useradd user_name -m -c "User Name" -s /bin/bash -e dd/mm/yyyy -p $(openssl passwd -crypt Password#0) -G GROUP_NAME # add users
└───────┬───────┘└─┬┘└──────┬─────┘ └─────┬────┘ └─────┬─────┘ └───────────────────┬────────────────┘ └──────┬─────┘
        |          |        |             |            |                           |                         └ adds the user to a group
        |          |        |             |            |                           └ set the password
        |          |        |             |            └ sets an access expiration date
        |          |        |             └ define the shell
        |          |        └ set logon user name
        |          └ create the home folder
        └ user name
usermod --help
passwd --help
usermod user_name -s /bin/bash || passwd user_name -e # user edits
mkdir /home/user_name # creates a home folder for the user
chsh --help
chsh -s /bin/bash user_name # define the shell
chown --help
chown [option] new_owner[:new_group] file.type
chown user_name file.type # change file owner
chown user_name:group_name file.type # change the owner and group of a file
chown :group_name file.type # change the group of a file while keeping the owner
chown -R user_name /home/user_name # gives the created super user permission to their home folder
chown -R user_name:group_name /home/user_name # changes the user and group of all files and directories within a directory
login # select the user
passwd # change password
sudo passwd root # assigns password to user
passwd user_name # create/change a user's password
user del -f -r user_name # delete the user
groupadd GROUP_NAME # create a group
usermod -G GROUP_NAME user_name # add users to group
usermod -G GROUP_NAME-1,GROUP_NAME-2,GROUP_NAME-3 user_name # add users to more groups
gpasswd -d user_name GROUP_NAME # remove user from GROUP
groups user_name # shows which groups a user belongs to
groupdel GROUP_NAME # delete the group
poweroff # force shutdown
init 0 # turns off immediately correctly
halt # turns off immediately correctly
shutdown # will turn off in 60 seconds
shutdown now # turns off immediately
shutdown -h now # turns off immediately correctly
shutdown 00:00 # turns off at the specified time
shutdown +10 # turns off after a specific time
shutdown -r now || shutdown -r 00:00 || shutdown -r +10 ||  # schedule the restart
shutdown -c # cancel a scheduled shutdown
reboot # restart
exit # close the terminal
exit 1 # causes that, if the command exits with a status other than 0 (true), it will not be executed, nor will the following commands.

# std
command --help # command documentation
man tool_name # tool manual

# Types of commands
command type # shows the type of command

# internal commands: native OS commands
# ls = list command
# -l = long list parameter
# -a = all parameter
# /directory/directory/ = argument
ls -la /usr/bin less
ls [dir_path/dir_name] | more
ls dir_path/dir_name/f*
ls file_name[1-3]* # file_name1.md file_name2.txt file_name3.sh
ls file_name[1,3]* # file_name1.md file_name3.sh
ls file_name[1-3,5]* # file_name1.md file_name2.txt fale_name3.sh file_name5.conf
ls file_name[^2,4]* # file_name1.md file_name3.sh file_name5.conf
ls file_name[^1-3]* # file_name2.txt file_name5.conf
ls file_name?.conf # file_name5.conf

# external commands: special and user-created commands

# Packages
apt || apt-get # Advanced Package Tool
apt update # check for available updates
apt upgrade -y # update packages
apt-get dist-upgrade -y # update distribution version
apt list # list installed packs
apt search pack_name # search specific pack
apt show pack_name # shows pack info
apt install pack_name -y # install specific pack
apt clean # clears local package cache
apt autoremove -y # automatically remove unnecessary packs
apt purge pack_name -y # remove packs along with all their configuration files
apt remove -y <nome_do_programa> && sudo apt purge -y <nome_do_programa> && sudo rm -r /etc/<nome_do_programa> && sudo apt update # delete a program
# snap = snaps are universal packs that include all dependencies needed to run an application, making them independent of the underlying operating system
snap refresh # update packs
snap find pack_name # search specific pack
snap install pack_name # install specific pack
snap info pack_name # # shows pack info
snap list # list installed packs
snap remove pack_name && sudo apt purge snapd && sudo apt install snapd && snap refresh # remove packs

# Directory
pwd # shows the current directory path
tree # shows directories tree
cd && cd / # home directory
cd / # main
cd ~ # home
cd .. # up
cd - # return
cd . # current directory
cd directory # go to directory
cd home/user_directory/directory/directory # follow the path
mkdir directory_name || mkdir directory_name/subdirectory_name # create directory
mkdir -p directory_name/subdirectory_name # creates multiple directories

# Permissions & Files
- # file
d # directory
l # link
daaa # a - user permissions
-aaabbb # b - group permissions
daaabbbccc # c - other users
-rwx # -r read | -w write | -x execute
-rw- # -r read | -w write | - none
drwxr-xr-x 5 root root 3090 jan 1 23:30 boot
└────┬───┘ | └─┬┘ └─┬┘ └─┬┘└─────┬─────┘└─┬┘
     |     |   |    |    |       |        └ name
     |     |   |    |    |       └ creation date
     |     |   |    |    └ size
     |     |   |    └ group
     |     |   └ owner
     |     └ amount of objects
     └ permissions
chmod u+rw directory_name # user read and write
chmod u-w directory_name # only reading
chmod u-rw directory_name # locked directory for a user
chmod g-rw directory_name # locked directory for a group
chmod o-rw directory_name # folder accessed only by the owner
chmod +x /directory/file_name.type # gives the file execution and modification permission
chmod -x /directory/file_name.type # removes the file execution and modification permission
# r = 4
# w = 2
# x = 1
# '' = 0
chmod 770

. file_name.type || ./directory/file_name.type # execute the script from the file
touch file_name.type # create a file in the current directory
touch directory_name/subdirectory_name/file_name.type # creates a file in the specified directory
touch directory_name/file-1.type directory_name/file-2.type directory_name/file-3.type # creates multiple files
rm -r directory_name # remove directories
rm file_name.type # remove a file
echo 'text' > file_name.type # creates a file with content in the current directory, redirects the output into a file, in this case, redirects from the terminal to the new file, or overwriting if it is an existing file
echo "content $(date)" > directory_name/subdirectory_name/file_name.type # creates a file with content in the specified directory
echo "content $(date)" >> file_name.type # add the output to end of file
echo 'text' >> directory_name/subdirectory_name/file_name.type # add the output to end of file in a especific path
cut -d"cut_parameter" -f"column_delimiter_number" # returns the fields that were delimited from the text
command file_name.type | awk "{print $column_delimiter_number}" # filters the elements of the column passed as argument, each column ("word") of the file must be separated by space " "
cat file_name.type # reads file's content (must be in the same directory as the file)
tac file_name.type # reads the file from last to first line
filter_command less # vertical navigation in long lists
grep --help
grep "content" directory_name/file_name.type # searches for the requested term in the specified file
grep -i "content" directory_name/file_name.type # -i = ignore case sensitive
find --help
find directory_path search_expression # performs a search based on the given parameter
find ~/directory_path -name "search_expression" # search file by name
find ~/directory_path -type f # search file by type, this will return all files within the directory
find ~/directory_path -type d # search directories, this will return all directories within the directory
find ~/directory_path -type f -name "*.type" # find files by type, this will find all files with the specified extension within the directory
find ~/directory_path -type f -size +10M # find files by size, this will find all files larger than 10 megabytes within the directory
find ~/directory_path -type f -perm 644 # find files by permissions, iThis will find all files with exactly 644 permissions
find ~/directory_path -type f -exec command '{file_name.type}' \; # performs an action on found files, this will execute the specified command on each file found within the directory
find ~/directory_path -maxdepth 1 -type f -executable # -maxdepth 1 = limits the search to the current directory only, without entering subdirectories
find . -maxdepth 1 -type f -executable -name 'program_name' # example
find ~/directory/subdirectory -type f -executable # this will search for executable programs in the directory specified in /path/do/your/directory and its subdirectories
find ~/directory/subdirectory -maxdepth 1 -type f -executable # this will only return executable programs directly within the specified directory without going into its subdirectories
find ~/directory/subdirectory -mtime 10 # finds files with changes in the period specified in days
head ~/directory/file_name.type || head file_name.type # displays only the first 10 lines of the file
head -n5 file_name.type # displays only the first 5 lines of the file
nl ~/directory/file_name.type # enumerates the lines of the file
nl file_name.type [> || >>] new_enumerated_file.type # write to a file (whether blank file, added to the end or overwriting an existing one) the lines that were enumerated
tail file_name.type # displays only the last 10 lines of the file
tail -n5 file_name.type # displays only the last 5 lines of the file
# wc -c file_name.type || wc -w file_name.type || wc -l file_name.type
sort file_name.type # sorts the lines of a file alphabetically
sort -r file_name.type # sorts the lines of a file in reverse alphabetical order
paste file-1.type file-2.type # concatenates the lines of the files and displays them in the terminal
paste file-1.type file-2.type > new_file.type # concatenates the lines of the files and writes the output to a new file
paste file-1.type file-2.type >> file_name.type # concatenates the lines of the files and writes output to the end of an existing file
join file_name.type file_name.type # concatenates the lines of files as long as they are ordered numerically
nano file_name.type # creates a file and opens the editor to modify it
vi file_name.type
[Esc] # back to previous menu
[:] # open menu
w # save
q # quit
i # edit mode
vim --help || neovim --help || visudo --help || emacs --help
gcc file_name.c -o program_name # compiling C code using `gcc`
./program_name || . program_name # runs the program from the compiled code
dif file_name.type file_name.type # compare files line by line
tar --help
tar -cf file_name.tar file_name.type file_name.type /directory_path/directory_path/directory_name # -c create/compress | -f give a name to file.tar - joins the files into a single file
tar -xf file_name.tar # -x decompress | -f file to decompress
xz || gz # compression algorithm
tar -cJf fily_name.tar.xz file_name.type file_name.type /directory_path/directory_path/directory_name # -J xz compression type
tar -xJf fily_name.tar.xz
tar -czf fily_name.tar.gz file_name.type file_name.type /directory_path/directory_path/directory_name  # -z gzip compression type
tar -xzf fily_name.tar.gz
split --help
zip [-options] file_name.zip directory
zip file_name.zip file-1_name.type file-2_name.type # file compressor
zip -r directory.zip directory_name # directory compressor
zip -u target.zip new_file.type # add files to an existing ZIP archive
zip -d target.zip file.type # delete files from a ZIP archive
unzip target.zip # file ZIP decompressor
cp file_name.type directory_name # creates a copy of the file in the specified directory
mv file_name.type directory_name # moves the file for the specified directory
mv file_name.type file_name.type # rename the file

# Other commands
cal || cal m yyyy
date
free
who
whoami
uname -a
hostname
dnsdomainname
history || history 10 || history -c || history | grep *term*
export HISTTIMEFORMAT=" %c"
set +o history # disable saving
set -o history # enable saving
file
dmseg | less
df -h || df -h directory
du -sh || du -ch

# Web
ping -c 5 https://ubuntu.com/ # tests the connection by sending a specified number of packets to the destination

# Shell Script

# !!! subshell & working with more than one terminal

#!/bin/bash # #! - command interpreter | /... - path to interpreter

# $ - is a marker that defines parameters, using `_` it receives as a parameter the last parameter of the previous function, using numbers it receives as a parameter the corresponding parameter of the last function executed, for example, `$1` receives the first parameter of the last function, `$2` receives the second parameter, and so on.

parameter="$_" # receives the first parameter passed, to use another parameter just indicate its position
'example: sudo chmod +x ./file.sh && ./file.sh 10

file.sh:

#!/bin/bash

seconds="$1"

echo "executing"
sleep $seconds
echo "ending"'

# Script
sudo echo '#!/bin/bash

echo "file in execution"
gdialog --title "INITIALIZE PROGRAM" --caption "PROGRAM ON" --msgbox "GUI - Shell Script Program"
name="$(gdialog --title "USER NAME" --inputbox "Input user name")"

start_function() {
	# if-else
	if gdialog --title "INSTALL UPDATES" --caption "Updates" --yesno "Would you like to install the necessary updates automatically?"
		then
		    # for
		    for ((i = 1; i <= 10; i++))
			    do
			    	# arrays
				status[1]="checking..."
				echo "${status[1]} $i"
			    done

		    status[2]="finished"
		    echo "${status[2]}"

		    upmach

		    if gdialog --title "RESET TO INSTALL UPDATES" --caption "Reboot" --yesno "Would you like to restart your mach to correctly install updates?"
			    then
				sudo reboot
			    else
				if gdialog --title "ALERT" --yesno "Are you sure? You will need to manually restart to finish the update..."
					then
						# while
						load=1
						while [[ $load -le 10 ]]
							do
							    (( load++ ))
							    echo "loading..."
							done
					else
						sudo reboot
				fi
		    fi
		else
		    gdialog --title "COMPLETED SUCCESSFULLY" --msgbox "You will need to manually install the updates."
	fi
	script_function

}

script_function() {
	if gdialog --title "SCRIPT" --caption "Code" --yesno "Would you like to see the script?"
		then
			cat file_name.sh
			if gdialog --title "EDIT SCRIPT" --caption "Edit code" --yesno "Would you like to edit the script?"
				then
					nano file_name.sh
				else
					echo "..."
			fi
		else
			echo "..."
	fi
}

upmach() {
	gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
	gsettings set org.gnome.desktop.session idle-delay 0
	gsettings set org.gnome.desktop.screensaver lock-enabled false
	gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
 	gsettings set org.gnome.shell favorite-apps "[]"
  	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
    	wget https://github.com/raphaelkaiquediasdossantos/ubuntu/assets/158761483/016e61bb-98f8-4c27-a160-5b6045c4219f
    	mv 016e61bb-98f8-4c27-a160-5b6045c4219f ~/Downloads/.fuck-all-foxes.png
	gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/$USER/Downloads/.fuck-all-foxes.png"
	gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/Downloads/.fuck-all-foxes.png"
   	wget https://github.com/raphaelkaiquediasdossantos/ubuntu/assets/158761483/1eb0d956-f297-4ba9-8c3d-fabc906c15d4
    	mv 1eb0d956-f297-4ba9-8c3d-fabc906c15d4 ~/Downloads/.ubuntu.png

	# dpkg
	sudo dpkg --configure -a

	# apt
	sudo apt update
	sudo apt upgrade -y
	sudo apt full-upgrade -y
	sudo apt dist-upgrade -y
	sudo apt install --fix-broken
	sudo apt install --fix-missing
	sudo apt install --install-recommends
	sudo apt install --install-suggests
	sudo apt install --purge
	sudo apt install --remove
	sudo apt autoclean -y
	sudo apt autoremove -y
	sudo apt autopurge -y

	# apt-get
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get dist-upgrade
	sudo apt-get purge -y
	sudo apt-get remove -y
	sudo apt-get clean -y
	sudo apt-get autoremove -y
	sudo apt-get autoclean -y
	
	# drives, snap and firmware
	sudo ubuntu-drivers autoinstall
	sudo snap refresh
	sudo fwupdmgr refresh
	sudo fwupdmgr get-updates -y
	sudo fwupdmgr update -y --no-reboot-check
	sudo fwupdmgr get-upgrades -y
	sudo fwupdmgr upgrade -y
 
	# cleaning cache
	sudo sync; sudo sysctl -w vm.drop_caches=3

	gsettings reset org.gnome.desktop.session idle-delay
	gsettings reset org.gnome.desktop.screensaver lock-enabled
	gsettings reset org.gnome.desktop.screensaver ubuntu-lock-on-suspend
}

start_function' > /usr/local/bin/upsystem.sh && sudo chmod +x /usr/local/bin/upsystem.sh && upsystem

nano file_name.sh
[ctrl] + [o]
'enter'
[ctrl] + [x]
```
<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-hardware_e_software/sistemas_operacionais.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#hardware_e_software">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.1-hardware_e_software/redes_de_computadores.md">next</a>