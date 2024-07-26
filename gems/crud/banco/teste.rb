require 'sqlite3'

bd = SQLite3::Database.new('C:/Users/joaof/OneDrive/Documentos/Ruby/banco/data/padaria.db')

tabelas = bd.execute("SELECT name FROM sqlite_master WHERE type='table';").flatten

tabelas.each do |tabela|
  puts "Tabela: #{tabela}"
end
