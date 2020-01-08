require 'sinatra/base'

#run from terminal by typing 
#rackup -p 4567

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:enter_names)
  end

  run! if app_file == $0
end