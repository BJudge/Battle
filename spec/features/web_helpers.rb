
def sign_in_and_play
  visit ('/')
  fill_in 'player_one', :with=> 'Bart'
  fill_in 'player_two', :with=> 'Victor'
  click_button('submit')
end
