require 'sinatra'
require 'sqlite3'

@bd = SQLite3::Database.new File.join(__dir__, 'data', 'medicamentos.db')

@bd.execute <<-SQL
  CREATE TABLE IF NOT EXISTS medicamentos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    dosagem TEXT
  );
SQL

get '/' do 
    erb :index
end

post '/cadastrar' do
  @nome = params['nome']
  @dosagem = params['dosagem']

  # Inserir dados no banco de dados
 @bd.execute('INSERT INTO medicamentos (nome, dosagem) VALUES (#{@nome}, #{@dosagem})')

  redirect '/ver_dados'
end

get '/ver_dados' do
  @medicamentos = @bd.execute('SELECT * FROM medicamentos')
  erb :ver_dados
end