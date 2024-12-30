/* 1️⃣ Desafio: Classificador de nível de Herói

O Que deve ser utilizado:
- Variáveis
- Operadores
- Laços de repetição
- Estruturas de decisões

Objetivo:
Crie uma variável para armazenar o nome e a quantidade de experiência (XP) de um herói, depois utilize uma estrutura de decisão para apresentar alguma das mensagens abaixo:

Se XP for menor do que 1.000 = Ferro
Se XP for entre 1.001 e 2.000 = Bronze
Se XP for entre 2.001 e 5.000 = Prata
Se XP for entre 5.001 e 7.000 = Ouro
Se XP for entre 7.001 e 8.000 = Platina
Se XP for entre 8.001 e 9.000 = Ascendente
Se XP for entre 9.001 e 10.000= Imortal
Se XP for maior ou igual a 10.001 = Radiante

Saída:
Ao final deve se exibir uma mensagem:
`O Herói de nome ${nome} está no nível de ${nivel}` */

class Hero {

  constructor(name, xp) {
    this.name = name;
    this.xp = xp;
    this.stage = "";
  }

  level() {
    if(this.xp < 1000) {
        this.stage = "iron";
    } else if(this.xp >= 1000 && this.xp <= 2000) {
        this.stage = "bronze";
    } else if(this.xp > 2000 && this.xp <= 5000) {
        this.stage = "silver";
    } else if(this.xp > 5000 && this.xp <= 7000) {
        this.stage = "gold";
    } else if(this.xp > 7000 && this.xp <= 8000) {
        this.stage = "platinum";
    } else if(this.xp > 8000 && this.xp <= 9000) {
        this.stage = "ascendant";
    } else if(this.xp > 9000 && this.xp <= 10000) {
        this.stage = "immortal";
    } else if(this.xp > 10000) {
        this.stage = "radiant";
    } else {
        this.stage = "unknown";
    }
  }

  status() {
    this.level();
    console.log(`Hero ${this.name} is in the ${this.stage} stage.`);
  }

}

const Molotov = new Hero("Molotov", 5000);
Molotov.status();

/* TODO
  1 - login user
  2 - class Heroes (vetor characters)
  3 - class constructor characters (const `hero` = new Hero("name", xp))
*/