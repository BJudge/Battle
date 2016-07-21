require 'spec_helper'

feature "attacking player 2" do
  scenario "player_one attaks player_two" do
    sign_in_and_play
    click_link("Attack")
    expect(page).to have_content("Victor has been attacked")
  end

  scenario "reduce attaked player HP by 10HP" do
    sign_in_and_play
    click_link("Attack")
    click_link("OK")
    expect(page).not_to have_content("Victor 100 hit points")
    expect(page).to have_content("Victor 90 hit points")
  end
end
