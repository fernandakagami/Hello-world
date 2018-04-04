i = 0
v = []

begin
  puts "Digite um numero:\n"
  numero_dig = gets.chomp.to_i
  if numero_dig != 0
    v.push(numero_dig)
    i += 1
  end
end while numero_dig != 0

i -= 1

while i >= 0
  puts v[i]
  i -= 1
end
