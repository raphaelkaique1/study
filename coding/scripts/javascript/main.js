// const userData = await fetch("https://api.github.com/users/raphaelkaique1").then(data => data.json()).catch(error => console.log(error));
// console.log(userData);

// let Button = (name, style) => {
//   const $body = document.querySelector("body");
//   const $button = document.createElement("button");

//   $button.textContent = name;

//   style($button)

//   $body.insertAdjacentElement("beforeend", $button);
//   return $button;
// };

// Button("convert", button => {
//   button.addEventListener("click", () => console.log("login fetch"));
// });

class Currency {
  constructor({symbol, currency}) {
    this.symbol = symbol,
    this.currency = currency;
  }

  async coin() {
    try {
      // realiza a requisicao
      const api = await fetch(`https://economia.awesomeapi.com.br/last/${this.symbol}`).then(data => data.json());

      // constroi o nome da propriedade para acessar o objeto
      const coin = this.symbol.split("-").join("");

      // acessa o `bid` e converte para tipo numerico para trabalhar a exibicao do valor em R$
      let value = Number(api[coin].bid);
      value = value.toLocaleString("pt-BR", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
      });

      return value;
    } catch(error) {
      console.log(error);
    }
  }

  async price() {
    const value = await this.coin(); // inicia na chamada
    console.log(`${this.currency}: ${value}`);

    setInterval(async() => {
    return await this.coin(); // repete no intervalo setado
    }, 3 * 1000);
  }
}

const SYMBOLS = { us_br: {currency: "U$D/BR$", symbol: "USD-BRL"}, btc_us: {currency: "₿TC/U$D", symbol: "BTC-USD"}, btc_br: {currency: "₿TC/BR$", symbol: "BTC-BRL"}};
const us_br = new Currency(SYMBOLS.us_br);
const btc_us = new Currency(SYMBOLS.btc_us);
const btc_br = new Currency(SYMBOLS.btc_br);
const coins = [us_br.coin(), btc_us.coin(), btc_br.coin()];

const displayAllPrices = async([coin1, coin2, coin3]) => {
  // const [usdbrl, btcusd, btcbrl] = await Promise.all([coin1, coin2, coin3]);
  // console.log(`${SYMBOLS.us_br.currency}: ${usdbrl} | ${SYMBOLS.btc_us.currency}: ${btcusd} | ${SYMBOLS.btc_br.currency}: ${btcbrl}`);

  Promise.all([coin1, coin2, coin3])
    .then(([coin1, coin2, coin3]) =>
      console.log(`${SYMBOLS.us_br.currency}: ${coin1} | ${SYMBOLS.btc_us.currency}: ${coin2} | ${SYMBOLS.btc_br.currency}: ${coin3}`)
    )
    .catch(error => console.log(error));

}

displayAllPrices(coins).then(setInterval(() => {displayAllPrices(coins)}, 3 * 1000));

// exercício palíndromo
const palindrome = word => word.toLowerCase() === word.toLowerCase().split("").reverse().join("");
console.log(palindrome("Raphael")); // false
console.log(palindrome("Radar")); // true



// const carrinho = [
//   { produto: "Arroz", preco: 7.50 },
//   { produto: "Feijão", preco: 8.90 },
//   { produto: "Macarrão", preco: 5.20 },
//   { produto: "Molho de tomate", preco: 4.00 }
// ];

// const valorTotal = carrinho.reduce((soma, valor) => soma + valor.preco, 0).toLocaleString("pt-BR", {
//     minimumFractionDigits: 2,
//     maximumFractionDigits: 2
// });

// console.log(`Total da compra: R$ ${valorTotal}`);

const alunos = [
  { nome: "Déborah", notas: [8, 7.5, 9] },
  { nome: "Théo", notas: [6, 5, 7] },
  { nome: "Raphael", notas: [9, 9.5, 10] },
  { nome: "Maria", notas: [4, 6.5, 5] },
  { nome: "Diego", notas: [7, 8, 7] }
];

// calcular a média de cada aluno
/*
primeira tentativa: resolvendo o problema
const Media = alunos => {
  let boletim = []
  for(aluno of alunos) {
    boletim.push({aluno: aluno.nome, media: Number((aluno.notas.reduce((media, nota) => media + nota) / aluno.notas.length).toFixed(2))})
  }
  return boletim
}


segunda tentativa: otimizando o resultado
const Media = alunos => {
  for(aluno of alunos) {
    aluno.media = Number((aluno.notas.reduce((media, nota) => media + nota) / aluno.notas.length).toFixed(2))
  }
  return alunos
}


terceira tentativa: refatorando aplicando clean code
const calcularMedia = listaDeAlunos => {
  listaDeAlunos.map(aluno => {
    aluno
      .media = Number(aluno.notas.reduce((totalNotas, notaIndividual) => totalNotas + notaIndividual, 0) / aluno.notas.length)
  })
  return listaDeAlunos
} */

// quarta tentativa: otimizando refatoração
const calcularMedia = listaDeAlunos =>
  listaDeAlunos.map(aluno => ({
    ...aluno,
      media: Number((aluno.notas.reduce((soma, nota) => soma + nota, 0) / aluno.notas.length))
  }));

// filtrar apenas os alunos aprovados

// primeira opção
/* const listaDeAprovados = listaDeAlunos => listaDeAlunos.filter(isAlunosAprovado => isAlunosAprovado.media > 7)
// Gerar uma lista com os nomes em maiúsculo dos alunos aprovados e suas médias formatadas com 2 casas decimais.
.map(alunosAprovados => `${alunosAprovados.nome.toUpperCase()} - ${alunosAprovados.media}`)


console.log(listaDeAprovados(calcularMedia(alunos))) */

// ou segunda opção
const listaDeAprovados = listaDeAlunos => {
    const mediaDeAlunos = calcularMedia(listaDeAlunos);

    return mediaDeAlunos
    // filtrar apenas os alunos aprovados
      .filter(isAlunosAprovado => isAlunosAprovado.media >= 7)
    // Gerar uma lista com os nomes em maiúsculo dos alunos aprovados e suas médias formatadas com 2 casas decimais.
      .map(alunosAprovados => `${alunosAprovados.nome.toUpperCase()} - ${alunosAprovados.media.toFixed(2)}`);
}


console.log(listaDeAprovados(alunos));
