require 'sinatra'
set :session_secret, 'super secret'

get '/cat' do
    "<div style='border: 3px dashed red'>
      <img src='http://bit.ly/1eze8aE' >
    </div>"
end

get '/secret2' do
  "message two"
end

get '/secret3' do
    "message three"
  end

