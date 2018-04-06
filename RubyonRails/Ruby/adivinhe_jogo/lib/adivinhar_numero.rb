require_relative 'inicializacao'

class JogoAdivinhe
  attr_reader :numero, :valor

  def initialize
    Inicializacao.inicializando
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
