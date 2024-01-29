loop do
  puts "digite sua idade.:"
  idade = gets.chomp.to_i
  case idade
  when 0..4
      puts "bebê"
  when 5..10
      puts "criança"
  when 11..12
      puts "pré adolescente"
  when 13..17
      puts "adolescente"
  when 18..25
      puts "jovem adulto"
  when 25..49
      puts "adulto"
  when 49..99
      puts "idoso"
  else
      puts "idade inválida ou centenario!!"
  end

  puts "deseja inserir outra idade?"
  puts "[0]-não [1]-sim"
  n = gets.chomp.to_i

  break if n == 0
  end 
