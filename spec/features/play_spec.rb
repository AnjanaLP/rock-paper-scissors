feature 'Play the game' do
  # As a player
  # So that I can play the game
  # I want to be presented with the weapon choices
  scenario 'see the weapon choices' do
    register_name
    expect(page).to have_button "rock"
    expect(page).to have_button "paper"
    expect(page).to have_button "scissors"
  end
end
