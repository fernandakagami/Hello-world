require_relative 'sortear_palavra'

class SepararPalavra
  def self.separar
    palavra = SortearPalavra.sortear.chomp
    separada = palavra.split("")
  end
end
