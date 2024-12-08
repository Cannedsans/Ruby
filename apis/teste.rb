require 'sinatra'
require 'json'

data = {
  id: 1,
  nome: "Olá mundo"
}
get '/oi' do
  "Olá mundo"
end

get '/json' do
  content_type :json
  data.to_json
end
