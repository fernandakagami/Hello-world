require_relative 'pagamento'

include Pagamento

p = Bandeira.new #trabalhando com classes
puts p.pagando

puts PI #trabalhando com constantes

puts "Digite a bandeira do cartão:"
b = gets.chomp

puts "Digite o número do cartão:"
c = gets.chomp

puts "Digite o valor da compra:"
v = gets.chomp

puts pagar(b,c,v) #trabalhando com métodos
