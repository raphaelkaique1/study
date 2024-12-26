/* uma boa prática para lidar com números em programação, é adotar
sempre o formato de texto (string) para qualquer número que não irá realizar
nenhum cálculo matemático no futuro, exemplo: número de telefone, CPF, CEP e etc. */
const date = new Date();
const current_year = date.getFullYear();

//let user_name = [name, year_birth, phone_number, cpf, zip_code, password]
raphaelkaique1 = ["Raphael", 1998, "(31) 99286-7381", "123.456.789-10", "12.345-567", "Adm@123"]

for(i in raphaelkaique1) {
    i == 1 ? console.log(current_year - raphaelkaique1[i]) : console.log(raphaelkaique1[i])
}