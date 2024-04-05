require 'tty-prompt'

prompt = TTY::Prompt.new

name = prompt.ask("Qual é o seu nome?")
puts "Seu nome é #{name}."
