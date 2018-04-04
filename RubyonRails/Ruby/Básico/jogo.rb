class JogoAdivinhe
  attr_reader :numero, :valor

  def initialize
    @numero = Random.rand(1..10)
    @valor = false
  end

  def adivinheNumero(numero = 0)
    if numero == @numero
      @valor = true
      return "Você venceu!"
    elsif numero > @numero
      return "O número é muito alto..."
    else
      return "O número é muito baixo..."
    end
  end
end

jogo = JogoAdivinhe.new

until jogo.valor do
  puts "Digite um numero:"
  numero = gets.to_i
  puts jogo.adivinheNumero(numero)
end
