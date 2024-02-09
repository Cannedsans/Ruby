require 'sinatra'
require_relative 'bd.rb'

get '/' do 
    erb :login
end

get '/imagem' do 
    send_file 'public/img/wallpaper.jpg'
end 

get '/styles.css' do 
    scss :styles
end

post '/login' do 
    bd = Banco.new
    user = params[:user]
    senha = params[:senha]

    verificacao = bd.ler
    
    verificacao.each do |tupla|
        if tupla[1] == user && tupla[2] == senha 
            redirect '/oi'
        end 
    end 

    redirect '/'
end 
 

get '/oi' do
   erb :cadastro
end 

post '/new' do
    banco = Banco.new 
    user = params[:user]
    senha = params[:key]

    banco.cadastro(user,senha)

    redirect '/'
end 