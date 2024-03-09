require 'sinatra'
require 'rake'

get '/user' do
   name = params['name']
   Rack::Utils.escape_html("Olá, #{name}")
end
