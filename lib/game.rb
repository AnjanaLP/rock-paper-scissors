class Game

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(args)
    @player_name = args[:player_name]
    @player_weapon = args[:player_weapon]
    @computer_weapon = args[:computer_weapon]
  end
end
