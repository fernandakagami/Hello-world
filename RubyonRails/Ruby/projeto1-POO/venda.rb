require_relative "pagamento"
require_relative "frete"
require_relative "produto"

class Venda
  include Pagamento
  include Frete
  include Produto

  def vender
    puts "Olá! Seja bem-vindo!"
    puts "O que deseja comprar?"

    imprimir_produtos

    puts "> Digite o nome do produto..."
    produto = gets.chomp

    puts "Para onde deseja enviar?"

    imprimir_tabela_frete

    puts "> Digite o estado..."
    uf = gets.chomp

    puts "Calculando..."
    valor_final = calcular_valor_final(PRODUTOS[produto], uf)

    puts "Você deve pagar #{SIMBOLO_MOEDA}#{valor_final} do produto + frete."

    puts "Deseja pagar? (S/N)"
    opcao = gets.chomp

    if opcao == "S"
      pagseguro = Pagseguro.new
      pagar(valor_final)
    else
      puts "Ok! Fica para a próxima! :("
    end
  end
end
