require 'game'

describe Game do
  subject(:game)  { described_class.new(args) }
  let(:args)      { { player_name: "Anjana", player_weapon: :rock, computer_weapon: :paper} }

  describe '#player_name' do
    it "returns the player's name" do
      expect(game.player_name).to eq "Anjana"
    end
  end

  describe '#player_weapon' do
    it "returns the player's weapon choice" do
      expect(game.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it "returns the computer's weapon choice" do
      expect(game.computer_weapon).to eq :paper
    end
  end
end
