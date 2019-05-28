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

  describe '#result' do
    context 'when player wins' do
        subject(:win_game)  { described_class.new(win_args) }
        let(:win_args)      { { player_name: "Anjana", player_weapon: :paper, computer_weapon: :rock} }

        it 'returns :win' do
          expect(win_game.result).to eq :win
      end
    end

    context 'when player loses' do
        subject(:lose_game)  { game }

        it 'returns :lose' do
          expect(lose_game.result).to eq :lose
      end
    end

    context 'when player draws' do
        subject(:draw_game)  { described_class.new(draw_args) }
        let(:draw_args)      { { player_name: "Anjana", player_weapon: :scissors, computer_weapon: :scissors} }

        it 'returns :draw' do
          expect(draw_game.result).to eq :draw
      end
    end
  end
end
