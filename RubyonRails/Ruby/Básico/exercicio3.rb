class IndiqueMaior
  def maior(num1, num2)
    if num1 > num2
      puts "O #{num1} é maior que o #{num2}.\n"
    else
      puts "O #{num2} é maior que o #{num1}.\n"
    end
  end
end

maior = IndiqueMaior.new
puts "Digite um numero:\n"
numero1 = gets.chomp.to_i
puts "Digite outro numero:\n"
numero2 = gets.chomp.to_i

maior.maior(numero1,numero2)
