#metodo

a = [2,3,4,5]
puts a.class #tipo
puts a.count #tamanho
puts a.size #tamanho
puts a.length #tamanho
a.push [75] #coloca item no final
puts a
a.unshift [52] #coloca item no inicio
puts a
a.pop #tira item do final
puts a
a.shift #tira item do inicio
puts a


#criando metodos proprios

def meu_menu(value)
    puts "#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}"
    puts "| MENU |"
    puts "#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}"
end

meu_menu("-")
meu_menu("x")
meu_menu("c")
meu_menu("w")


========================

# metodo

def soma(a, b)
    puts "O resultado eh: #{a + b}"
end

soma(3, 5)
soma 3, 5

#constante

ROR = "Ruby on Rails" #constante
ror = "Ruby on Rails" #variavel


============================================

#String virando array
#split

str = "pao, leite, bolacha, rosquinha"
x = str.split(",")
puts str
puts x.inspect

str1= "Abacaxi eh doce"
x1 = str1.split
puts str1
puts x1.inspect

str2= %w(Abacaxi eh doce)
puts str2.inspect


#array tornando string
#join

puts "Isso eh um join! #{str2.join(" ")}"


#eval

puts "Digite:"  ==== 18+20
str = gets.chomp

puts str.class ==== string

x = eval(str)  ==== 38 #interpreta em RUBY

puts x


#instance_of

a = 123
puts a.class

puts a.instance_of?(Array)
puts a.instance_of?(Fixnum)

def mostrar(x)
    if x.instance_of?(String)
        puts x
    end
    if x.instance_of?(Array)
        x.each do |i|
            puts ">>> #{i}"
        end
    end
end

mostrar("Fernanda")
mostrar([1,2,3,4])


#range/intervalos

(1..10).each do |i|
    puts i
end
#2 pontos: o ultimo numero é impresso

(1...10).each do |i|
    puts i
end
#3ponto: o ultimo numero não é impresso


#objeto

class Pessoa
attr_accessor :nome (substitui o imprimir nome e guardar nome)

    	def inicialize(nome)
        		@nome = nome #variavel de instancia para cada objeto que for criado
      end

      #def imprimir_nome
        #@nome
      #end

      #def guardar_nome(novo_nome)
        #@nome = novo_nome
      #end
end

x = Pessoa.new("Fernanda")
puts x.nome

x.nome = "Joao"
puts x.nome
