# As a player
# So that I can see my name
# I want to register my name before playing
feature 'Register name' do
  scenario 'register name and see it' do
    register_name
    expect(page).to have_content "Hello, Anjana!"
  end
end
