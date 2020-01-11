require 'player'

describe Player do

<<<<<<< Updated upstream
  let(:p1) {Player.new("P1")}
  let(:p2) {Player.new("P2")}
=======
  let(:p1) { Player.new("P1") }
  let(:p2) { Player.new("P2") }
>>>>>>> Stashed changes

  describe '#name' do
    it "returns the name of the user" do
      expect(p1.name).to eq "P1"
    end
  end

  describe '#hp' do
    it "shows player's points" do
      expect(p1.hp).to eq 100
    end
  end

<<<<<<< Updated upstream
  describe '#hp' do
    it "is an attribute (Hit Points) of player" do
      expect(p1.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it "makes player 1 attack player two" do
      allow(p2).to receive(:receive_damage)
      p1.attack(p2)
    end
  end

  describe '#receive_damage' do
    it "deducts points from player 2" do
      expect { p2.receive_damage }.to change { p2.hp }.by(-10)
    end
  end

    
=======
  describe '#receive_damage' do
    it "makes opponent receive damage" do
      expect { p1.receive_damage }.to change { p1.hp }.by(-10)
    end
  end


>>>>>>> Stashed changes
end