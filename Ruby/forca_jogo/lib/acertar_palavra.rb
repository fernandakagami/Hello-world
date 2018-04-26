require_relative 'separar_palavra'

class JogoForca
  attr_reader :vetor_letra, :i, :ganhou
  attr_accessor :vetor_usuario, :chutes

  def initialize
    @vetor_letra = SepararPalavra.separar
    @chutes = Array.new
    @i = @vetor_letra.length
    @vetor_usuario = Array.new(@i, "*")
    @ganhou = false
  end

  def adivinhe(letra_usuario)
    if @chutes.include?(letra_usuario) == false
      if @vetor_letra.include?(letra_usuario)
        for j in 0..@i
          if letra_usuario == @vetor_letra[j]
            vetor_usuario[j] = @vetor_letra[j]
          end
        end
        vetor_usuario.each do |letras|
          print letras.chomp
        end
        puts "\n"
        @chutes.push(letra_usuario)
        puts "Parabéns essa letra existe na palavra secreta!"
        if @vetor_letra == @vetor_usuario
          puts "Parabéns! Você descobriu a palavra secreta!"
          @ganhou = true
        end
      else
        @chutes.push(letra_usuario)
        puts "Essa letra não existe na palavra secreta!!!"
      end
    else
      puts "Você já tentou essa letra! Tente outra letra!"
    end
  end
end
