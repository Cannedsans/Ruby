# usar uma modificação da senha para ela ser mais segura (acredito eu)

senha = "Minha_senha"

chave = senha.split() #o split transforma uma string numa array de caracteres 

chave.each do |l|
    print l
end