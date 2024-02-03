require 'sinatra'

get '/num' do 
    @n ||= 0
    erb :index
end

post '/num' do
    @n = params[:num].to_i
    erb :index
end 