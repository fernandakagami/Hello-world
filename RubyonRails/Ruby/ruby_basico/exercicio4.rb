class Vetor
  def novoVetor(tamanho, valorInicial = 0)
    vetor = Array.new
    for i in 0...tamanho
      vetor.push(valorInicial)
    end
    puts vetor.inspect
  end
end

novoVetor = Vetor.new

puts "Digite o tamanho do vetor:\n"
tamanhoVetor = gets.chomp.to_i

novoVetor.novoVetor(tamanhoVetor)
