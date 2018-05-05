#01-Implemente um algoritmo que leia o vetor A inteiro de 10 elementos. Calcule e exiba o vetor B, sendo B = 2A.
veta = [1,2,3,4,5,6,7,8,9,10]
vetb = Array.new
veta.each do |x|
  vetb.push(x * 2)
end
puts vetb
puts "---------------------\n"

=begin 02- Faça um programa que possua um vetor denominado A que armazene 6 números inteiros. O programa deve executar os seguintes passos:
- Atribua os seguintes valores a esse vetor: 1, 0, 5, -2, -5, 7.
- Armazene em uma variável inteira (simples) a soma entre os valores das posições A[0], A[1] e A[5] do vetor e mostre na tela esta soma.
- Modifique o vetor na posição 4, atribuindo a esta posição o valor 100.
- Mostre na tela cada valor do vetor A, um em cada linha.
=end
vetor = [1,0,5,-2,-5,7]
puts "A soma dos valores nas posições 0, 1 e 5 do vetor é #{vetor[0] + vetor[1] + vetor[5]}"
vetor.delete_at(4)
vetor.insert(4, 100)
puts vetor
puts "---------------------\n"

#03-Ler 2 vetores: R de 5 elementos e S de 10 elementos. Gere um vetor X de 15 elementos cuja as 5 primeiras posições contenham os elementos de R e as 10 últimas posições os elementos de S. Escrever o vetor X.
r = [1,2,3,4,5]
s = ["maça", "abacaxi", "jabuticaba", "banana", "melão", "melancia", "mamão", "jaca", "limão", "acerola"]
x = Array.new
x.push(r)
x.push(s)
puts x
puts "---------------------\n"

#04-Ler um vetor U de 10 elementos. Troque o 1o elemento com o último, o 2o com o penúltimo, etc. até o 5o com o 6o, e escreva o vetor U assim modificado.
u = ["maça", "abacaxi", "jabuticaba", "banana", "melão", "melancia", "mamão", "jaca", "limão", "acerola"]
u.reverse!
puts u
puts "---------------------\n"

#05-Uma empresa de desenvolvimento de software possui uma política diferenciada na definição dos salários de seus funcionários. Todos têm o mesmo salário base de 2000 reais e é acrescentado 300 reais a cada ano de trabalho na empresa. Faça um programa que calcule o salário de cada funcionário a partir da entrada da informação sobre os anos trabalhados na empresa. Os salários precisam ser armazenados em um vetor a medida em que são calculados. Quando todos os salários forem calculados, mostrar os salários ordenados de forma decrescente. Não é preciso apresentar nesta lista os funcionários detentores de cada salário.
vetor = Array.new
3.times do |i|
  puts "Insira a quantidade de anos trabalhados na empresa:"
  anos = gets.chomp.to_i
  salario_inicial = 2000
  acrescimo_anual = 300
  calculo = salario_inicial + (acrescimo_anual * anos)
  puts calculo
  vetor.push(calculo)
end
vetor.sort!{ |x,y| y <=> x }
puts "Ordenando os salário de forma decrescente:"
puts vetor
puts "---------------------\n"

#06-Leia um vetor com 10 números inteiros. Escreva os elementos do vetor eliminando elementos repetidos.
vetor = [1,2,2,1,2,1,2,1,2,2]
vetor.uniq!
puts vetor

=begin 07-Você foi contratado para construir um programa para facilitar os encontros de happy hour semanais entre estudantes de um curso de Engenharia Civil. Por conta da alta carga de estudos destes estudantes, cada um pode reservar apenas um dia semanal para as saídas com os amigos. Desta forma, o programa deve solicitar a cada estudante um caractere referente ao dia da semana em que ele tem preferência para sair. As opções são as seguintes:
D – Domingo
M – Segunda-feira
T – Terça-feira
W – Quarta-feira
H – Quinta-feira
F – Sexta-feira
S – Sábado
Cada estudante é identificado por um id sequencial, iniciado em zero. Ao cadastrar a opção do dia de semana, este id e a opção escolhida precisam ser apresentados ao estudante. Após o cadastro de todos os estudantes, para cada dia da semana, informar o conjunto de ids dos estudantes que podem sair naquele dia.
=end
semana = {
  'D' => [],
  'M' => [],
  'T' => [],
  'W' => [],
  'H' => [],
  'F' => [],
  'S' => [],
}
3.times do |i|
  puts "Digite o dia disponível para o happy hour:"
  puts "D – Domingo"
  puts "M – Segunda-feira"
  puts "T – Terça-feira"
  puts "W – Quarta-feira"
  puts "H – Quinta-feira"
  puts "F – Sexta-feira"
  puts "S – Sábado"
  dia = gets.chomp
  semana[dia].push(i)
  puts "Estudante ID #{i} - Dia disponível #{dia}."
end
semana.each do |dia,ids|
  puts dia + ': ' + ids.join(", ")
