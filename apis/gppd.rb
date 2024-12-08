require 'sinatra'
require 'json'

data = {
  task: [
    {id: 1, title: "Estudar ruby", done: false},
    {id: 2, title: "Limpar quarto", done: false}
  ]
}
get '/tasks' do
  content_type :json
  data[:task].to_json
end

post '/tasks' do
  content_type :json
  payload = JSON.parse(request.body.read)
  ntask = {
    id: data[:task].size + 1,
    title: payload["title"],
    done: false
  }
  data[:task] << ntask
  status 201
  ntask.to_json
end

put '/tasks/:id' do
  content_type :json
  id = params[:id].to_i
  payload = JSON.parse(request.body.read)
  task = data[:task].find {|t| t[:id] == id}

  if task
    task[:title] = payload["title"] if payload["title"]
    task[:done] = payload["done"] unless payload["done"].nil?
    task.to_json
  else
    status 404
    {erro: "Tarefa inexistante"}.to_json
  end
end

delete '/tasks/:id' do
  content_type :json
  id = params[:id].to_i
  task = data[:task].find {|t| t[:id] == id}
  if task
    data[:task].delete(task)
    status 200
    {message: "Tarefa deletada com sucesso!"}.to_json
  else
    status 404
    {erro: "Tarefa inexistante"}.to_json
  end
end
