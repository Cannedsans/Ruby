File.open("mapa.txt","a") do |line|
f = true
while f
  puts "Novo local descoberto? [s|n]"
  r = gets.chomp
  if r == "s"
    puts "Digite o nome nome"
    l = gets.chomp
    line.puts l
  else
    f = false
    end
  end
end