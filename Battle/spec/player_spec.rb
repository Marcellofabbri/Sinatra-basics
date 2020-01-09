require 'player'

describe Player do
  describe '#name' do
  let(:marcello) { Player.new("Marcello") }
    it "returns the name of the user" do
      marcello = Player.new("Marcello")
      expect(marcello.name).to eq "Marcello"
    end
  end
end