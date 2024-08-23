
nota1 = int(input("Digite a nota do 1° Bimestre: "))
nota2 = int(input("Digite a nota do 2° Bimestre: "))
nota3 = int(input("Digite a nota do 3° Bimestre: "))


print(f"Nota 1 : {nota1}")
print(f"Nota 2 : {nota2}")
print(f"Nota 3 : {nota3}")

soma = nota1 + nota2 + nota3

media = soma/3

print(f"A média é: {media}")

if media >= 70:
    print("Aluno promovido.")
else:
    print("Aluno retido")


# Calcula a soma e a média 
print(f"Soma das notas: {soma:.}")