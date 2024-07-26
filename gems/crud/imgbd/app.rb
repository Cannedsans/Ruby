require 'sinatra'
require 'sqlite3'

# Conecta ao banco de dados SQLite
db = SQLite3::Database.new('seu_banco_de_dados.db')


get '/' do
  erb :index
end
# Endpoint para exibir a imagem
get '/imagem/:id' do
  # Recupera o ID da imagem da URL
  imagem_id = params[:id].to_i

  # Recupera a imagem do banco de dados usando o ID fornecido
  result = db.execute('SELECT imagem FROM imagens WHERE id = ?', imagem_id).first

  # Verifica se a imagem foi encontrada
  if result
    # Define o tipo de conteúdo da resposta como uma imagem JPEG
    content_type 'image/jpeg'

    # Retorna os dados binários da imagem
    imagem_blob = result.first
  else
    # Retorna uma mensagem de erro se a imagem não foi encontrada
    status 404
    "Imagem não encontrada"
  end
end

# Endpoint para receber o arquivo binário da imagem
post '/upload' do
  # Verifica se foi enviado um arquivo
  if params[:file]
    # Lê os dados do arquivo em binário
    imagem_blob = params[:file][:tempfile].read
    # Salva os dados da imagem no banco de dados
    db.execute('INSERT INTO imagens (imagem) VALUES (?)', imagem_blob)

    # Retorna uma mensagem de sucesso (opcional)
    "Imagem salva com sucesso"
  else
    "Nenhum arquivo enviado"
  end
end
