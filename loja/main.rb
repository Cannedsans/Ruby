file = File.open("frutas.txt")

class Editor 
    def ler
        puts "--Lista de frutas--"
        file.each do |line|
            puts line
        end
    end
end
    def escrever 
            puts "digite uma fruta a lista"
            nome = gets.chomp
            puts.line nome
    end
    
end
loja = Editor.new
estado = true

while estado 
    puts "Escolha uma das opções abaixo "
    puts "Verificar a lista[0], Escrever novas frutas[1] ou sair[2]"
    n = gets.chomp.to_i

    if n == 0 
        loja.ler
    end 
    
    if n == 1 
       loja.escrever 
    end
    if n == 2 
        estado = false
        puts "Programa finalizado"
    end

end 
end