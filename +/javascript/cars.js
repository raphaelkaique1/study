let car = [
    {brand: "Dodge", model: "Challenger", hp: 717, status: false},
    {brand: "Nissan", model: "GT-R", hp: 600, status: false},
    {brand: "BMW", model: "M5", hp: 585, status: false},
    {brand: "Ford", model: "Mustang", hp: 480, status: false},
    {brand: "Toyota", model: "Supra", hp: 382, status: false},
    {brand: "Hyundai", model: "Azera", hp: 300, status: 'l'},
    {brand: "FIAT", model: "Uno", hp: 85, status: true}
]

for(position of car) {
    console.log(position)
}

for (i in car) {
    car[i].status == 'l' || car[i].status == true ?  console.log(`${car[i].brand} ${car[i].model}`) : ""
}