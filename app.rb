require 'sinatra'
set :session_secret, 'super secret'

get '/cat' do
  @name = ["a", "b", "c"].sample
  erb(:index)
end

get '/secret2' do
  "message two"
end

get '/secret3' do
    "message three"
  end

