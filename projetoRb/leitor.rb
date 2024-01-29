file = File.open("mapa.txt")

puts "---Mapa---"

file.each do |line|
  puts line
end
