const files = require("./files");
const applyColor = (txt, regexp, color) => txt.replace(regexp, `<span style="color: #${color}"><b>$1</b></span>`);

const html = files.read("sourceCode.html");
const codeRegExp = /<code>[\s\S]*<\/code>/i;
let code = html.match(codeRegExp)[0];

// string
code = applyColor(code, /(\".*\")/g, "ce9178");

// settings
code = applyColor(code, /\b(package|public|class|static|if|else)\b/g, "d857cf");

// types
code = applyColor(code, /\b(void|int|string)\b/g, "1385e2");

// comments
code = applyColor(code, /(\/\*[\s\S]*\*\/)|(\/\/.*?\n)/g, "267703");

const finalContent = html.replace(codeRegExp, code);
files.write("sourceCode.html", finalContent);