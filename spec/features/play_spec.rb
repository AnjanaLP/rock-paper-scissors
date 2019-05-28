feature 'Play the game' do
  before do
    register_name
  end
  # As a player
  # So that I can play the game
  # I want to be presented with the weapon choices
  scenario 'player sees the weapon choices' do
    expect(page).to have_button "rock"
    expect(page).to have_button "paper"
    expect(page).to have_button "scissors"
  end

  # As a player
  # So that I can play the game
  # I want to choose a weapon
  scenario 'player chooses a weapon' do
    click_button "rock"
    expect(page).to have_content "You chose rock!"
  end

  # As a player
  # So that I can play the game against an opponent
  # I want the computer to choose a weapon
  scenario 'computer chooses a weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button "rock"
    expect(page).to have_content "Computer chose paper!"
  end

  # As a player
  # So that I know who is the better player
  # I want a winner to be declared
  context 'end game' do
    before do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    end

    scenario 'computer wins' do
      click_button "rock"
      expect(page).to have_content "You lose!"
    end

    scenario 'player wins' do
      click_button "scissors"
      expect(page).to have_content "You win!"
    end

    scenario 'game is a draw' do
      click_button "paper"
      expect(page).to have_content "You draw!"
    end
  end
end
