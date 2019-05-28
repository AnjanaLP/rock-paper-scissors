class Game

  RULES = {
     rock: {rock: :draw, paper: :lose, scissors: :win},
     paper: {rock: :win, paper: :draw, scissors: :lose},
     scissors: {rock: :lose, paper: :win, scissors: :draw}
   }

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(args)
    @player_name = args[:player_name]
    @player_weapon = args[:player_weapon]
    @computer_weapon = args[:computer_weapon]
  end

  def result
    RULES[player_weapon][computer_weapon]
  end
end
