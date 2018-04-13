#1
veta = [1,2,3,4,5,6,7,8,9,10]
vetb = Array.new
veta.each do |x|
  vetb.push(x * 2)
end
puts vetb
puts "---------------------\n"

#2
vetor = [1,0,5,-2,-5,7]
puts "A soma dos valores nas posições 0, 1 e 5 do vetor é #{vetor[0] + vetor[1] + vetor[5]}"
vetor.delete_at(4)
vetor.insert(4, 100)
puts vetor
puts "---------------------\n"

#3
r = [1,2,3,4,5]
s = ["maça", "abacaxi", "jabuticaba", "banana", "melão", "melancia", "mamão", "jaca", "limão", "acerola"]
x = Array.new
x.push(r)
x.push(s)
puts x
puts "---------------------\n"

#4
u = ["maça", "abacaxi", "jabuticaba", "banana", "melão", "melancia", "mamão", "jaca", "limão", "acerola"]
u.reverse!
puts u
puts "---------------------\n"

#5
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

#6
vetor = [1,2,2,1,2,1,2,1,2]
vetor.uniq!
puts vetor

#7
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

#8
cartao = Array.new
6.times do |i|
  puts "Digite um numero #{i} para a Mega-Sena:"
  numero = gets.chomp.to_i
  cartao.push(numero)
end
sorteadas = [5,10,25,36,55,40]

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
