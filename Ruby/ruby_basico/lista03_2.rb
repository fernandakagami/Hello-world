#01-Leia uma matriz 4x4, imprima a matriz e retorne a localização (linha e a coluna) do maior valor.
m = [[1,0,2,3], [4,0,5,6], [0,0,9,0], [0,7,8,0]]
maior = 0
linha = 0
coluna = 0

print "#{m}\n"

(0..3).each do |i|
  (0..3).each do |j|
    print m[i][j]
  end
  puts "\n"
end

(0..3).each do |i|
  (0..3).each do |j|
    if m[i][j] > maior
      maior = m[i][j]
      linha = i
      coluna = j
    end
  end
end

puts "O maior valor da matriz é #{maior} e está localizado na linha #{linha} e coluna #{coluna}."
puts "--------------"

#02-Declare uma matriz 5x5. Preencha com 1 a diagonal principal e com 0 os demais elementos. Escreva ao final a matriz obtida.
m = [[],[],[],[],[]]

(0..4).each do |i|
  (0..4).each do |j|
    if i == j
      m[i][j] = 1
    else
      m[i][j] = 0
    end
  end
end

(0..4).each do |i|
  (0..4).each do |j|
    print m[i][j]
  end
  puts "\n"
end
puts "--------------"

#03/04-Calcular a soma dos elementos de uma matriz numérica quadrada qualquer dada que estão acima da diagonal principal.
m = [[1,0,2,3], [4,0,5,6], [0,0,9,0], [0,7,8,0]]
soma = 0

(0..3).each do |i|
  (0..3).each do |j|
    if i < j
      soma += m[i][j]
    end
  end
end

(0..3).each do |i|
  (0..3).each do |j|
    print m[i][j]
  end
  puts "\n"
end

puts "A soma elementos acima da diagonal principal da matriz é #{soma}."
puts "--------------"

#05-Dada uma matriz A mxn , imprimir o número de linhas e o número de colunas nulas da matriz.
m = [[1,0,2,3], [4,0,5,6], [0,0,0,0], [0,0,0,0]]
linha = 0
coluna = 0

(0..3).each do |i|
  (0..3).each do |j|
    if m[i][j] != 0
      break
    elsif j == 3
      linha += 1
    end
  end
end

# (0..3).each do |i|
#   nula = true
#   (0..3).each do |j|
#     if m[i][j] != 0
#       nula = false
#       break
#     end
#   end
#   linha += 1 if nula
# end

(0..3).each do |j|
  (0..3).each do |i|
    if m[i][j] != 0
      break
    elsif i == 3
      coluna += 1
    end
  end
end

puts "O número de linhas nulas é #{linha} e o número de colunas nulas é #{coluna}."
puts "--------------"

#06-Dizemos que uma matriz quadrada inteira é um quadrado mágico se a soma dos elementos de cada linha, a soma dos elementos de cada coluna e a soma dos elementos das diagonais principal e secundária são todas iguais.
m = [[8, 0, 7], [4, 5, 6], [3, 10, 2]]
diagonal_principal = 0
diagonal_secundaria = 0

(0..2).each do |i|
  (0..2).each do |j|
    if i == j
      diagonal_principal += m[i][j]
    end
  end
end

(0..2).each do |i|
  soma_linha = 0
  linha = true
  (0..2).each do |j|
    soma_linha += m[i][j]
  end
  if diagonal_principal != soma_linha
    linha = false
    break
  end
end

(0..2).each do |j|
  soma_coluna = 0
  coluna = true
  (0..2).each do |i|
    soma_coluna += m[i][j]
  end
  if diagonal_principal != soma_coluna
    coluna = false
    break
  end
end

(0..2).each do |j|
  (0..2).each do |i|
    if j + i == 2
      diagonal_secundaria += m[i][j]
    end
  end
end

if diagonal_principal == diagonal_secundaria && linha && coluna
  puts "A matriz é um quadrado mágico."
end
puts "--------------"

#07-Gere um array unidimensional pela soma dos números de cada coluna de uma matriz 3x3 e mostre na tela esse vetor.
m = [[5, -8, 10], [1, 2, 15], [25, 10, 7]]
v = []

(0..2).each do |j|
  soma = 0
  (0..2).each do |i|
    soma += m[i][j]
  end
  v.push(soma)
end

puts v
puts "--------------"

=begin 08-Faça um programa que leia uma matriz de 5 linhas e 4 colunas que contenha as seguintes informações sobre alunos de uma disciplina, sendo todas as informações do tipo inteiro:
Primeira coluna: número de matrícula (use um inteiro)
Segunda coluna: média das provas
Terceira coluna: média dos trabalhos
Quarta coluna: nota final
Elabore um programa que:
Leia as três primeiras informações de cada aluno;
Calcule a nota final como sendo a soma da média das provas e da média dos trabalhos;
Imprima a matrícula do aluno que obteve a maior nota final (assumir que só existe uma maior nota);
Imprima a média aritmética das notas finais.
=end
m = [[], [], [], [], []]
maior_nota = 0

5.times do |x|
  puts "Digite o número da sua matrícula:"
  m[x][0] = gets.chomp.to_i
  puts "Digite a média das provas:"
  m[x][1] = gets.chomp.to_i
  puts "Digite a média dos trabalhos:"
  m[x][2] = gets.chomp.to_i
  m[x][3] = m[x][1] + m[x][2]
  if m[x][3] > maior_nota
    maior_nota = m[x][3]
  end
end

puts "A maior nota foi #{maior_nota}."

(0..4).each do |i|
  (0..4).each do |j|
    if j == 3
    puts "A média das notas foram #{m[i][j]}."
    end
  end
end
