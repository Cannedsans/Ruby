require 'mysql2'

begin
conexao = Mysql2::Client.new(
	host: '192.168.0.102',
	username: 'teste',
	password: '',
	database: 'testes'
)

result = conexao.query("SELECT * FROM testes")

result.each do |row|
	p row
end
rescue Mysql2::Error => e
  puts "Erro ao conectar ou consultar: #{e.message}"
ensure
  conexao.close if conexao
end
