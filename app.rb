require 'sinatra'
require "sinatra/reloader" if development?

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index  # method from templating system that renders file called index.erb
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb :index
end

get '/' do
  'hello world!'
end

get '/secret' do
  "I've got a secret and I won't tell you!"
end

get '/time' do
  "16:48"
end

get '/coctails' do
  "Mahitos = yum! "
end
