/* 2️⃣ Calculadora de partidas Rankeadas

O Que deve ser utilizado:
- Variáveis
- Operadores
- Laços de repetição
- Estruturas de decisões
- Funções

Objetivo:
Crie uma função que recebe como parâmetro a quantidade de vitórias e derrotas de um jogador,
depois disso retorne o resultado para uma variável, o saldo de Rankeadas deve ser feito através do calculo (vitórias - derrotas):
Se vitórias for menor do que 10 = Ferro
Se vitórias for entre 11 e 20 = Bronze
Se vitórias for entre 21 e 50 = Prata
Se vitórias for entre 51 e 80 = Ouro
Se vitórias for entre 81 e 90 = Diamante
Se vitórias for entre 91 e 100= Lendário
Se vitórias for maior ou igual a 101 = Imortal

Saída:
Ao final deve se exibir uma mensagem: "O Herói tem de saldo de **{saldoVitorias}** está no nível de **{nivel}**" */

let defeats, victories, Balance = (defeats = 0, victories = 0) => {return [((victories + defeats) - defeats), (victories + defeats)];}, info = Balance(1, 1), level = Ranking(info);

function Ranking(battles) {
    let position;
    if(battles[0] <= 10) {
        position = "iron";
    } else if(battles[0] > 10 && battles[0] <= 20) {
        position = "bronze";
    } else if(battles[0] > 20 && battles[0] <= 50) {
        position = "silver";
    } else if(battles[0] > 50 && battles[0] <= 80) {
        position = "gold";
    } else if(battles[0] > 80 && battles[0] <= 90) {
        position = "platinum";
    } else if(battles[0] > 90 && battles[0] <= 100) {
        position = "legendary";
    } else {
        position = "immortal";
    }
    return position
}

let battle = info[1] > 1 ? `battles` : `battle`, victory = info[0] > 1 ? `victories` : `victory`;
console.log(`The Hero has a total of ${info[1]} ${battle}, with a balance of ${info[0]} ${victory}, and is at the ${level} level.`);