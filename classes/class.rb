class MegaAssistente 
    attr_accessor :nomes 

    def initialize (nomes = 'Mundo')
        @nomes = nomes
    end 

    def oi 
        if nomes.nil?
            puts"..."
        elsif @nomes.respond_to?("each")
            @nomes.each do |nome|
               puts "Olá #{nome}!"
            end
        else 
            puts "Olá #{@nomes}!"
        end
    end 

    def darTchau
        if nomes.nil?
            puts"..."
        elsif @nomes.respond_to?("each")
            @nomes.each do |nome|
               puts "Até logo #{nome}!"
            end
        else 
            puts "Até logo #{@nomes}!"
        end
    end 

end

if __FILE__ == $0
    gm = MegaAssistente.new
    gm.oi
    gm.darTchau

    gm.nomes = "Zeke"
    gm.oi
    gm.darTchau

    gm.nomes = ["Eren","Mikasa","Armin","Levi"]
    gm.oi
    gm.darTchau

    gm.nomes = nil
    gm.oi
    gm.darTchau
end 