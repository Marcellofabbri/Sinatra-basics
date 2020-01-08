require 'sinatra/base'

#run from terminal by typing 
#rackup -p 4567

class Battle < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:enter_names)
  end

  run! if app_file == $0
end