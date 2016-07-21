require 'spec_helper'

feature "Battle" do
  scenario "Player one can see the score of player two " do
    sign_in_and_play
    expect(page).to have_content'Bart 100 hit points vs. Victor 100 hit points'
  end
end
