require_relative "pessoa_juridica.rb"
require_relative "pessoa_fisica.rb"

pf = PessoaFisica.new
pj = PessoaJuridica.new

pf.nome = "João de Tal"
pf.endereço = "Rua Tal"
pf.cpf = "123456789"
pf.data_nascimento = "11/12/1245"

pj.nome = "Empresa Estatal"
pj.endereço = "Rua Leoncio"

puts pj.nome
puts pf.nome
