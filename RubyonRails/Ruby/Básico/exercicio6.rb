class Papagaio
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def repetir_frase(frase="Curupaco")
    frase
  end
end

papagaio1 = Papagaio.new("Juca", 10)
papagaio2 = Papagaio.new("Tico", 50)

puts papagaio1.nome
puts papagaio1.idade
puts papagaio1.repetir_frase

puts papagaio2.nome
puts papagaio2.idade
puts papagaio2.repetir_frase("Sorvete de flocos!")
