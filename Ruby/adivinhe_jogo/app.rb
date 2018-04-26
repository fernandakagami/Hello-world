require_relative "lib/adivinhar_numero"

jogo = JogoAdivinhe.new

until jogo.valor do
  puts "Digite um numero:"
  numero = gets.to_i
  puts jogo.adivinheNumero(numero)
end
