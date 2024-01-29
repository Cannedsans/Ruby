def foo(name, &block) #para mandar um parametro e um bloco precisa ser com o &block
    @name = name #nota.: apenas um bloco por vez 
    block.call #e tmb precisa chamar o bloco
end 

foo ("leonardo") {puts "olá #{@name}"}
    
