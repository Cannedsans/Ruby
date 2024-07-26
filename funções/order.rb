# as ordens usando .sort 

array = [9,246,8,9,4,3,25,1,2,73,5,5,7,9,0]

puts array.sort # o sort organiza em ordem alfabetica ou numerica crescente 

puts array.sort{|n1,n2| n2 <=> n1} # com esse bloco a ordem se inverte para decrescente