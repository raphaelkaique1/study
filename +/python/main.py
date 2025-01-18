print("Hello world!\n")

""" Exercício média
1 - solicita notas
2 - calcula media
3 - exibe media
"""

def school_grades():
    size = int(input(f"Total de notas: "))
    iterable = 0; grades = [None] * size

    for iterable in range(size):
        grade = float(input(f"Digite a {iterable + 1}ª nota: "))
        grades[iterable] = grade

    return grades

def school_average(notes = []):
    total = 0

    for iterable in notes:
        total += iterable

    return (total / len(notes))

def main():
    print(f"Média do aluno: {school_average(school_grades())}")

main()