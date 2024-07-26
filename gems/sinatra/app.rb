# app.rb
require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  erb :formulario
end

post '/cumprimentar' do
  @nome = params[:nome]
  erb :cumprimento
end
