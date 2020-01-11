class Player
  attr_reader :name
  attr_accessor :hp
  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
<<<<<<< Updated upstream
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10
=======
>>>>>>> Stashed changes
  end

  def receive_damage
    @hp -= 10
  end

#   def attack(opponent)
#     opponent.receive_damage
#   end



end