require_relative 'player'

class Game

attr_reader :players, :current_turn, :next_turn, :losers

def initialize(player1, player2)
  @players = [player1, player2]
  @current_turn = player1
  @next_turn = player2
  @losers = []
end

def switch_turn
  @current_turn = next_turn
  @next_turn = current_turn
end

def player1
  @players.first
end

def player2
  @players.last
end

def attack(player2)
  player2.receive_damage
end

def loser_detector
  if @players[0].hp == 0
    @losers << @players[0]
  elsif @players[1].hp == 0
    @losers << @players[1]
  end
end

end