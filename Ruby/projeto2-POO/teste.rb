require_relative "pessoa_juridica.rb"
require_relative "pessoa_fisica.rb"

pf = PessoaFisica.new
pj = PessoaJuridica.new

pf.nome = "João de Tal"
pf.endereco = "Rua Tal"
pf.cpf = "123456789"
pf.data_nascimento = "11/12/1245"

pj.nome = "Empresa Estatal"
pj.endereco = "Rua Leoncio"
pj.cnpj = "0001/001-123456789"
pj.razao_social = "Empresa Feliz"

puts pj.nome
puts pj.endereco
puts pj.cnpj
puts pj.razao_social
puts pf.nome
puts pf.endereco
puts pf.cpf
puts pf.data_nascimento