end
puts "---------------------\n"

#08- Construa um algoritmo que leia um cartão da Mega Sena e armazene-o em um vetor. Em seguida, preencha outro vetor com seis dezenas sorteadas. Apresente estas dezenas e diga se houve: quadra, quina ou sena.
cartao = Array.new
sorteadas = Array.new
6.times do |i|
  puts "Digite um numero #{i} para a Mega-Sena:"
  numero = gets.chomp.to_i
  cartao.push(numero)
end
6.times do |i|
  puts "Digite um numero #{i} para a Mega-Sena:"
  numero = gets.chomp.to_i
  sorteadas.push(numero)
end

match = Array.new
match = cartao & sorteadas

if match.count == 6
  puts "Você acertou a sena!!!"
elsif match.count == 5
  puts "Você acertou a quina!!!"
elsif match.count == 4
  puts "Você acertou a quadra!!!"
else
  puts "Que pena! Você não foi sorteado na sena! Tente de novo!"
end
puts "------------------"

#09-Criar um algoritmo que leia vários números inteiros positivos. A leitura se encerra quando houver um número negativo ou quando o vetor ficar completo. Sabe-se que o vetor pode possuir no máximo 10 elementos. Gerar e apresentar um novo vetor em que cada elemento é o oposto do correspondente no vetor original.
vetor = Array.new
i = 0
begin
  puts "Digite um numero:"
  numero = gets.chomp.to_i
  if numero >= 0
    vetor.push(numero)
    i += 1
  else
    puts "Valor negativo: encerrando o processo."
    break
  end
end until i == 10

new_vetor = vetor.reverse

puts "O vetor é #{vetor}."
puts "O tamanho do vetor é #{vetor.length}."
puts "O inverso do vetor é #{new_vetor}."
puts "------------------"

#10-Faça um programa que leia um vetor de 5 posições para números reais e, depois, um código inteiro. Se o código for zero, finalize o programa; se for 1, mostre o vetor na ordem direta; se for 2, mostre o vetor na ordem inversa. Caso, o código for diferente de 1 e 2 escreva uma mensagem informando que o código é inválido.
vetor = Array.new
i = 0
begin
  puts "Digite um numero:"
  numero = gets.chomp.to_f
  vetor.push(numero)
  i += 1
end until i == 3

puts "Escolha um código:"
puts "> 0 para finalizar o programa"
puts "> 1 para mostrar o vetor"
puts "> 2 para mostrar o vetor na ordem inversa"
puts "Digite o código:"
codigo = gets.chomp.to_i

case codigo
when 0
  puts "Finalizando o programa..."
when 1
  puts "Imprimindo o vetor #{vetor}."
when 2
  puts "Imprimindo o vetor na ordem inversa #{vetor.reverse}."
else
  puts "Código Inválido."
end
puts "------------------"

#11-12-Em uma festa universitária composta por N estudantes, cada estudante que ingressa na festa ganha um copo de suco natural da sua escolha. Há quatro opções de sabores de suco: 1 - Laranja, 2 - Uva, 3 - Morango e 4 - Maça. Faça um programa para o administrador da festa controlar a quantidade de sucos entregues aos estudantes. Para isso, se faz necessário guardar em um vetor a quantidade de cada sabor distribuído. No final da festa, o administrador vai inserir o valor 666 e então deve ser apresentado um extrato contendo a quantidade total de cada sabor entregue e o total de sucos entregues.
suco = { "laranja" => 0, "uva" => 0, "morango" => 0, "maca" => 0}

begin
  puts "Digite o sabor do suco:"
  puts "1 - Laranja / 2 - Uva / 3 - Morango / 4 - Maça / 666 - encerrar o programa"
  sabor = gets.chomp.to_i

  if sabor == 1
    suco["laranja"] += 1
  elsif sabor == 2
    suco["uva"] += 1
  elsif sabor == 3
    suco["morango"] += 1
  elsif sabor == 4
    suco["maca"] += 1
  elsif sabor == 666
    puts "Calculando..."
    break
  else
    puts "Valor inválido"
  end
end until sabor == 666

soma = 0
suco.each do |tipo, qtds|
  puts "Foram entregues #{qtds} de suco de #{tipo}."
  soma += qtds
end

puts "No total foram entregues #{soma}."
puts "------------------"

#13-Criar um algoritmo que leia os vetores A, B e C. Então, calcule e exiba o vetor D.
a = [7, 4, 9, 3, 6]
b = ["+", "-", "/", "*", "/"]
c = [1, 3, 3, 2, 6]
d = []

for i in 0..4
  if b[i] == "+"
    d[i] = a[i] + c[i]
  elsif b[i] == "-"
    d[i] = a[i] - c[i]
  elsif b[i] == "/"
    d[i] = a[i] / c[i]
  elsif b[i] == "*"
    d[i] = a[i] * c[i]
  end
end

puts d
