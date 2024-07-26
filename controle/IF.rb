dia = 'feriado'
# o if no ruby não nescessita de chaves para funcionar apenas no fim da condicional escreva um end
if dia == 'domingo'
    lanche = 'especial'

elsif dia == 'feriado'
    lanche = 'seia'
else 
    lanche = 'normal'
end 

puts "O almoço vai ser #{lanche}, hoje"
