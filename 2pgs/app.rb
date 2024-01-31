require 'sinatra'

get "/" do 
    erb :index
end

get "/pg2" do 
    erb :pg2
end

get "/styles.css" do
    scss :styles 
end