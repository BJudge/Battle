require 'spec_helper'

feature "Battle" do
  scenario "users need to enter both players names" do
    sign_in_and_play
    expect(page).to have_content'Bart vs. Victor'
  end
end
