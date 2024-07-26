require 'sqlite3'

class Banco 

  def initialize
    @bd = SQLite3::Database.new('C:/Users/joaof/OneDrive/Documentos/Ruby/banco/data/padaria.db')
  end

  def inserir(nome,preco)
    @bd.execute('INSERT INTO catalogo (nome, preco) VALUES (?, ?)', [nome, preco])
  end 

  def ler
    valor = @bd.execute("SELECT * FROM catalogo")
  end

  def deletar(coluna, parametro)
    @bd.execute("DELETE FROM catalogo WHERE #{coluna} = ?", [parametro])
  end

  def atualizar(id,nome,preco)
    @bd.execute('UPDATE catalogo SET nome = ?, preco = ? WHERE id = ?', [nome, preco, id])
  end
end 

#b = Banco.new('C:/Users/joaof/OneDrive/Documentos/Ruby/banco/data/padaria.db')
