describe Game do
  
  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { Game.new(player1, player2) }

  describe '#player1' do
    it "displays attribute player1" do
      expect(game.player1).to eq player1
    end
  end
  
  describe '#player2' do
    it "displays attribute player2" do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it "decreases a player's points" do
      expect(player2).to receive(:receive_damage)
      game = Game.new(player1, player2)
      game.attack(player2)
    end
  end

  describe '#current_turn' do
    it "shows current turn as player 1 at the beginning" do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turn' do
    it "shows current turn as player 2 after player 1 attacked" do
      game.switch_turn
      expect(game.current_turn).to eq player2
    end
  end

  describe '#loser_detector' do
    it "scans player's points and checks when they're zero" do
      allow(player1).to receive(:hp).and_return 0
      (game.players)[0].hp
      expect(game.loser_detector).to eq game.losers
    end
  end


end