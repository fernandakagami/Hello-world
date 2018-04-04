h = {}
puts "Digite um nome:\n"
h.merge! ({:nome => gets.chomp})
puts "Digite uma idade:\n"
h.merge! ({:idade => gets.chomp})
puts "Digite um telefone:\n"
h.merge! ({:telefone => gets.chomp})

puts h
