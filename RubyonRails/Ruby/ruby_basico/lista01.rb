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
puts "------------------"

#9
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
end until i == 3

new_vetor = vetor.reverse

puts "O vetor é #{vetor}."
puts "O tamanho do vetor é #{vetor.length}."
puts "O inverso do vetor é #{new_vetor}."
puts "------------------"

#10
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

#11-12
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

#13
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
