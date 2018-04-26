#vetor

v = [1,2,3,4]
puts v.class
puts v.inspect
puts v

a = Array.new
a.push(45)
a.push("fernanda")
a.push(5.2)
puts a.inspect


#hashes

h = {"a" => 123, "b" => 456}
puts h
h.merge! ({"c" => 789})
puts h


#Vetor

y = ["Paulo", "Pedro"]
puts y

y = %w(Paulo Pedro) #%w = shortcut


#String
#Interpolar

nomes = %w(Joao Maria)

nomes.each do |nome|
    puts "Ola, #{nome}"
end


#formar string

puts "Ruby " << "on " << "Rails"

texto = "Ruby " + "on " + "Rails"

puts texto.gsub("Rails", "Oi")
puts texto

puts texto.gsub!("Rails", "Rails")
puts texto

txt = "Jack sons"
puts txt.object_id
txt = txt + "Jr"
puts txt.object_id
txt = txt << "Ruby"
puts txt.object_id

#identificador
#:a

h = {:a => 123, :b => "Jack"}
puts h

h = {a: 123, b: 456}
puts h
