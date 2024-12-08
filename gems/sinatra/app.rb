# app.rb
require 'sinatra'

get '/' do
  erb :formulario
end

post '/cumprimentar' do
  @nome = params[:nome]
  erb :cumprimento
end
