require_relative 'lib/acertar_palavra'

jogo = JogoForca.new

contador = 0

while contador < 20 && jogo.ganhou == false
  puts "Digite um letra:"
  letra_usuario = gets.chomp
  jogo.adivinhe(letra_usuario)
  contador += 1
  puts "> Essa foi sua #{contador} tentativa."
end

if contador == 20
  puts "Suas chances acabaram!"
end
