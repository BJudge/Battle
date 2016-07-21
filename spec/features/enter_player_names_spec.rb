

RSpec.feature "Battle", :type=> :feature do
  scenario "users need to enter both players names" do
    visit ('/')

    fill_in 'player_one', :with=> 'Bart'
    fill_in 'player_two', :with=> 'Victor'
    click_button('submit')
    expect(page).to have_content'Bart vs. Victor'
  end
end
