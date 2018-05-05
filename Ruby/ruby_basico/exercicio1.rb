#01-Peça números para o usuário até ele digitar o número 0. Imprima todos os números.
i = 0
v = []

begin
  puts "Digite um numero:\n"
  numero_dig = gets.chomp.to_i
  if numero_dig != 0
    v.push(numero_dig)
    i += 1
  end
end while numero_dig != 0

i -= 1

while i >= 0
  puts v[i]
  i -= 1
end

#02-Leia do usuário as seguintes informações: nome, idade e telefone. Armazene as informações num hash (dicionário). Imprima as informações do usuário.
h = {}
puts "Digite um nome:\n"
h.merge! ({:nome => gets.chomp})
puts "Digite uma idade:\n"
h.merge! ({:idade => gets.chomp})
puts "Digite um telefone:\n"
h.merge! ({:telefone => gets.chomp})

puts h

#03-Peça 2 números para o usuário e imprima o maior.
class IndiqueMaior
  def maior(num1, num2)
    if num1 > num2
      puts "O #{num1} é maior que o #{num2}.\n"
    else
      puts "O #{num2} é maior que o #{num1}.\n"
    end
  end
end

maior_numero = IndiqueMaior.new
puts "Digite um numero:\n"
numero1 = gets.chomp.to_i
puts "Digite outro numero:\n"
numero2 = gets.chomp.to_i

maior_numero.maior(numero1,numero2)
