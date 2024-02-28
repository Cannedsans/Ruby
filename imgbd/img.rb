require 'sqlite3'

# Conecta ao banco de dados SQLite
db = SQLite3::Database.new('seu_banco_de_dados.db')

# Cria a tabela para armazenar as imagens
db.execute(<<-SQL)
  CREATE TABLE IF NOT EXISTS imagens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    imagem BLOB
  );
SQL
puts "Banco de dados criado"
# Lê a imagem em binário
# Lê o conteúdo da imagem JPEG
imagem_binaria = File.binread('C:\Users\joaof\OneDrive\Documentos\linguagens\Ruby\imgbd\IMG_20230819_212620.jpg')

# Insere a imagem no banco de dados
db.execute('INSERT INTO imagens (nome, imagem) VALUES (?, ?)', ['imagem.jpg', imagem_binaria])
