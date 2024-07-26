# a expressão lógica "<=>" trás a seguinte sáida

puts 1 <=> 2 # -1 quando o primeiro elemento for menor 

puts 2 <=> 1 # 1 se o primeiro elemento for maior 

puts 1 <=> 1 # 0 se ambos os elemntos forem iguais 

# usar essa expressão muda o funcionamento dos blocos do ruby como o .sort em que o 1 inverte a ordem dele 