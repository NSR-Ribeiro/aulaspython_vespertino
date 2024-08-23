import random 

#looping - repetição - laço
#randint - aleatório
#lower - transforma (minuscala para maiuscula )
#strip - tira espaço vazio, ou caracteres especiais.
while True:
    numero_aleatorio = random.randint(1,25)
    print(f"número sorteado: {numero_aleatorio}")
    resposta = input("Deseja sortear outro número? (s/n)").strip().lower()
    if resposta != 's':
        print("encerrando o sorteio")
        break
        
