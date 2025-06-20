var key = "" // F-W-D

switch (key) {
    case "F":
        console.log("\nFOR")
        for(let x = 1; x <= 10; x++){
            console.log(`x: ${x}`)
        }
        break
    case "W":
        let y = 10;
        console.log("\nWHILE")
        while(y >= 1) {
            console.log(`x: ${y}`)
            y--
        }
        break
    case "D":
        let z = 0
        console.log("\nDO")
        do {
            z++
            console.log(`x: ${z}`)
        } while(z < 10)
        break
    default:
        break
}