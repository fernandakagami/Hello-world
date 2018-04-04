#herança
class Funcionario
  attr_accessor :nome, :cpf, :salario
end

class Gerente < Funcionario
  attr_accessor :senha, :tempo_empresa
end

func1 = Funcionario.new
puts '----FUNCIONARIO----'
puts func1.nome = "João"
puts func1.cpf = 456456
puts func1.salario = 20000

gerente1 = Gerente.new
puts '----GERENTE----'
puts gerente1.nome = "Carlos"
puts gerente1.cpf = 789456
puts gerente1.salario = 50000
puts gerente1.senha = "lp456"
puts gerente1.tempo_empresa = "120 dias"
