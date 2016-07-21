require 'spec_helper'

feature "attacking player 2" do
  scenario "player_one attaks player_two" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Victor has been attacked")
  end
end
