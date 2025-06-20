// função com parâmetro e retorno
//let Name = (person = "Convidado") => {/*console.log(`Olá ${person}, seja bem-vindo!`);*/ return person;}
let Name = (person = "Convidado") => person
console.log(`Olá ${Name("Raphael")}, seja bem-vindo!`);

// torradeira
function torrar(ciclo, tipo_de_pao) {
    for(let i = 1; i <= ciclo; i++) {
        console.log(`torrando ${tipo_de_pao}`);
    }
}

function ejetar() {
    return "pão ejetado";
}

function torradeira(entrada, tempo) {
    torrar(tempo, entrada);
    if(tempo <= 0) {
        console.log(`informe um tempo`)
    } else if(tempo <= 3) {
        console.log(`${entrada} não virou torrada, ${ejetar()}.`);
    } else if (tempo > 10) {
        console.log(`${entrada} tostou, ${ejetar()}.`);
    } else {
        console.log(`torrada de ${entrada} pronta, ${ejetar()}.`);
    }
}

torradeira("pão de forma", 10)

// boas práticas
let user_key, db_key;
function enviar_dados(user_key, db_key) {
    let data_base = "banco-de-dados";
    console.log(`${Name()} salvando dados em ${data_base}`);

    if(user_key === db_key) {
        console.log("dados gravados com sucesso");
    }
}
enviar_dados("123", "123");

// exemplo prático 1
function createStringConnection(databaseName, user, pass) {
    console.log(`connect:DBCONNECT;user=${user};pass=${pass};initial_database=${databaseName}`);
}
createStringConnection("db_users", "Raphael", "FullStackDev");

// exemplo prático 2
// function getFirstName(fullName) {
//     let firtsName = fullName.split(" ")[0];
//     return firtsName;
// }
// let userName = getFirstName("Raphael Kaíque Dias Santos");
// console.log(`Olá ${userName}.`);
// ou
const userName = (fullName, splitChar = " ") => firtsName = fullName.split(splitChar)[0];
console.log(`Olá ${userName("Raphael-Kaíque", "-")}.`);

//---------------------------------------
let love = "Déborah Santos da Silva Dias"

console.log(love.toUpperCase());
console.log(love.toLowerCase());
console.log(love.includes("Dias"));
console.log(love.replace("Déborah", "Déh"));

let loveArray = love.split(" ");
console.log(loveArray);

let findLove = loveArray.find((cute) => {
    return cute === "Déborah";
});
console.log(findLove)

let myLove = loveArray.map((cute) => {
    return "Déh"
});
console.log(myLove)

let filter = loveArray.filter((cute) => {
    return cute.length > 2;
});
console.log(filter)