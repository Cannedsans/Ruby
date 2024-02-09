require 'sqlite3'

class Banco
    DATABASE_FILE = 'data/banco.db'

    def self.ligar
        db = SQLite3::Database.new(DATABASE_FILE)
        criar(db)
        db.close
    end

    def self.criar(db)
        db.execute <<-SQL
            CREATE TABLE IF NOT EXISTS usuario(
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                user TEXT UNIQUE NOT NULL,
                senha TEXT NOT NULL
            );
        SQL
    end

    def cadastro(login, senha)
        begin 
            db = SQLite3::Database.new(DATABASE_FILE)
            db.execute('INSERT INTO usuario (user, senha) VALUES (?, ?)', [login, senha])
            return true 
        rescue SQLite3::Exception => e 
            puts "Erro #{e}"
            return false 
        ensure 
            db.close if db
        end 
    end 

    def ler
        begin
            db = SQLite3::Database.new(DATABASE_FILE)
            cadastro = db.execute('SELECT * FROM usuario')
            return cadastro 
        rescue SQLite3::Exception => e
            puts "Erro #{e}"
            return false 
        ensure 
            db.close if db
        end 
    end 
end

Banco.ligar
