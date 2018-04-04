# overrinding - polimorfismo
class Calculadora
  def somar(n1,n2)
    n1 + n2
  end
end

class CalculadoraNova < Calculadora
  def somar(n1, n2)
    "A soma é: #{n1 + n2}."
  end
end

c = Calculadora.new
puts c.somar(2,3)

cn = CalculadoraNova.new
puts c.somar(2,3)

puts "/////////////////////"
#############################
#super
#metodo correspondente da classe pai
class Franquia
  def descricao
    "Franquia"
  end
end

class Franqueado < Franquia
  def descricao
    puts super
    "Franqueado"
  end
end

f = Franquia.new
puts f.descricao

fa = Franqueado.new
puts fa.descricao

puts "////////////////////"
#################################
class Conta
  attr_reader :numero, :saldo

  def initialize(numero, saldo = 0)
    @numero = numero
    @saldo = saldo
  end
end

class ContaEspecial < Conta
  attr_reader :limite_especial

  def initialize(numero, saldo, limite_especial)
    super(numero, saldo)
    @limite_especial = limite_especial
  end
end


c = Conta.new("001", 100.00)
puts c.numero
puts c.saldo
puts "================="
ce = ContaEspecial.new("002", 200.00, 1000.00)
puts ce.numero
puts ce.saldo
puts ce.limite_especial

puts "////////////////////"
#################################
#duck typing - polimorfismo
class Pato
  def quack
    "Quack Quack!"
  end
end

class PatoDoente
  def quack
    "Queeeeeck..."
  end
end

class Pessoa
  def apertar_o_pato(pato)
    pato.quack
  end
end

p1 = Pato.new
p2 = PatoDoente.new

p = Pessoa.new

puts p.apertar_o_pato(p1)
puts p.apertar_o_pato(p2)
