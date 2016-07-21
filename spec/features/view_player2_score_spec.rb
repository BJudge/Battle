require 'spec_helper'

feature "Battle" do
  scenario "Player one can see the score of player two " do
    visit ('/')
    fill_in 'player_one', :with=> 'Bart'
    fill_in 'player_two', :with=> 'Victor'
    click_button('submit')
    expect(page).to have_content'Bart 100 hit points vs. Victor 100 hit points'
  end
end
