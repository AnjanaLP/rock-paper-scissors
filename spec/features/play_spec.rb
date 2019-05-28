feature 'Play the game' do
  # As a player
  # So that I can play the game
  # I want to be presented with the weapon choices
  scenario 'player sees the weapon choices' do
    register_name
    expect(page).to have_button "rock"
    expect(page).to have_button "paper"
    expect(page).to have_button "scissors"
  end

  # As a player
  # So that I can play the game
  # I want to choose a weapon
  scenario 'player chooses a weapon' do
    register_name
    click_button "rock"
    expect(page).to have_content "You chose rock!"
  end

  # As a player
  # So that I can play the game against an opponent
  # I want the computer to choose a weapon
  scenario 'computer chooses a weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    register_name
    click_button "rock"
    expect(page).to have_content "Computer chose paper!"
  end
end
