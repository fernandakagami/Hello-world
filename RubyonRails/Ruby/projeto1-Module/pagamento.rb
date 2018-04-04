module Pagamento
  PI = 3.14

  def pagar(bandeira, numero, valor)
    "Pagando com o cartão #{bandeira}, número #{numero}, o valor total de R$#{valor}."
  end

  class Bandeira
    def pagando
      "pagando..."
    end
  end

end
