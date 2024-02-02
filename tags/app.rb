require 'sinatra'


get '/:num' do 
    @aberto = params[:num].to_i
    erb :index
end

get '/styles.css' do 
    scss :styles
end