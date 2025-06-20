#include <iostream>
#include <locale.h>
using namespace std;

int main() {
    setlocale(LC_ALL, "");

    // tipos de dados & variáveis
    int inteiros = 3;
    float pontoFlutuante = 0.99;
    double decimais = 9.99;
    char letra = 'a';
    const char* letras = "abcde";
    string texto = "Dev C++";
    bool condicao = true;

    // imprimindo
    cout << "Inteiros: " << inteiros << "\n";
    cout << "Decimais: " << decimais << "\n";
    cout << "Ponto Flutuante: " << pontoFlutuante << "\n";
    cout << "Caractere: " << letra << "\n";
    cout << "Caracteres: " << letras << "\n";
    cout << "String: " << texto << "\n";
    cout << "Booleana: " << condicao << "\n";

    return 0;
}