require 'OS'# o require ativa uma biblioteca chamada os que foi instalada anteriormenre no código "gem install os" 

def m_o
    if OS.windows?
        "windos"
    elsif OS.linux?
        "Linux"
    elsif Os.mac?
        "Mac"        
    else
        "não identificado"
    end
end

puts "sistema do pc = #{m_o}"
puts "arquitetura #{OS.bits}"
