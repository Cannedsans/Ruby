require 'yaml'

# Carregando os dados YAML de um arquivo externo
dados = YAML.load_file('data.yaml')

# Acessando e imprimindo os dados
puts "Nome: #{dados['nome']}"
puts "Idade: #{dados['idade']}"
puts "Cidade: #{dados['cidade']}"
puts "Interesses:"
dados['interesses'].each do |interesse|
  puts "- #{interesse}"
end
