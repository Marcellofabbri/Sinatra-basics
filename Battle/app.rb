require 'sinatra/base'
require 'player'

#run from terminal by typing 
#rackup -p 4567

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1name = $player1.name
    @player2name = $player2.name
    erb(:enter_names)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0
end