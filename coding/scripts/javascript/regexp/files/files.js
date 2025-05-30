const fs = require("fs");

// read the specified file in utf-8 format
const read = fileName => fs.readFileSync(`${__dirname}/../originals/${fileName}`, { encoding: "utf8" });

// create a new formated file
const write = (fileName, content) => {
    const dirname = `${__dirname}/../changed`;
    !fs.existsSync(dirname) && fs.mkdirSync(dirname);
    fs.writeFileSync(`${dirname}/${fileName}`, content, { encoding: "utf8" });
};

module.exports = { read, write };