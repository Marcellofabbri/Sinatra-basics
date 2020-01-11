require 'sinatra/base'
require './lib/game'
require './lib/player'

#run from terminal by typing 
#rackup -p 4567

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
<<<<<<< Updated upstream
    @player1name = $player1.name
    @player2name = $player2.name
=======
    @game = $game
>>>>>>> Stashed changes
    erb(:enter_names)
  end

  get '/wait' do
    @game = $game
    @game.attack(@game.player1)
    erb(:wait)
  end

  get '/attack' do
<<<<<<< Updated upstream
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:attack)
=======
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turn
    @game.loser_detector
      if @game.losers.empty?
        erb(:attack)
      else 
        erb(:loser)
      end
>>>>>>> Stashed changes
  end

  


  run! if app_file == $0
end