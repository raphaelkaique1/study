Console.Write("raphaelkaique1");   // !line break
Console.Write("\n");
Console.WriteLine("Hello world!"); // line break
Console.WriteLine("\u3053\u3093\u3068\u306F");
Console.WriteLine(@"\{}"); // @ mantém a formatação de texto original | $ identifica valores de variáveis

Console.WriteLine($"Meses: {12.0m}"); /* Para criar um literal decimal, acrescentamos a letra `m` após o número.
Nesse contexto, o `m` é chamado de SUFIXO LITERAL. Ele informa ao compilador que você deseja trabalhar com um valor do tipo decimal */

// declarando variáveis
string name = "Raphael";
char middleName = 'R';
string fullName = $@"{name}  Kaíque";
var stack = "Full Stack"; // tipo implícito: o tipo é definido de acordo com o valor atribuído
int level = 95;
decimal brute = 35950.15M;
float discounts = 3150.95F;
double liquid = (double)brute - (double)discounts; // converte temporáriamente o tipo do valor
bool dev = true;
bool xp = stack.Contains("Full");

if(dev != false && fullName.Contains("Raphael")) {
    middleName = 'K';

    string msg = $"user: {name} {middleName} ({fullName}) - stacks: {stack} - level: {level}\nsalary: {brute} - {discounts} = {liquid}";

    Console.WriteLine(msg);
    Console.WriteLine($@"{xp}\{name}");
    Console.WriteLine($@"{level+=5}");
    Console.WriteLine($@"{--level}");
}