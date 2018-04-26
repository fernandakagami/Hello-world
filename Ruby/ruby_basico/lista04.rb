#01_1
cidade = {}

consumo_cidade = 0
habitante = 0
puts "Digite o consumo de energia elétrica:"
consumo = gets.chomp.to_i
puts "Digite o nome:"
nome = gets.chomp
maior_consumo_nome = nome
maior_consumo_energia = consumo
menor_consumo_nome = nome
menor_consumo_energia = consumo
consumo_cidade += consumo
habitante += 1
begin
  puts "Digite o consumo de energia elétrica:"
  consumo = gets.chomp.to_i
  if consumo >= 0
    puts "Digite o nome:"
    nome = gets.chomp
    cidade["nome"] = consumo
    consumo_cidade += consumo
    habitante += 1
    if consumo > maior_consumo_energia
      maior_consumo_energia = consumo
      maior_consumo_nome = nome
    end
    if consumo < menor_consumo_energia
      menor_consumo_energia = consumo
      menor_consumo_nome = nome
    end
  end
end while consumo >= 0

puts "O habitante que mais consumiu energia foi #{maior_consumo_nome} com consumo de #{maior_consumo_energia}."
puts "O habitante que menos consumiu energia foi #{menor_consumo_nome} com consumo de #{menor_consumo_energia}."
puts "A média de consumo da cidade foi #{consumo_cidade/habitante}."

#02_1
string = "hellooo"
letra = string.split(//)

hashLetra = {}

letra.each do |i|
  contador = 0
  letra.each do |j|
    if i == j
      contador += 1
    end
  end
  hashLetra[i] = contador
end

puts hashLetra

2.times do |x|
  maisRepete = 0
  letraMaisRepete = 0
  hashLetra.each do |chave, valor|
      if valor > maisRepete
        maisRepete = valor
        letraMaisRepete = chave
      end
  end
  letra.delete(letraMaisRepete)
  hashLetra.delete(letraMaisRepete)
end

puts string = letra.join
puts hashLetra

#03_1
string = "1abc2fg52jln1256"
string = string.split(//)
def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end

contador = 0

m = [[],[],[],[]]

(0..3).each do |i|
  (0..3).each do |j|
    m[i][j] = string[contador]
    contador += 1
  end
end

coluna_matriz = 0
(0..3).each do |j|
  coluna = 0
  (0..3).each do |i|
    if numeric?(m[i][j])
      coluna += 1
    end
  end
  if coluna == 4
    coluna_matriz += 1
  end
end

(0..3).each do |i|
  (0..3).each do |j|
    print m[i][j]
  end
  puts "\n"
end

puts "A matriz tem #{coluna_matriz} colunas com apenas caracteres numéricos."

#04_1
puts "Digite um numero inteiro:"
numero = gets.chomp.to_i

matriz = Array.new(numero) { Array.new(numero)}

(0...numero).each do |i|
  (0...numero).each do |j|
    if i + j > 2
      matriz[i][j] = "#"
    else
      matriz[i][j] = " "
    end
  end
end

(0..3).each do |i|
  (0..3).each do |j|
    print matriz[i][j]
  end
  puts "\n"
end

#01_2
cliente = {}

puts "Digite o código:"
codigo = gets.chomp.to_i
puts "Digite sua altura:"
altura = gets.chomp.to_f
puts "Digite seu peso:"
peso = gets.chomp.to_i
cliente[codigo] = altura, peso
alto = altura
cliente['alto'] = codigo, altura
baixo = altura
cliente['baixo'] = codigo, altura
gordo = peso
cliente['gordo'] = codigo, peso
magro = peso
cliente['magro'] = codigo, peso

begin
  puts "Digite o código:"
  codigo = gets.chomp.to_i
  if codigo > 0
    puts "Digite sua altura:"
    altura = gets.chomp.to_f
    puts "Digite seu peso:"
    peso = gets.chomp.to_i
    cliente[codigo] = altura, peso
    if altura > alto
      alto = altura
      cliente['alto'] = codigo, altura
    end
    if altura < baixo
      baixo = altura
      cliente['baixo'] = codigo, altura
    end
    if peso > gordo
      gordo = peso
      cliente['gordo'] = codigo, peso
    end
    if peso < magro
      magro = peso
      cliente['magro'] = codigo, peso
    end
  end
end while codigo > 0


puts "O cliente mais alto foi #{cliente['alto']}."
puts "O cliente mais alto foi #{cliente['baixo']}."
puts "O cliente mais alto foi #{cliente['gordo']}."
puts "O cliente mais alto foi #{cliente['magro']}."

#02_2
puts "Digite uma palavra:"
string = gets.chomp
letra = string.split(//)

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end

valor = true
if letter?(letra[0]) || letter?(letra[(letra.length)-1])
  valor = false
else
  (1..letra.length).each do |x|
    if letter?(letra[x])
      if !numeric?(letra[x-1]) || !numeric?(letra[x+1])
        valor = false
      end
    end
  end
end

if valor
    puts "Válido"
else
    puts "Nem todas as letras das string estão cercadas por números."
end


#03_2
puts "Digite um numeral de 16 caracteres:"
numero = gets.chomp
numero = numero.split(//)

matriz = [[],[],[],[]]
contador = 0
somaColuna = 0
maiorSoma = 0

(0..3).each do |i|
  (0..3).each do |j|
    matriz[i][j] = numero[contador]
    puts numero[contador]
    contador += 1
  end
end

(0..3).each do |i|
  (0..3).each do |j|
    print matriz[i][j]
  end
  puts "\n"
end

(0..3).each do |j|
  somaColuna = 0
  (0..3).each do |i|
    somaColuna += matriz[i][j].to_i
  end
  if maiorSoma < somaColuna
    maiorSoma = somaColuna
  end
end

puts maiorSoma


#04_2
puts "Digite 9 números:"
numero = gets.chomp
numero = numero.split(//)

matriz = [[],[],[]]
contador = 0
somaDiagonalPrincipal = 0
somaDiagonalSecundaria = 0

(0..2).each do |i|
  (0..2).each do |j|
    matriz[i][j] = numero[contador]
    contador += 1
  end
end

(0..2).each do |i|
  (0..2).each do |j|
    if i == j
      somaDiagonalPrincipal += matriz[i][j].to_i
      puts somaDiagonalPrincipal
    end
  end
end

(0..2).each do |i|
  (0..2).each do |j|
    if i + j == 2
      somaDiagonalSecundaria += matriz[i][j].to_i
    end
  end
end

puts "A subtração da diagonal principal pela diagonal secundaria é #{somaDiagonalPrincipal - somaDiagonalSecundaria}."
