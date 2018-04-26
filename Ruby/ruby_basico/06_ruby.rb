class Teste
  def ola #método de instância
    "Olá!"
  end

  def self.hello #método de classe // parecido com os métodos estáticos
    "Hello!"
  end
end

#obj = Teste.new
#puts obj.ola

puts Teste.hello #não precisa instanciar
puts "=============="
############################
#classe constante
class Teste
  PI = 3.14
  NOME_APP = "Sistema de APP"
  NOME_CLIENTE = "Fulano de Tal"
end

puts Teste::PI #não precisa instanciar
puts Teste::NOME_APP
puts Teste::NOME_CLIENTE
