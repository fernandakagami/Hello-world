=begin 01-Escreva um programa para receber um nome pelo teclado, converter para
maiúsculas e imprimir as 2 primeiras letras do nome.
=end
puts "Digite uma palavra:"
palavra = gets.chomp
palavra.upcase!
puts "A duas primeiras letras da palavra #{palavra} em maiúscula são #{palavra[0..1]}"
puts "------------------------"

=begin 02-Escreva um programa que informe se uma string é palíndromo.
=end
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

=begin 03-Escreva um programa que traduza uma frase de português para o idioma
PigLatin. Para realizar a tradução, basta remover as vogais das palavras
em português. Por exemplo, “Olá Mundo” ficaria l mnd em Pig Latin.
=end
puts "Digite uma frase para ser traduzida em Pig Latin:"
frase = gets.chomp
frase2 = frase.delete "aeiouAEIOU"
puts "A frase #{frase} em Pig Latin fica #{frase2}"
puts "------------------------"

#4
puts "Digite uma palavra:"
palavra = gets.chomp
puts "A #{palavra} tem #{palavra.length}caracteres."
puts "A #{palavra} de forma reversa é #{palavra.reverse}"
puts "------------------------"

#5
pessoa = Hash.new
maiorIdade = 0
menorIdade = -1
maior = Hash.new
menor = Hash.new
begin
  puts "Digite sua idade:"
  idade = gets.chomp.to_i
  if idade >= 0
    puts "Digite seu nome:"
    nome = gets.chomp
    pessoa[nome] = idade
    if idade > maiorIdade
      maiorIdade = idade
      maior[nome] = idade
    elsif idade > menorIdade
      menorIdade = idade
      menor[nome] = idade
    end
  end
end while idade >= 0

puts "As pessoas cadastradas foram #{pessoa}."
puts "A pessoa com a maior idade foi #{maior}."
puts "A pessoa com menor idade foir #{menor}."
