require 'matrix'

#01
m = Matrix.build(4) { rand(0...10) }

puts m

maior = 0
linha = 0
coluna = 0

(0..3).each do |i|
  (0..3).each do |j|
    if m[i, j] > maior
      maior = m[i, j]
      linha = i
      coluna = j
    end
  end
end

puts "O maior valor da matriz é #{maior} e está localizado na linha #{linha} e coluna #{coluna}."
puts "--------------"

#02
m = Matrix.scalar(5, 1)
puts m
puts "--------------"

m = Matrix.diagonal(1, 1, 1, 1, 1)
puts m
puts "--------------"

#03/04
m = Matrix.build(4) { rand(0...10) }
soma = 0

(0..3).each do |i|
  (0..3).each do |j|
    if i != j && i < j
      soma += m[i,j]
    end
  end
end

puts m
puts "A soma elementos acima da diagonal principal da matriz é #{soma}."
puts "--------------"

#05
m = Matrix[[1,0,2,3], [4,0,5,6], [0,0,0,0], [0,0,0,0]]
linha = 0
coluna = 0

(0..3).each do |i|
  (0..3).each do |j|
    if m[i,j] != 0
      break
    elsif j == 3
      linha += 1
    end
  end
end

(0..3).each do |j|
  (0..3).each do |i|
    if m[i,j] != 0
      break
    elsif i == 3
      coluna += 1
    end
  end
end

puts "O número de linhas nulas é #{linha} e o número de colunas nulas é #{coluna}."
