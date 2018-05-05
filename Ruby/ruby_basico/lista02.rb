#01-Escreva um programa para receber um nome pelo teclado, converter para maiúsculas e imprimir as 2 primeiras letras do nome.
puts "Digite uma palavra:"
palavra = gets.chomp
palavra.upcase!
puts "A duas primeiras letras da palavra #{palavra} em maiúscula são #{palavra[0..1]}"
puts "------------------------"

#02-Escreva um programa que informe se uma string é palíndromo.
palavras = { 1 => "Rodador", 2 => "A lupa pula", 3 => "A miss é péssima", 4 => "Ato idiota", 5 => "A sacada da casa", 6 => "A TAM mata", 7 => "Socorram-me, subi no ônibus em marrocos"}

palavras.each do |k, pl|
  pl.downcase!
  pl.delete! ", -"
  puts pl
  if pl == pl.reverse
    puts "A palavra #{pl} é um palindromo."
  else
    puts "A palavra #{pl} não é um palindromo."
  end
end
puts "------------------------"

#03-Escreva um programa que traduza uma frase de português para o idioma PigLatin. Para realizar a tradução, basta remover as vogais das palavras em português. Por exemplo, “Olá Mundo” ficaria l mnd em Pig Latin.
puts "Digite uma frase para ser traduzida em Pig Latin:"
frase = gets.chomp
frase2 = frase.delete "aeiouAEIOU"
puts "A frase #{frase} em Pig Latin fica #{frase2}"
puts "------------------------"

=begin 04-Faça um programa que contenha um menu com as seguintes opções:
a. Ler uma string S1;
b. Imprimir o tamanho da string S1;
c. Imprimir a string S1 de forma reversa;
=end
puts "Digite uma palavra:"
palavra = gets.chomp
puts "A #{palavra} tem #{palavra.length}caracteres."
puts "A #{palavra} de forma reversa é #{palavra.reverse}"
puts "------------------------"
