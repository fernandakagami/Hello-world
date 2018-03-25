module Produto
  PRODUTOS = {"PS3" => 900.00, "PS4" => 1600.00}

  def imprimir_produtos
    puts "--- Produtos ---"
    PRODUTOS.each do |k,v|
      puts "#{k} - #{Pagamento::SIMBOLO_MOEDA} #{v}"
    end
    puts "----------------"
  end

end
